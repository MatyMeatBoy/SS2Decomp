// Decompile a list of THUMB functions to one C file.
// args: <functions.cfg> <output.c>   (cfg lines: "thumb 0xADDR [name]")
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.address.*;
import ghidra.program.model.lang.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.SourceType;
import java.io.*;
import java.math.BigInteger;
import java.util.*;

public class DecompFuncs extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        List<Long> addrs = new ArrayList<>();
        Map<Long, String> names = new HashMap<>();
        for (String line : new String(java.nio.file.Files.readAllBytes(new File(args[0]).toPath())).split("\n")) {
            line = line.split("#")[0].trim();
            String[] p = line.split("\\s+");
            if (p.length >= 2 && p[0].equals("thumb")) {
                long a = Long.decode(p[1]);
                addrs.add(a);
                if (p.length > 2) names.put(a, p[2]);
            }
        }
        // Memory map of the GBA so that literal pool constants resolve and globals get names
        ghidra.program.model.mem.Memory mem = currentProgram.getMemory();
        for (ghidra.program.model.mem.MemoryBlock b : mem.getBlocks()) {
            b.setWrite(false);
            b.setExecute(true);
        }
        long[][] regions = {{0x02000000L, 0x40000}, {0x03000000L, 0x8000}, {0x04000000L, 0x400},
                            {0x05000000L, 0x400}, {0x06000000L, 0x18000}, {0x07000000L, 0x400}};
        for (long[] r : regions) {
            try {
                ghidra.program.model.mem.MemoryBlock nb = mem.createUninitializedBlock(
                    String.format("MEM_%08X", r[0]), currentProgram.getAddressFactory().getDefaultAddressSpace().getAddress(r[0]), r[1], false);
                nb.setWrite(true);
                nb.setRead(true);
                nb.setVolatile(r[0] == 0x04000000L);
            } catch (Exception e) {
                println("region " + Long.toHexString(r[0]) + ": " + e.getMessage());
            }
        }
        // names for functions and literal-pool globals
        Register tmode = currentProgram.getLanguage().getRegister("TMode");
        AddressSpace sp = currentProgram.getAddressFactory().getDefaultAddressSpace();
        // THUMB context for the whole code range, then disassemble each entry
        // THUMB everywhere in the code region, except the ARM start up code
        currentProgram.getProgramContext().setValue(tmode, sp.getAddress(0x0800023CL), sp.getAddress(0x080B9703L), BigInteger.ONE);
        for (long a : addrs) {
            disassemble(sp.getAddress(a));
        }
        for (long a : addrs) {
            Address ad = sp.getAddress(a);
            if (getFunctionAt(ad) == null) {
                createFunction(ad, names.getOrDefault(a, String.format("sub_%08X", a)));
            }
        }
        // Literal pools become defined dwords (so the decompiler folds the constants) and
        // "pop {rN}; bx rN" becomes a return.
        Listing listing = currentProgram.getListing();
        for (long a : addrs) {
            Function f = getFunctionAt(sp.getAddress(a));
            if (f == null) continue;
            Instruction prev = null;
            InstructionIterator it = listing.getInstructions(f.getBody(), true);
            while (it.hasNext()) {
                Instruction ins = it.next();
                for (ghidra.program.model.symbol.Reference ref : ins.getReferencesFrom()) {
                    if (ref.getReferenceType().isRead() && ref.getToAddress().isMemoryAddress()) {
                        Address t = ref.getToAddress();
                        long tv = t.getOffset();
                        if (tv >= 0x08000000L && tv < 0x080BA000L && listing.getInstructionAt(t) == null
                            && listing.getDefinedDataAt(t) == null) {
                            try { ghidra.program.model.listing.Data d = createDWord(t); d.setLong("mutability", 2L); } catch (Exception e) { }
                        }
                    }
                }
                if (ins.getMnemonicString().equals("bx") && prev != null && prev.getMnemonicString().equals("pop")) {
                    ins.setFlowOverride(FlowOverride.RETURN);
                }
                prev = ins;
            }
        }
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);
        try (PrintWriter out = new PrintWriter(new FileWriter(args[1]))) {
            for (long a : addrs) {
                Function f = getFunctionAt(sp.getAddress(a));
                if (f == null) continue;
                DecompileResults r = di.decompileFunction(f, 60, monitor);
                out.println("// ---- " + String.format("%08X", a));
                if (r.decompileCompleted()) out.println(r.getDecompiledFunction().getC());
                else out.println("// decompile failed: " + r.getErrorMessage());
            }
        }
    }
}

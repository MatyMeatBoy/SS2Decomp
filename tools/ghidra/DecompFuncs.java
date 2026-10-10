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

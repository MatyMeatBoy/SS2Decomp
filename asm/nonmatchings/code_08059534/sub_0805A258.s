	thumb_func_start sub_0805A258
sub_0805A258: @ 0x0805A258
	push {lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _0805A29C
	bl sub_0801AB24
	cmp r0, #1
	beq _0805A280
	cmp r0, #1
	bgt _0805A274
	cmp r0, #0
	beq _0805A27A
	b _0805A294
_0805A274:
	cmp r0, #2
	beq _0805A288
	b _0805A294
_0805A27A:
	bl sub_080576A8
	b _0805A294
_0805A280:
	movs r0, #6
	bl sub_0801AB50
	b _0805A294
_0805A288:
	movs r0, #6
	bl sub_0801AB90
	b _0805A294
_0805A290:
	bl sub_080003F0
_0805A294:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0805A290
_0805A29C:
	movs r0, #1
	movs r1, #1
	bl sub_0802939C
	movs r3, #0xc8
	lsls r3, r3, #1
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0
	bl sub_08028D98
	pop {r0}
	bx r0
	thumb_func_end sub_0805A258

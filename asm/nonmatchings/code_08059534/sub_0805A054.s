	thumb_func_start sub_0805A054
sub_0805A054: @ 0x0805A054
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0805A06C
_0805A05A:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08028AAC
	movs r4, #1
	b _0805A07A
	.2byte 0x0000
_0805A06C: .4byte 0x0000270F
_0805A070:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805A05A
_0805A07A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805A070
	b _0805A05A
	thumb_func_end sub_0805A054

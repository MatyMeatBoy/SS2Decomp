	thumb_func_start sub_0805A43C
sub_0805A43C: @ 0x0805A43C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _0805A45C
	ldr r0, _0805A454
	ldr r0, [r0, #0]
	ldr r1, _0805A458
	b _0805A462
	.2byte 0x0000
_0805A454: .4byte gUnk_03005CF4
_0805A458: .4byte 0x000001C1
_0805A45C:
	ldr r0, _0805A46C
	ldr r0, [r0, #0]
	ldr r1, _0805A470
_0805A462:
	adds r0, r0, r1
	strb r4, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
_0805A46C: .4byte gUnk_03005CF4
_0805A470: .4byte 0x000001B5
	thumb_func_end sub_0805A43C

	thumb_func_start sub_080574FC
sub_080574FC: @ 0x080574FC
	push {r4, r5, r6, lr}
	ldr r0, _0805752C
	ldr r0, [r0, #0]
	ldr r1, _08057530
	adds r5, r0, r1
	movs r6, #0
_08057508:
	adds r4, r5, #0
	adds r4, #0x48
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0805751C
	adds r0, r4, #0
	bl sub_080003A8
_0805751C:
	adds r6, #1
	adds r5, #0x70
	cmp r6, #0xe
	bls _08057508
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805752C: .4byte gUnk_03005CF4
_08057530: .4byte 0x000007A4
	thumb_func_end sub_080574FC

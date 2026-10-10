	thumb_func_start sub_080570DC
sub_080570DC: @ 0x080570DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0805715C
	ldr r0, [r0, #0]
	ldr r1, _08057160
	adds r4, r0, r1
	movs r5, #0
_080570EA:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080570FA
	adds r0, r4, #0
	bl sub_080003A8
_080570FA:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #0x1d
	bls _080570EA
	cmp r6, #0
	beq _08057128
	ldr r0, _0805715C
	ldr r0, [r0, #0]
	ldr r1, _08057164
	adds r4, r0, r1
	movs r5, #0
_08057110:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08057120
	adds r0, r4, #0
	bl sub_080003A8
_08057120:
	adds r5, #1
	adds r4, #0x28
	cmp r5, #0x1d
	bls _08057110
_08057128:
	ldr r0, _0805715C
	ldr r0, [r0, #0]
	ldr r1, _08057168
	adds r6, r0, r1
	movs r5, #0
_08057132:
	adds r4, r6, #0
	adds r4, #0x48
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08057146
	adds r0, r4, #0
	bl sub_080003A8
_08057146:
	adds r5, #1
	adds r6, #0x70
	cmp r5, #0xe
	bls _08057132
	ldr r1, _0805716C
	movs r0, #0
	str r0, [r1, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805715C: .4byte gUnk_03005CF4
_08057160: .4byte 0x00000E34
_08057164: .4byte 0x000012E4
_08057168: .4byte 0x000007A4
_0805716C: .4byte gUnk_03005CF0
	thumb_func_end sub_080570DC

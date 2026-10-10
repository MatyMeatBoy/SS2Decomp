	thumb_func_start sub_080161A4
sub_080161A4: @ 0x080161A4
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08016224
_080161AA:
	ldr r0, _08016228
	ldrh r0, [r0, #0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080161C6
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r0, [r5, #0]
	adds r0, r0, r1
	bl sub_080003A8
_080161C6:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #1
	bls _080161AA
	movs r4, #0
	ldr r5, _0801622C
_080161D4:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _080161EE
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _08016230
	adds r0, r0, r1
	bl sub_080003A8
_080161EE:
	adds r0, r4, #4
	bl sub_080688F8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080161D4
	ldr r5, _08016224
	ldr r0, [r5, #0]
	bl sub_08001538
	ldr r4, _08016234
	ldr r0, [r4, #0]
	bl sub_08001538
	ldr r0, _08016238
	ldr r0, [r0, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r5, #0]
	str r0, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08016224: .4byte gUnk_030056F0
_08016228: .4byte gUnk_03005724
_0801622C: .4byte gUnk_030056FC
_08016230: .4byte gUnk_03004220
_08016234: .4byte gUnk_030056F4
_08016238: .4byte gUnk_030042E8
	thumb_func_end sub_080161A4

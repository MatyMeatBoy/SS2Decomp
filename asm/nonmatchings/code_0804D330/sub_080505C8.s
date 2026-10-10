	thumb_func_start sub_080505C8
sub_080505C8: @ 0x080505C8
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _0805060C
	bl sub_0801AB24
	cmp r0, #1
	beq _080505F0
	cmp r0, #1
	bgt _080505E4
	cmp r0, #0
	beq _080505EA
	b _08050604
_080505E4:
	cmp r0, #2
	beq _080505F8
	b _08050604
_080505EA:
	bl sub_080576A8
	b _08050604
_080505F0:
	movs r0, #6
	bl sub_0801AB50
	b _08050604
_080505F8:
	movs r0, #6
	bl sub_0801AB90
	b _08050604
_08050600:
	bl sub_080003F0
_08050604:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08050600
_0805060C:
	ldr r0, _08050620
	ldr r0, [r0, #0]
	movs r1, #4
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _08050646
	movs r4, #0x1e
	b _0805062E
	.2byte 0x0000
_08050620: .4byte gUnk_03005CF4
_08050624:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805063A
_0805062E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08050624
_0805063A:
	ldr r0, _0805067C
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_08050646:
	ldr r0, _08050680
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08050684
	movs r6, #1
	movs r4, #0
_08050652:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08050666
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08050666
	strh r4, [r2, #0xc]
_08050666:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08050652
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805067C: .4byte gUnk_03005CF4
_08050680: .4byte gUnk_030056F4
_08050684: .4byte gUnk_030056FC
	thumb_func_end sub_080505C8

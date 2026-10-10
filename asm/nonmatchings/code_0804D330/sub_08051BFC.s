	thumb_func_start sub_08051BFC
sub_08051BFC: @ 0x08051BFC
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08051C40
	bl sub_0801AB24
	cmp r0, #1
	beq _08051C24
	cmp r0, #1
	bgt _08051C18
	cmp r0, #0
	beq _08051C1E
	b _08051C38
_08051C18:
	cmp r0, #2
	beq _08051C2C
	b _08051C38
_08051C1E:
	bl sub_080576A8
	b _08051C38
_08051C24:
	movs r0, #6
	bl sub_0801AB50
	b _08051C38
_08051C2C:
	movs r0, #6
	bl sub_0801AB90
	b _08051C38
_08051C34:
	bl sub_080003F0
_08051C38:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08051C34
_08051C40:
	ldr r0, _08051C58
	ldr r0, [r0, #0]
	movs r3, #4
	ldr r2, [r0, #0x38]
	adds r1, r2, #0
	ands r1, r3
	cmp r1, #0
	bne _08051CA6
	orrs r2, r3
	str r2, [r0, #0x38]
	movs r4, #0x3c
	b _08051C66
_08051C58: .4byte gUnk_03005CF4
_08051C5C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08051C72
_08051C66:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08051C5C
_08051C72:
	movs r0, #1
	movs r1, #0
	bl sub_0802949C
	ldr r0, _08051C8C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r4, #0x3c
	b _08051C9A
	.2byte 0x0000
_08051C8C: .4byte gUnk_030056F4
_08051C90:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08051CA6
_08051C9A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08051C90
_08051CA6:
	ldr r0, _08051CDC
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08051CE0
	movs r6, #1
	movs r4, #0
_08051CB2:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08051CC6
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08051CC6
	strh r4, [r2, #0xc]
_08051CC6:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08051CB2
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08051CDC: .4byte gUnk_030056F4
_08051CE0: .4byte gUnk_030056FC
	thumb_func_end sub_08051BFC

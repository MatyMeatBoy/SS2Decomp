	thumb_func_start sub_08065DAC
sub_08065DAC: @ 0x08065DAC
	push {r4, r5, r6, lr}
	ldr r0, _08065DBC
	ldr r2, [r0, #0]
	adds r6, r0, #0
	cmp r2, #0x31
	bls _08065DD8
	movs r0, #0
	b _08065E2A
_08065DBC: .4byte gUnk_03006338
_08065DC0:
	bl sub_080020F4
	ldr r2, _08065DD4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x10]
	str r0, [r5, #8]
	b _08065E28
_08065DD4: .4byte gUnk_03003CE0
_08065DD8:
	ldr r0, _08065E30
	ldr r5, [r0, #0]
	movs r3, #0
	adds r4, r0, #0
	cmp r3, r2
	bhs _08065DFA
	adds r1, r2, #0
_08065DE6:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _08065DF2
	ldrb r0, [r5, #0]
	cmp r0, #0x83
	beq _08065DC0
_08065DF2:
	adds r3, #1
	adds r5, #0x88
	cmp r3, r1
	blo _08065DE6
_08065DFA:
	ldr r1, [r6, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r4, #0]
	adds r5, r1, r0
	movs r4, #1
	str r4, [r5, #4]
	movs r0, #0x83
	strb r0, [r5, #0]
	bl sub_080020F4
	ldr r2, _08065E34
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x10]
	str r0, [r5, #8]
	strb r4, [r5, #1]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_08065E28:
	movs r0, #1
_08065E2A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08065E30: .4byte gUnk_03006300
_08065E34: .4byte gUnk_03003CE0
	thumb_func_end sub_08065DAC

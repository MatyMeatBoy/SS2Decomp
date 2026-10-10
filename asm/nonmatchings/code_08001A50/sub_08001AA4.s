	thumb_func_start sub_08001AA4
sub_08001AA4: @ 0x08001AA4
	push {r4, lr}
	bl IdentifyFlash
	ldr r2, _08001AB4
	movs r3, #0
	ldr r4, _08001AB8
	b _08001AC6
	.2byte 0x0000
_08001AB4: .4byte gUnk_080B99C8
_08001AB8: .4byte gFlash
_08001ABC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _08001AD6
_08001AC6:
	ldr r0, [r4, #0]
	ldrh r1, [r0, #0x14]
	ldrh r0, [r2, #0]
	adds r2, #2
	cmp r1, r0
	bne _08001ABC
	cmp r3, #4
	bls _08001AE0
_08001AD6:
	ldr r1, _08001ADC
	movs r0, #0
	b _08001AE4
_08001ADC: .4byte gUnk_03000018
_08001AE0:
	ldr r1, _08001AFC
	movs r0, #1
_08001AE4:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08001AF4
	ldr r1, _08001B00
	movs r0, #2
	bl SetFlashTimerIntr
_08001AF4:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08001AFC: .4byte gUnk_03000018
_08001B00: .4byte gUnk_030012B8
	thumb_func_end sub_08001AA4

	thumb_func_start sub_08001204
sub_08001204: @ 0x08001204
	push {r4, lr}
	sub sp, #4
	bl sub_08009014
	bl sub_0800086C
	ldr r1, _08001268
	movs r0, #1
	str r0, [r1, #0]
	ldr r0, _0800126C
	ldrb r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800122E
	bl VBlankIntrWait
	ldr r1, _08001270
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_0800122E:
	movs r0, #0xa0
	str r0, [sp, #0]
	ldr r4, _08001274
	ldr r2, _08001278
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	bl sub_08000760
	movs r0, #1
	bl sub_08000420
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r4, #0
	bl sub_08001348
	ldr r1, _0800127C
	movs r0, #0
	strh r0, [r1, #0]
	bl sub_0801A558
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08001268: .4byte gUnk_03002350
_0800126C: .4byte gUnk_0300129C
_08001270: .4byte gUnk_03002344
_08001274: .4byte gUnk_03001330
_08001278: .4byte 0x01000100
_0800127C: .4byte gUnk_03001310
	thumb_func_end sub_08001204

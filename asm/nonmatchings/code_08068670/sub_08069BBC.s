	thumb_func_start sub_08069BBC
sub_08069BBC: @ 0x08069BBC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	ldr r2, _08069C38
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08069BE4
	movs r3, #1
_08069BD2:
	adds r4, #1
	cmp r4, #0x1f
	bhi _08069C30
	adds r1, r3, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08069BD2
_08069BE4:
	cmp r4, #0x1f
	bhi _08069C30
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r3, r0, #0
	ldr r0, _08069C3C
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r0, r1
	str r3, [r2, #0x20]
	cmp r3, #0
	beq _08069C30
	movs r0, #0x34
	str r0, [r2, #8]
	ldr r0, _08069C40
	str r0, [r2, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r3, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x24]
	lsls r1, r5, #0x10
	orrs r1, r6
	adds r0, r2, #0
	adds r2, r4, #0
	bl sub_08000274
	ldr r2, _08069C38
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08069C30:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08069C38: .4byte gUnk_0300641C
_08069C3C: .4byte gUnk_03006370
_08069C40: .4byte sub_08069AEC
	thumb_func_end sub_08069BBC

	thumb_func_start sub_08073E2C
sub_08073E2C: @ 0x08073E2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov ip, r1
	adds r6, r2, #0
	movs r4, #0
	ldr r2, _08073ED4
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08073E5A
	movs r5, #1
_08073E48:
	adds r4, #1
	cmp r4, #0xf
	bhi _08073ECA
	adds r1, r5, #0
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08073E48
_08073E5A:
	cmp r4, #0xf
	bhi _08073ECA
	cmp r3, #0
	beq _08073E64
	movs r3, #1
_08073E64:
	ldr r0, _08073ED8
	mov r8, r0
	ldr r1, [r0, #0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r5, r0, #3
	adds r1, r5, r1
	movs r0, #0
	str r0, [r1, #0]
	str r4, [r1, #4]
	str r3, [r1, #8]
	str r6, [r1, #0xc]
	str r7, [r1, #0x14]
	mov r0, ip
	str r0, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r3, r0, #0
	ldr r0, _08073EDC
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r0, r1
	str r3, [r2, #0x20]
	cmp r3, #0
	beq _08073ECA
	ldr r0, _08073EE0
	str r0, [r2, #0xc]
	movs r0, #0x34
	str r0, [r2, #8]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r3, r1
	str r0, [r2, #0x10]
	ldr r0, _08073EE4
	str r0, [r2, #0x24]
	mov r0, r8
	ldr r1, [r0, #0]
	adds r1, r1, r5
	adds r0, r2, #0
	bl sub_08000274
	ldr r2, _08073ED4
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08073ECA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073ED4: .4byte gUnk_030063E0
_08073ED8: .4byte gUnk_03006380
_08073EDC: .4byte gUnk_030063B0
_08073EE0: .4byte sub_08073CF4
_08073EE4: .4byte sub_0807A120
	thumb_func_end sub_08073E2C

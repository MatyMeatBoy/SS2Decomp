	thumb_func_start sub_0800A298
sub_0800A298: @ 0x0800A298
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0800A2EC
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	strh r0, [r1, #0]
	ldr r4, _0800A2F0
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r6, #0x8c
	ldrh r1, [r6, #0]
	movs r5, #0x74
	muls r1, r5, r1
	adds r0, r0, r1
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0, #0]
	bl sub_08007290
	adds r2, r0, #0
	adds r0, r7, #0
	adds r0, #0xb0
	str r2, [r0, #0]
	mov r3, r8
	ldrh r0, [r3, #0]
	lsls r0, r0, #2
	ldrh r1, [r6, #0]
	muls r1, r5, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0800A2F4
	adds r0, r2, #0
	adds r0, #0x10
	b _0800A300
	.2byte 0x0000
_0800A2EC: .4byte gUnk_03003170
_0800A2F0: .4byte gUnk_0847846C
_0800A2F4:
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x64
	bl sub_08000BC8
_0800A300:
	str r0, [r7, #0x60]
	ldr r4, _0800A348
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r4, #0x68]
	ldrh r1, [r2, #0]
	adds r0, r4, #0
	adds r0, #0x70
	movs r3, #0
	strh r1, [r0, #0]
	ldrh r0, [r2, #2]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0x7e
	strh r3, [r0, #0]
	subs r0, #2
	strh r3, [r0, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800A348: .4byte gUnk_03003170
	thumb_func_end sub_0800A298

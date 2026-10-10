	thumb_func_start sub_08019F60
sub_08019F60: @ 0x08019F60
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08002164
	adds r4, r0, #0
	movs r0, #6
	ldrsh r1, [r5, r0]
	ldr r7, _08019FA4
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r6, r0, #2
	adds r0, r6, r7
	ldr r0, [r0, #0]
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B956C
	strh r0, [r5, #6]
	cmp r4, #1
	bls _08019F9E
	movs r0, #0
	ldrsh r1, [r5, r0]
	adds r1, #2
	adds r0, r7, #4
	adds r0, r6, r0
	ldr r0, [r0, #0]
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B956C
	strh r0, [r5, #0]
_08019F9E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08019FA4: .4byte gUnk_0848FA0C
	thumb_func_end sub_08019F60

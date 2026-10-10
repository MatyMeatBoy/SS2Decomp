	thumb_func_start sub_08053C5C
sub_08053C5C: @ 0x08053C5C
	push {r4, r5, r6, lr}
	movs r0, #0x71
	movs r1, #0xe3
	movs r2, #0xa0
	movs r3, #0x3c
	bl sub_0802A080
	ldr r4, _08053CE8
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	ldr r0, [r4, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	ldr r0, _08053CEC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08053C9A
	movs r0, #0xbf
	lsls r0, r0, #1
	bl sub_08006D08
_08053C9A:
	movs r0, #1
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_08028D98
	ldr r2, [r4, #0]
	movs r3, #0
	ldr r5, _08053CF0
	movs r6, #1
	movs r4, #0
_08053CBC:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08053CD0
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08053CD0
	strh r4, [r2, #0xc]
_08053CD0:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08053CBC
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08053CE8: .4byte gUnk_030056F4
_08053CEC: .4byte gUnk_030027D0
_08053CF0: .4byte gUnk_030056FC
	thumb_func_end sub_08053C5C

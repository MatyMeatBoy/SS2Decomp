	thumb_func_start sub_08067D74
sub_08067D74: @ 0x08067D74
	push {r4, r5, r6, lr}
	ldr r6, _08067DB4
	ldr r2, [r6, #0]
	cmp r2, #0x31
	bhi _08067DC0
	ldr r1, _08067DB8
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r5, #1
	str r5, [r4, #4]
	movs r0, #0x8c
	strb r0, [r4, #0]
	bl sub_080020F4
	ldr r1, _08067DBC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	strb r5, [r4, #1]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	movs r0, #1
	b _08067DC2
	.2byte 0x0000
_08067DB4: .4byte gUnk_03006338
_08067DB8: .4byte gUnk_03006300
_08067DBC: .4byte gUnk_03003CE0
_08067DC0:
	movs r0, #0
_08067DC2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08067D74

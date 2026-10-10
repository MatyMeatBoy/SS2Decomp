	thumb_func_start SoundInit
SoundInit: @ 0x080B7548
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5, #0]
	ldr r0, _080B75DC
	strh r3, [r0, #0]
	adds r0, #0xc
	strh r3, [r0, #0]
	ldr r1, _080B75E0
	movs r0, #0x8f
	strh r0, [r1, #0]
	subs r1, #2
	ldr r2, _080B75E4
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r2, _080B75E8
	ldrb r1, [r2, #0]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r1, _080B75EC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, _080B75F0
	str r0, [r1, #0]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, _080B75F4
	str r0, [r1, #0]
	ldr r0, _080B75F8
	str r5, [r0, #0]
	str r3, [sp, #0]
	ldr r2, _080B75FC
	mov r0, sp
	adds r1, r5, #0
	bl sub_080B8578
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080B7600
	str r0, [r5, #0x38]
	ldr r0, _080B7604
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080B7608
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _080B760C
	str r0, [r5, #0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B75DC: .4byte 0x040000C6
_080B75E0: .4byte 0x04000084
_080B75E4: .4byte 0x0000A90E
_080B75E8: .4byte 0x04000089
_080B75EC: .4byte 0x040000BC
_080B75F0: .4byte 0x040000A0
_080B75F4: .4byte 0x040000A4
_080B75F8: .4byte gUnk_03007FF0
_080B75FC: .4byte 0x050003EC
_080B7600: .4byte ply_note
_080B7604: .4byte DummyFunc
_080B7608: .4byte gMPlayJumpTable
_080B760C: .4byte 0x68736D53
	thumb_func_end SoundInit

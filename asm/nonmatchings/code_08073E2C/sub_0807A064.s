	thumb_func_start sub_0807A064
sub_0807A064: @ 0x0807A064
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0807A0C0
	adds r0, r5, r0
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _0807A0C4
	adds r0, r5, r0
	strb r1, [r0, #0]
	ldr r0, _0807A0C8
	lsls r4, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0]
	ldr r0, _0807A0CC
	str r1, [r0, #0]
	movs r0, #0xa0
	lsls r0, r0, #2
	bl sub_08001494
	ldr r1, _0807A0D0
	adds r1, r4, r1
	str r0, [r1, #0]
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r6, #0
	bl sub_08001494
	ldr r1, _0807A0D4
	adds r4, r4, r1
	str r0, [r4, #0]
	cmp r5, #0
	bne _0807A0BA
	ldr r4, _0807A0D8
	movs r0, #0xa0
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0]
	ldr r4, _0807A0DC
	adds r0, r6, #0
	bl sub_08001494
	str r0, [r4, #0]
_0807A0BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807A0C0: .4byte gUnk_03006410
_0807A0C4: .4byte gUnk_03006430
_0807A0C8: .4byte gUnk_030063E0
_0807A0CC: .4byte gUnk_0300641C
_0807A0D0: .4byte gUnk_030063B0
_0807A0D4: .4byte gUnk_03006380
_0807A0D8: .4byte gUnk_03006370
_0807A0DC: .4byte gUnk_03006420
	thumb_func_end sub_0807A064

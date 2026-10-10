	thumb_func_start sub_080853DC
sub_080853DC: @ 0x080853DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080853F0
	ldr r0, [r0, #0]
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0, #0]
	b _080853F8
	.2byte 0x0000
_080853F0: .4byte gUnk_03006440
_080853F4:
	bl sub_080003F0
_080853F8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _080853F4
	movs r0, #0x50
	str r0, [r4, #8]
	cmp r5, #1
	bne _08085418
	ldr r0, _08085414
	b _0808541A
	.2byte 0x0000
_08085414: .4byte sub_08083AE8
_08085418:
	ldr r0, _08085438
_0808541A:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
_08085438: .4byte sub_0808381C
	thumb_func_end sub_080853DC

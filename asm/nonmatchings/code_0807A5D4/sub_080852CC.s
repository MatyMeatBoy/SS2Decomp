	thumb_func_start sub_080852CC
sub_080852CC: @ 0x080852CC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r1, _08085300
	ldr r0, [r1, #0]
	ldr r0, [r0, #0]
	cmp r0, #4
	beq _08085304
	movs r2, #0
	mov ip, r1
	movs r4, #0x82
	lsls r4, r4, #1
_080852E2:
	mov r0, ip
	ldr r1, [r0, #0]
	lsls r0, r2, #4
	adds r1, r1, r0
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r2, #1
	adds r3, #0x10
	cmp r2, #0xb
	bls _080852E2
	b _08085328
_08085300: .4byte gUnk_03006440
_08085304:
	movs r2, #0
	mov ip, r1
	movs r4, #0x82
	lsls r4, r4, #1
_0808530C:
	mov r0, ip
	ldr r1, [r0, #0]
	lsls r0, r2, #4
	adds r1, r1, r0
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r2, #1
	adds r3, #0x10
	cmp r2, #0x4a
	bls _0808530C
_08085328:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080852CC

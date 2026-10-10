	thumb_func_start sub_0807A2E0
sub_0807A2E0: @ 0x0807A2E0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0807A364
	bl sub_08001494
	adds r6, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #3
	bl sub_08001494
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0
	ldr r3, _0807A368
	movs r2, #0
_0807A300:
	strb r2, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls _0807A300
	ldr r0, _0807A36C
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1, #0]
	adds r7, r4, #0
	adds r7, #8
_0807A316:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08001B14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807A316
	adds r0, r5, #0
	movs r1, #0
	ldr r3, _0807A370
	movs r2, #0
_0807A32C:
	strb r2, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls _0807A32C
	ldr r0, _0807A374
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1, #0]
	lsls r4, r7, #0x10
_0807A340:
	lsrs r0, r4, #0x10
	adds r1, r5, #0
	bl sub_08001B14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807A340
	adds r0, r6, #0
	bl sub_08001538
	adds r0, r5, #0
	bl sub_08001538
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0807A364: .4byte 0x00000CA8
_0807A368: .4byte 0x00000CA7
_0807A36C: .4byte 0x00000CA4
_0807A370: .4byte 0x0000051F
_0807A374: .4byte 0x0000051C
	thumb_func_end sub_0807A2E0

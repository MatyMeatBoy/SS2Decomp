	thumb_func_start sub_080B86D8
sub_080B86D8: @ 0x080B86D8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080B875C
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1, #0]
	adds r2, r2, r0
	ldr r1, _080B8760
	ldr r0, _080B8764
	mov r9, r0
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	movs r3, #0
	mov r1, r9
	strh r3, [r1, #0]
	ldr r0, _080B8768
	mov r8, r0
	ldr r4, [r0, #0]
	strh r3, [r4, #2]
	ldr r6, _080B876C
	ldr r1, _080B8770
	mov sl, r1
	ldrb r1, [r1, #0]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6, #0]
	orrs r0, r1
	strh r0, [r6, #0]
	ldr r0, _080B8774
	strb r3, [r0, #0]
	ldr r1, _080B8778
	ldrh r0, [r2, #0]
	strh r0, [r1, #0]
	adds r2, #2
	ldrh r0, [r2, #0]
	strh r0, [r4, #0]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1, #0]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1, #0]
	ldr r1, _080B877C
	mov r2, sl
	ldrb r0, [r2, #0]
	lsls r5, r0
	strh r5, [r1, #0]
	movs r0, #1
	mov r3, r9
	strh r0, [r3, #0]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B875C: .4byte gUnk_030076F0
_080B8760: .4byte gUnk_03000E38
_080B8764: .4byte 0x04000208
_080B8768: .4byte gUnk_03000E34
_080B876C: .4byte 0x04000200
_080B8770: .4byte gUnk_03000E30
_080B8774: .4byte gUnk_030076D0
_080B8778: .4byte gUnk_03000E32
_080B877C: .4byte 0x04000202
	thumb_func_end sub_080B86D8

	thumb_func_start sub_0802A01C
sub_0802A01C: @ 0x0802A01C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802A074
	ldr r3, [r0, #0]
	movs r4, #0
	ldr r0, _0802A078
	mov ip, r0
	movs r5, #1
	ldr r7, _0802A07C
	movs r6, #8
_0802A02E:
	adds r1, r5, #0
	lsls r1, r4
	mov r2, ip
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0802A060
	adds r2, r3, #0
	adds r2, #0x7a
	ldrh r1, [r2, #0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0802A060
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #0x1e
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x66
	strh r5, [r0, #0]
	ldrh r1, [r2, #0]
	adds r0, r7, #0
	ands r0, r1
	strh r0, [r2, #0]
_0802A060:
	adds r4, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r3, r3, r0
	cmp r4, #4
	bls _0802A02E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0802A074: .4byte gUnk_030056F4
_0802A078: .4byte gUnk_030056FC
_0802A07C: .4byte 0x0000FFF7
	thumb_func_end sub_0802A01C

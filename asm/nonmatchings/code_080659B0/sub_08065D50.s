	thumb_func_start sub_08065D50
sub_08065D50: @ 0x08065D50
	push {r4, r5, lr}
	ldr r0, _08065D60
	ldr r2, [r0, #0]
	adds r5, r0, #0
	cmp r2, #0x31
	bls _08065D64
	movs r0, #0
	b _08065D9C
_08065D60: .4byte gUnk_03006338
_08065D64:
	ldr r1, _08065DA4
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0x81
	strb r0, [r1, #0]
	adds r3, r1, #0
	adds r3, #8
	movs r2, #0
	ldr r4, _08065DA8
_08065D80:
	ldr r0, [r4, #0]
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	strb r0, [r3, #0]
	adds r2, #1
	adds r3, #1
	cmp r2, #9
	bls _08065D80
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #1
_08065D9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_08065DA4: .4byte gUnk_03006300
_08065DA8: .4byte gUnk_030034E0
	thumb_func_end sub_08065D50

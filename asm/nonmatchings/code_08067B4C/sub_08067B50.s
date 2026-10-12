	thumb_func_start sub_08067B50
sub_08067B50: @ 0x08067B50
	push {r4, lr}
	ldr r4, _08067B88
	ldr r2, [r4, #0]
	cmp r2, #0x31
	bhi _08067B94
	ldr r1, _08067B8C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [r1, #0]
	adds r2, r2, r0
	movs r3, #1
	str r3, [r2, #4]
	movs r0, #0x82
	strb r0, [r2, #0]
	ldr r0, _08067B90
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #8]
	strb r3, [r2, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r0, #1
	b _08067B96
_08067B88: .4byte gUnk_03006338
_08067B8C: .4byte gUnk_03006300
_08067B90: .4byte gUnk_030034E0
_08067B94:
	movs r0, #0
_08067B96:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08067B50

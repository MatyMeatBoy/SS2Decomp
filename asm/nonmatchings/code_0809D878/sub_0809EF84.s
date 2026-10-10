	thumb_func_start sub_0809EF84
sub_0809EF84: @ 0x0809EF84
	push {r4, r5, lr}
	bl sub_0800CD8C
	adds r1, r0, #0
	cmp r1, #0
	bne _0809F010
	ldr r3, _0809EFBC
	ldrh r2, [r3, #0]
	movs r1, #1
	ands r1, r2
	ldr r5, _0809EFC0
	cmp r1, #0
	bne _0809EFAA
	movs r4, #1
_0809EFA0:
	ldrh r2, [r3, #0]
	adds r1, r4, #0
	ands r1, r2
	cmp r1, #0
	beq _0809EFA0
_0809EFAA:
	ldrb r1, [r5, #0]
	cmp r1, #8
	bhi _0809F010
	lsls r1, r1, #2
	ldr r2, _0809EFC4
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov pc, r1
	.2byte 0x0000
_0809EFBC: .4byte 0x04000004
_0809EFC0: .4byte gUnk_03000320
_0809EFC4: .4byte _0809EFC8
_0809EFC8:
	.4byte _0809F000
_0809EFCC: .4byte _0809F000
_0809EFD0: .4byte _0809F000
_0809EFD4: .4byte _0809EFEC
_0809EFD8: .4byte _0809F000
_0809EFDC: .4byte _0809EFEC
_0809EFE0: .4byte _0809F010
_0809EFE4: .4byte _0809F000
_0809EFE8: .4byte _0809F000
_0809EFEC:
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3, #0]
	ldr r1, _0809EFFC
	ands r1, r2
	strh r1, [r3, #0]
	b _0809F010
	.2byte 0x0000
_0809EFFC: .4byte 0x0000FBFF
_0809F000:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1, #0]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r3, r4, #0
	orrs r2, r3
	strh r2, [r1, #0]
_0809F010:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0809EF84

	thumb_func_start sub_0805AB20
sub_0805AB20: @ 0x0805AB20
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrh r0, [r7, #0]
	ldr r1, _0805AB34
	mov ip, r1
	cmp r0, #0xa
	bne _0805ABB4
	movs r6, #1
	negs r6, r6
	b _0805AB64
_0805AB34: .4byte gUnk_030034E0
_0805AB38:
	adds r6, r1, #0
	cmp r1, #0x18
	bgt _0805ABB4
	lsls r0, r1, #4
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, ip
	ldr r1, [r3, #0]
	adds r1, r1, r0
	movs r0, #0xa
	strh r0, [r1, #0]
	ldr r2, [r1, #4]
	ldr r0, [r7, #4]
	adds r0, r2, r0
	ldr r2, _0805ABE0
	cmp r0, r2
	bls _0805ABF0
	str r2, [r1, #4]
	ldr r1, _0805ABE4
	adds r2, r0, r1
	str r2, [r7, #4]
_0805AB64:
	adds r3, r6, #0
	cmp r6, #0
	bge _0805AB6C
	movs r3, #0
_0805AB6C:
	lsls r0, r3, #4
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r2, ip
	ldr r1, [r2, #0]
	adds r1, r1, r0
	movs r4, #1
	negs r4, r4
	adds r2, r3, #0
	cmp r3, #0x18
	bgt _0805ABA2
	ldr r5, _0805ABE0
_0805AB86:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0805AB9A
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0805AB9A
	cmp r0, r5
	beq _0805AB9A
	adds r3, r2, #0
	adds r4, r0, #0
_0805AB9A:
	adds r2, #1
	adds r1, #0x10
	cmp r2, #0x18
	ble _0805AB86
_0805ABA2:
	adds r1, r3, #0
	cmp r4, #0
	bge _0805ABAC
	movs r1, #1
	negs r1, r1
_0805ABAC:
	cmp r6, r1
	beq _0805ABB4
	cmp r1, #0
	bge _0805AB38
_0805ABB4:
	movs r2, #0
	ldr r0, _0805ABE8
	ldr r0, [r0, #0]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r0, r3
_0805ABC0:
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0805ABEC
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805ABC0
	movs r1, #1
	negs r1, r1
_0805ABD2:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805ABF4
	movs r0, #0
	b _0805AC00
	.2byte 0x0000
_0805ABE0: .4byte 0x000186A0
_0805ABE4: .4byte 0xFFFE7960
_0805ABE8: .4byte gUnk_030034E0
_0805ABEC:
	adds r1, r2, #0
	b _0805ABD2
_0805ABF0:
	str r0, [r1, #4]
	b _0805ABFE
_0805ABF4:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_0805CFF8
_0805ABFE:
	movs r0, #1
_0805AC00:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805AB20

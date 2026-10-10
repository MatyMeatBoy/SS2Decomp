	thumb_func_start sub_0805B618
sub_0805B618: @ 0x0805B618
	push {r4, r5, r6, r7, lr}
	ldr r1, _0805B670
	ldr r4, [r1, #0]
	ldr r0, _0805B674
	adds r2, r0, #0
	adds r3, r0, #0
	movs r6, #0
	movs r5, #0
	mov ip, r1
	movs r7, #1
_0805B62C:
	ldrh r1, [r4, #0xa]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0805B642
	adds r6, #1
	ldrh r0, [r4, #0xc]
	cmp r0, r2
	bhs _0805B642
	adds r2, r0, #0
	adds r3, r5, #0
_0805B642:
	adds r5, #1
	adds r4, #0x20
	cmp r5, #0xf
	bls _0805B62C
	cmp r6, #0xf
	bls _0805B65A
	mov r0, ip
	ldr r4, [r0, #0]
	lsls r0, r3, #5
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0xa]
_0805B65A:
	mov r0, ip
	ldr r4, [r0, #0]
	movs r5, #0
	movs r2, #3
_0805B662:
	ldrh r1, [r4, #0xa]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0805B678
	adds r0, r4, #0
	b _0805B682
_0805B670: .4byte gUnk_03005D58
_0805B674: .4byte 0x00011170
_0805B678:
	adds r5, #1
	adds r4, #0x20
	cmp r5, #0xf
	bls _0805B662
	movs r0, #0
_0805B682:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805B618

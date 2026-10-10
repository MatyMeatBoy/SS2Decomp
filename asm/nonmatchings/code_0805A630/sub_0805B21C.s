	thumb_func_start sub_0805B21C
sub_0805B21C: @ 0x0805B21C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _0805B2A4
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	str r0, [r5, #0]
	ldr r4, _0805B2A8
	movs r0, #0xf0
	bl sub_08001494
	str r0, [r4, #0]
	ldr r4, [r5, #0]
	movs r5, #0
	mov r6, sp
	movs r7, #0
_0805B23E:
	strh r7, [r6, #0]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0805B2AC
	bl CpuSet
	adds r5, #1
	adds r4, #0x20
	cmp r5, #0xf
	bls _0805B23E
	ldr r4, _0805B2B0
	ldr r0, _0805B2B4
	bl sub_08001494
	str r0, [r4, #0]
	movs r5, #0
	movs r2, #0xdc
	lsls r2, r2, #1
	movs r1, #0
_0805B264:
	ldr r0, [r4, #0]
	adds r0, r0, r5
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, r2
	bls _0805B264
	ldr r1, _0805B2B8
	movs r0, #1
	strh r0, [r1, #0]
	ldr r4, _0805B2BC
	ldr r0, _0805B2C0
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x41
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_08000274
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B2A4: .4byte gUnk_03005D58
_0805B2A8: .4byte gUnk_03005D60
_0805B2AC: .4byte 0x01000010
_0805B2B0: .4byte gUnk_03000124
_0805B2B4: .4byte 0x000001B9
_0805B2B8: .4byte gUnk_03005D5C
_0805B2BC: .4byte gUnk_03005D30
_0805B2C0: .4byte sub_0805B140
	thumb_func_end sub_0805B21C

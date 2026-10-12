	thumb_func_start sub_08058048
sub_08058048: @ 0x08058048
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	cmp r2, #0xa
	bne _0805805E
	mov r0, sp
	strh r2, [r0, #0]
	str r3, [sp, #4]
	lsls r5, r4, #8
	lsls r4, r1, #8
	b _0805807E
_0805805E:
	mov r0, sp
	strh r2, [r0, #0]
	strh r3, [r0, #2]
	movs r2, #0
	lsls r5, r4, #8
	lsls r4, r1, #8
	add r1, sp, #4
	movs r3, #0
_0805806E:
	adds r0, r1, r2
	strb r3, [r0, #0]
	adds r2, #1
	cmp r2, #0xb
	bls _0805806E
	b _0805807E
_0805807A:
	bl sub_080003F0
_0805807E:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sp
	bl sub_08067B9C
	cmp r0, #0
	beq _0805807A
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08058048

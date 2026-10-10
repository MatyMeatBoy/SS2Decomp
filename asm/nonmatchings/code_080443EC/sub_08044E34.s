	thumb_func_start sub_08044E34
sub_08044E34: @ 0x08044E34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #1
	ldr r6, _08044E50
_08044E40:
	bl sub_0800CE30
	cmp r0, #0
	beq _08044E54
	ldr r0, [r6, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	b _08044E5A
_08044E50: .4byte gUnk_03005CF4
_08044E54:
	ldr r0, [r6, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
_08044E5A:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r5, r0, #5
	ands r5, r7
	movs r4, #1
	b _08044E70
_08044E66:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044E7C
_08044E70:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08044E66
_08044E7C:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08044E8E
	ldr r0, [r6, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	b _08044E94
_08044E8E:
	ldr r0, [r6, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
_08044E94:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #5
	ands r0, r4
	cmp r5, r0
	beq _08044E40
	mov r0, r8
	movs r1, #1
	bl sub_0802939C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08044E34

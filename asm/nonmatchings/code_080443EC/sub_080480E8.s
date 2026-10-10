	thumb_func_start sub_080480E8
sub_080480E8: @ 0x080480E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	bl sub_0800CC98
	cmp r0, #0
	bne _0804812E
	bl sub_0801AB24
	cmp r0, #1
	beq _08048112
	cmp r0, #1
	bgt _08048106
	cmp r0, #0
	beq _0804810C
	b _08048126
_08048106:
	cmp r0, #2
	beq _0804811A
	b _08048126
_0804810C:
	bl sub_080576A8
	b _08048126
_08048112:
	movs r0, #6
	bl sub_0801AB50
	b _08048126
_0804811A:
	movs r0, #6
	bl sub_0801AB90
	b _08048126
_08048122:
	bl sub_080003F0
_08048126:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08048122
_0804812E:
	ldr r7, _0804813C
	ldr r0, _08048140
	ldr r0, [r0, #0]
	ldr r1, _08048144
	adds r4, r0, r1
	movs r6, #0
	b _0804814C
_0804813C: .4byte sub_0805A3F0
_08048140: .4byte gUnk_03005CF4
_08048144: .4byte 0x00000E34
_08048148:
	adds r6, #1
	adds r4, #0x28
_0804814C:
	cmp r6, #0x1d
	bhi _08048190
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08048148
	str r7, [sp, #0xc]
	movs r0, #7
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08048198
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08048190:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08048198: .4byte sub_0802A104
	thumb_func_end sub_080480E8

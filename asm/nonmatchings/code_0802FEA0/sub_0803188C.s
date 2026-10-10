	thumb_func_start sub_0803188C
sub_0803188C: @ 0x0803188C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080318BC
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _080318C8
	ldr r0, _080318C0
	ldr r0, [r0, #0]
	ldr r1, _080318C4
	b _080318CE
_080318BC: .4byte gUnk_03003CE0
_080318C0: .4byte gUnk_03005CF4
_080318C4: .4byte 0x000001C5
_080318C8:
	ldr r0, _080318EC
	ldr r0, [r0, #0]
	ldr r1, _080318F0
_080318CE:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _0803193E
	bl sub_0800CE30
	cmp r0, #0
	beq _080318F8
	ldr r0, _080318EC
	ldr r0, [r0, #0]
	ldr r1, _080318F4
	b _080318FE
	.2byte 0x0000
_080318EC: .4byte gUnk_03005CF4
_080318F0: .4byte 0x000001B9
_080318F4: .4byte 0x000001C5
_080318F8:
	ldr r0, _0803191C
	ldr r0, [r0, #0]
	ldr r1, _08031920
_080318FE:
	adds r2, r0, r1
	movs r0, #0x41
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	bl sub_0800CE30
	cmp r0, #0
	beq _08031928
	ldr r0, _0803191C
	ldr r0, [r0, #0]
	ldr r1, _08031924
	b _0803192E
	.2byte 0x0000
_0803191C: .4byte gUnk_03005CF4
_08031920: .4byte 0x000001B9
_08031924: .4byte 0x000001C5
_08031928:
	ldr r0, _0803194C
	ldr r0, [r0, #0]
	ldr r1, _08031950
_0803192E:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	adds r0, r1, #0
	bl sub_0805C7B8
_0803193E:
	bl sub_0800CE40
	movs r0, #6
	bl sub_0801ABE8
	b _08031958
	.2byte 0x0000
_0803194C: .4byte gUnk_03005CF4
_08031950: .4byte 0x000001B9
_08031954:
	bl sub_080003F0
_08031958:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031954
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _080319AC
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r8, r0
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	movs r0, #5
	bl sub_08084F9C
	ldr r0, _080319B0
	bl sub_080003F4
	mov r1, r8
	strh r1, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	ldr r0, _080319B4
	bl sub_08000420
	bl sub_0800CE54
	b _080319BC
_080319AC: .4byte gUnk_03003170
_080319B0: .4byte 0x11201100
_080319B4: .4byte 0x000514C8
_080319B8:
	bl sub_080003F0
_080319BC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080319B8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080319EC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080319EC: .4byte gUnk_03003CE0
	thumb_func_end sub_0803188C

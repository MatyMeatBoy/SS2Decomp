	thumb_func_start sub_08031B54
sub_08031B54: @ 0x08031B54
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08031B84
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08031B90
	ldr r0, _08031B88
	ldr r0, [r0, #0]
	ldr r1, _08031B8C
	b _08031B96
_08031B84: .4byte gUnk_03003CE0
_08031B88: .4byte gUnk_03005CF4
_08031B8C: .4byte 0x000001C5
_08031B90:
	ldr r0, _08031BB4
	ldr r0, [r0, #0]
	ldr r1, _08031BB8
_08031B96:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _08031C06
	bl sub_0800CE30
	cmp r0, #0
	beq _08031BC0
	ldr r0, _08031BB4
	ldr r0, [r0, #0]
	ldr r1, _08031BBC
	b _08031BC6
	.2byte 0x0000
_08031BB4: .4byte gUnk_03005CF4
_08031BB8: .4byte 0x000001B9
_08031BBC: .4byte 0x000001C5
_08031BC0:
	ldr r0, _08031BE4
	ldr r0, [r0, #0]
	ldr r1, _08031BE8
_08031BC6:
	adds r2, r0, r1
	movs r0, #0x41
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	bl sub_0800CE30
	cmp r0, #0
	beq _08031BF0
	ldr r0, _08031BE4
	ldr r0, [r0, #0]
	ldr r1, _08031BEC
	b _08031BF6
	.2byte 0x0000
_08031BE4: .4byte gUnk_03005CF4
_08031BE8: .4byte 0x000001B9
_08031BEC: .4byte 0x000001C5
_08031BF0:
	ldr r0, _08031C14
	ldr r0, [r0, #0]
	ldr r1, _08031C18
_08031BF6:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	adds r0, r1, #0
	bl sub_0805C7B8
_08031C06:
	bl sub_0800CE40
	movs r0, #6
	bl sub_0801ABE8
	b _08031C20
	.2byte 0x0000
_08031C14: .4byte gUnk_03005CF4
_08031C18: .4byte 0x000001B9
_08031C1C:
	bl sub_080003F0
_08031C20:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031C1C
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _08031C74
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r8, r0
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	movs r0, #1
	bl sub_08084F9C
	ldr r0, _08031C78
	bl sub_080003F4
	mov r1, r8
	strh r1, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	ldr r0, _08031C7C
	bl sub_08000420
	bl sub_0800CE54
	b _08031C84
_08031C74: .4byte gUnk_03003170
_08031C78: .4byte 0x11201100
_08031C7C: .4byte 0x000514C8
_08031C80:
	bl sub_080003F0
_08031C84:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08031C80
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08031CB4
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
_08031CB4: .4byte gUnk_03003CE0
	thumb_func_end sub_08031B54

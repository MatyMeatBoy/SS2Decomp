	thumb_func_start sub_080948E0
sub_080948E0: @ 0x080948E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	movs r5, #0
	movs r4, #0
	movs r0, #0xaa
	mov sl, r0
	movs r1, #0x80
	mov r9, r1
	ldr r7, _08094940
	mov r8, r4
_080948FE:
	ldr r1, _08094944
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r3, r0, #2
	adds r3, r3, r0
	asrs r3, r3, #8
	adds r3, #0xa
	mov r0, sl
	subs r5, r5, r0
	add r6, r9
	asrs r0, r5, #8
	strh r0, [r7, #2]
	asrs r0, r6, #8
	strh r0, [r7, #6]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x10
	str r0, [sp, #0]
	mov r1, r8
	str r1, [sp, #4]
	movs r0, #1
	movs r1, #0x22
	movs r2, #1
	bl sub_0800903C
	adds r0, r4, #3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_080003F0
	b _080948FE
_08094940: .4byte gUnk_03001250
_08094944: .4byte gUnk_080B9704
	thumb_func_end sub_080948E0

	thumb_func_start sub_08028918
sub_08028918: @ 0x08028918
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0800048C
	mov r8, r0
	ldr r0, _080289AC
	ldr r0, [r0, #0]
	ldr r1, _080289B0
	adds r4, r0, r1
	movs r6, #0
_0802892E:
	cmp r4, r8
	beq _08028942
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08028942
	adds r0, r4, #0
	bl sub_080003A8
_08028942:
	adds r6, #1
	adds r4, #0x28
	cmp r6, #0x1d
	bls _0802892E
	ldr r0, _080289AC
	ldr r0, [r0, #0]
	ldr r1, _080289B4
	adds r4, r0, r1
	movs r6, #0
_08028954:
	cmp r4, r8
	beq _08028968
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08028968
	adds r0, r4, #0
	bl sub_080003A8
_08028968:
	adds r6, #1
	adds r4, #0x28
	cmp r6, #0x1d
	bls _08028954
	ldr r0, _080289AC
	ldr r0, [r0, #0]
	ldr r1, _080289B8
	adds r7, r0, r1
	movs r6, #0
_0802897A:
	cmp r4, r8
	beq _08028992
	adds r5, r7, #0
	adds r5, #0x48
	adds r0, r5, #0
	bl sub_08000470
	cmp r0, #0
	beq _08028992
	adds r0, r5, #0
	bl sub_080003A8
_08028992:
	adds r6, #1
	adds r7, #0x70
	cmp r6, #0xe
	bls _0802897A
	ldr r1, _080289BC
	movs r0, #0
	str r0, [r1, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080289AC: .4byte gUnk_03005CF4
_080289B0: .4byte 0x00000E34
_080289B4: .4byte 0x000012E4
_080289B8: .4byte 0x000007A4
_080289BC: .4byte gUnk_03005CF0
	thumb_func_end sub_08028918

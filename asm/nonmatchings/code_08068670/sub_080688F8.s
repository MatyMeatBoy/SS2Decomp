	thumb_func_start sub_080688F8
sub_080688F8: @ 0x080688F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0806890C
	lsls r5, r6, #2
	adds r0, r5, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08068922
	b _08068914
	.2byte 0x0000
_0806890C: .4byte gUnk_030063B0
_08068910:
	bl sub_080003F0
_08068914:
	ldr r0, _08068940
	adds r0, r5, r0
	ldr r0, [r0, #0]
	bl sub_08000470
	cmp r0, #0
	bne _08068910
_08068922:
	ldr r4, _08068940
	lsls r5, r6, #2
	adds r4, r5, r4
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	ldr r1, _08068944
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _08068956
	adds r4, r1, #0
	b _0806894C
	.2byte 0x0000
_08068940: .4byte gUnk_030063B0
_08068944: .4byte gUnk_03006370
_08068948:
	bl sub_080003F0
_0806894C:
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _08068948
_08068956:
	ldr r4, _08068980
	adds r4, r5, r4
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r5, #0
	str r5, [r4, #0]
	ldr r6, _08068984
	ldr r0, [r6, #0]
	bl sub_08001538
	ldr r4, _08068988
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r6, #0]
	str r5, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08068980: .4byte gUnk_03006380
_08068984: .4byte gUnk_03006370
_08068988: .4byte gUnk_03006420
	thumb_func_end sub_080688F8

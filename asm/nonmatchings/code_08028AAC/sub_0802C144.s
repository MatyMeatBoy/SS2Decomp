	thumb_func_start sub_0802C144
sub_0802C144: @ 0x0802C144
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802C168
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _0802C170
	.2byte 0x0000
_0802C168: .4byte gUnk_03003CE0
_0802C16C:
	bl sub_080003F0
_0802C170:
	bl sub_0805F184
	cmp r0, #0
	bne _0802C16C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802C194
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802C19C
	.2byte 0x0000
_0802C194: .4byte 0x001404E3
_0802C198:
	bl sub_080003F0
_0802C19C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802C198
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0802C1CE
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r0, #0
	movs r1, #0
	bl sub_080290E4
	movs r0, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x14
	bl sub_08028D98
	b _0802C266
_0802C1CE:
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	movs r2, #0x14
	negs r2, r2
	movs r0, #0
	movs r1, #0
	movs r3, #0x14
	bl sub_08028D98
	ldr r7, _0802C1FC
	ldr r0, _0802C200
	ldr r0, [r0, #0]
	ldr r1, _0802C204
	adds r4, r0, r1
	movs r5, #0
	b _0802C20C
	.2byte 0x0000
_0802C1FC: .4byte sub_0802C144
_0802C200: .4byte gUnk_03005CF4
_0802C204: .4byte 0x00000E34
_0802C208:
	adds r5, #1
	adds r4, #0x28
_0802C20C:
	cmp r5, #0x1d
	bhi _0802C266
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0802C208
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x40
	strh r0, [r1, #8]
	movs r0, #8
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0802C298
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0802C266:
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0802C29C
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x20]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802C298: .4byte sub_0805A874
_0802C29C: .4byte gUnk_03003CE0
	thumb_func_end sub_0802C144

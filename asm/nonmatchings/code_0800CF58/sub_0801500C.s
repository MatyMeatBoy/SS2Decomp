	thumb_func_start sub_0801500C
sub_0801500C: @ 0x0801500C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r5, r7, #2
	adds r0, r5, r7
	lsls r4, r0, #3
	ldr r6, _0801503C
	adds r0, r4, r6
	bl sub_08000470
	cmp r0, #0
	bne _08015084
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08015040
	str r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	movs r1, #0x34
	str r1, [r0, #0]
	adds r4, r5, #0
	b _08015048
	.2byte 0x0000
_0801503C: .4byte gUnk_03003C40
_08015040: .4byte sub_08014E68
_08015044:
	bl sub_080003F0
_08015048:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r3, _0801508C
	adds r0, r4, r7
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0, #0]
	cmp r1, #0
	beq _08015044
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	movs r4, #0xff
	lsls r4, r4, #2
	adds r1, r1, r4
	str r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0, #0]
	adds r0, r2, r3
	adds r1, r7, #0
	bl sub_08000274
_08015084:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801508C: .4byte gUnk_03003C40
	thumb_func_end sub_0801500C

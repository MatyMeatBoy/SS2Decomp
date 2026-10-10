	thumb_func_start sub_08058C08
sub_08058C08: @ 0x08058C08
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	orrs r6, r1
	ldr r7, _08058C20
	ldr r0, _08058C24
	ldr r0, [r0, #0]
	ldr r1, _08058C28
	adds r4, r0, r1
	movs r5, #0
	b _08058C30
_08058C20: .4byte sub_0805AAB8
_08058C24: .4byte gUnk_03005CF4
_08058C28: .4byte 0x00000E34
_08058C2C:
	adds r5, #1
	adds r4, #0x28
_08058C30:
	cmp r5, #0x1d
	bhi _08058C6E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08058C2C
	b _08058C44
_08058C40:
	bl sub_080003F0
_08058C44:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08058C40
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_08058C6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08058C08

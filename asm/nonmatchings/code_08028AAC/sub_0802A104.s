	thumb_func_start sub_0802A104
sub_0802A104: @ 0x0802A104
	push {r4, r5, r6, r7, lr}
	ldr r7, [r0, #0x10]
	ldr r6, [r0, #0xc]
	ldr r2, _0802A11C
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802A120
	adds r0, r0, r1
	ldr r1, [r2, #0]
	adds r4, r1, r0
	b _0802A138
_0802A11C: .4byte gUnk_03005CF4
_0802A120: .4byte 0x000004B4
_0802A124:
	ldr r0, _0802A14C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802A196
	bl sub_080003F0
_0802A138:
	ldrh r0, [r4, #0x14]
	cmp r0, #0xc
	bne _0802A124
	ldr r0, _0802A14C
	ldr r0, [r0, #0]
	ldr r2, _0802A150
	adds r4, r0, r2
	movs r5, #0
	b _0802A158
	.2byte 0x0000
_0802A14C: .4byte gUnk_03005CF4
_0802A150: .4byte 0x00000E34
_0802A154:
	adds r5, #1
	adds r4, #0x28
_0802A158:
	cmp r5, #0x1d
	bhi _0802A196
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802A154
	b _0802A16C
_0802A168:
	bl sub_080003F0
_0802A16C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802A168
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_0802A196:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802A104

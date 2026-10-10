	thumb_func_start sub_08026C54
sub_08026C54: @ 0x08026C54
	push {r4, r5, lr}
	ldr r4, _08026CB4
	ldr r0, [r4, #0]
	ldr r5, _08026CB8
	adds r0, r0, r5
	bl sub_08000470
	cmp r0, #0
	beq _08026C6E
	ldr r0, [r4, #0]
	adds r0, r0, r5
	bl sub_080003A8
_08026C6E:
	ldr r0, [r4, #0]
	ldr r1, _08026CBC
	adds r0, r0, r1
	ldr r1, _08026CC0
	str r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, [r4, #0]
	ldr r3, _08026CC4
	adds r1, r0, r3
	str r2, [r1, #0]
	subs r3, #0x10
	adds r1, r0, r3
	movs r3, #0xff
	lsls r3, r3, #2
	adds r2, r2, r3
	str r2, [r1, #0]
	ldr r1, _08026CC8
	adds r2, r0, r1
	movs r1, #0x46
	str r1, [r2, #0]
	ldr r3, _08026CCC
	adds r2, r0, r3
	movs r1, #0
	str r1, [r2, #0]
	adds r0, r0, r5
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08026CB4: .4byte gUnk_03005CF4
_08026CB8: .4byte 0x000017E4
_08026CBC: .4byte 0x000017F0
_08026CC0: .4byte sub_08026858
_08026CC4: .4byte 0x00001804
_08026CC8: .4byte 0x000017EC
_08026CCC: .4byte 0x00001808
	thumb_func_end sub_08026C54

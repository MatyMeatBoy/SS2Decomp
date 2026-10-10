	thumb_func_start sub_08060DB0
sub_08060DB0: @ 0x08060DB0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	cmp r6, #0
	beq _08060DD0
	ldr r1, _08060DCC
	lsls r2, r6, #2
	adds r0, r2, r6
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x3c
	str r1, [r0, #0]
	adds r4, r2, #0
	b _08060DD8
_08060DCC: .4byte gUnk_03006110
_08060DD0:
	ldr r1, _08060DE4
	movs r0, #0x65
	str r0, [r1, #8]
	movs r4, #0
_08060DD8:
	adds r0, r4, r6
	lsls r0, r0, #3
	ldr r1, _08060DE8
	adds r5, r0, r1
	b _08060DF0
	.2byte 0x0000
_08060DE4: .4byte gUnk_03006110
_08060DE8: .4byte gUnk_03006130
_08060DEC:
	bl sub_080003F0
_08060DF0:
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	str r0, [r5, #0]
	cmp r0, #0
	beq _08060DEC
	ldr r3, _08060E3C
	adds r0, r4, r6
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r0, r1
	ldr r2, _08060E40
	str r2, [r1, #0]
	adds r2, r3, #0
	adds r2, #0x10
	adds r2, r0, r2
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r0, r1
	ldr r1, [r1, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r1, r1, r4
	str r1, [r2, #0]
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r0, r1
	movs r2, #0
	str r2, [r1, #0]
	adds r0, r0, r3
	adds r1, r6, #0
	bl sub_08000274
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08060E3C: .4byte gUnk_03006110
_08060E40: .4byte sub_080605D0
	thumb_func_end sub_08060DB0

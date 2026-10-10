	thumb_func_start sub_08051DF0
sub_08051DF0: @ 0x08051DF0
	push {r4, lr}
	cmp r0, #0
	beq _08051DFC
	cmp r0, #1
	beq _08051E0C
	b _08051E84
_08051DFC:
	ldr r0, _08051E08
	movs r1, #1
	movs r2, #1
	bl sub_08068820
	b _08051E84
_08051E08: .4byte sub_08051DF0
_08051E0C:
	movs r0, #0x84
	lsls r0, r0, #9
	movs r1, #0xac
	lsls r1, r1, #9
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _08051E2A
_08051E20:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08051E36
_08051E2A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08051E20
_08051E36:
	movs r0, #0x80
	lsls r0, r0, #9
	movs r1, #0xac
	lsls r1, r1, #9
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0x88
	lsls r0, r0, #9
	movs r1, #0xac
	lsls r1, r1, #9
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _08051E8C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08051E68
	ldr r0, _08051E90
	bl sub_08006D08
_08051E68:
	movs r1, #0x84
	lsls r1, r1, #1
	movs r2, #0xac
	lsls r2, r2, #1
	movs r0, #7
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _08051E94
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_08051E84:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08051E8C: .4byte gUnk_030027D0
_08051E90: .4byte 0x0000017B
_08051E94: .4byte gUnk_03005CF4
	thumb_func_end sub_08051DF0

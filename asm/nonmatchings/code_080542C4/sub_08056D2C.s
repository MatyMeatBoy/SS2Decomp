	thumb_func_start sub_08056D2C
sub_08056D2C: @ 0x08056D2C
	push {r4, lr}
	ldr r4, _08056D4C
	ldr r0, [r4, #0]
	ldr r1, _08056D50
	adds r0, r0, r1
	bl sub_08000470
	cmp r0, #0
	beq _08056D66
	ldr r0, [r4, #0]
	ldr r1, _08056D50
	adds r0, r0, r1
	bl sub_080003A8
	b _08056D58
	.2byte 0x0000
_08056D4C: .4byte gUnk_03005CF4
_08056D50: .4byte 0x00001794
_08056D54:
	bl sub_080003F0
_08056D58:
	ldr r0, [r4, #0]
	ldr r1, _08056D78
	adds r0, r0, r1
	bl sub_08000470
	cmp r0, #0
	bne _08056D54
_08056D66:
	ldr r4, _08056D7C
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_08056D78: .4byte 0x00001794
_08056D7C: .4byte gUnk_03005CF4
	thumb_func_end sub_08056D2C

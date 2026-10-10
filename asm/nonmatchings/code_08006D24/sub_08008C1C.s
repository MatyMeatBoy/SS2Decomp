	thumb_func_start sub_08008C1C
sub_08008C1C: @ 0x08008C1C
	ldr r0, _08008C4C
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, _08008C50
	str r1, [r0, #0]
	ldr r0, _08008C54
	str r1, [r0, #0]
	ldr r0, _08008C58
	str r1, [r0, #0]
	ldr r0, _08008C5C
	str r1, [r0, #0]
	ldr r0, _08008C60
	str r1, [r0, #0]
	ldr r0, _08008C64
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, #5
	bhi _08008CBA
	lsls r0, r0, #2
	ldr r1, _08008C68
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08008C4C: .4byte gUnk_030028B4
_08008C50: .4byte gUnk_030028B8
_08008C54: .4byte gUnk_030028C8
_08008C58: .4byte gUnk_030028B0
_08008C5C: .4byte gUnk_030028C0
_08008C60: .4byte gUnk_030028C4
_08008C64: .4byte gUnk_0300129C
_08008C68: .4byte _08008C6C
_08008C6C:
	.4byte _08008C84
_08008C70: .4byte _08008C94
_08008C74: .4byte _08008CA4
_08008C78: .4byte _08008CB4
_08008C7C: .4byte _08008CB4
_08008C80: .4byte _08008CB4
_08008C84:
	ldr r1, _08008C8C
	ldr r0, _08008C90
	b _08008CB8
	.2byte 0x0000
_08008C8C: .4byte gUnk_030028BC
_08008C90: .4byte 0x06010000
_08008C94:
	ldr r1, _08008C9C
	ldr r0, _08008CA0
	b _08008CB8
	.2byte 0x0000
_08008C9C: .4byte gUnk_030028BC
_08008CA0: .4byte 0x06010000
_08008CA4:
	ldr r1, _08008CAC
	ldr r0, _08008CB0
	b _08008CB8
	.2byte 0x0000
_08008CAC: .4byte gUnk_030028BC
_08008CB0: .4byte 0x06010000
_08008CB4:
	ldr r1, _08008CBC
	ldr r0, _08008CC0
_08008CB8:
	str r0, [r1, #0]
_08008CBA:
	bx lr
_08008CBC: .4byte gUnk_030028BC
_08008CC0: .4byte 0x06014000
	thumb_func_end sub_08008C1C

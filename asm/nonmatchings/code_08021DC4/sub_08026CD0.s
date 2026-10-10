	thumb_func_start sub_08026CD0
sub_08026CD0: @ 0x08026CD0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0
	beq _08026CE8
	cmp r2, #1
	beq _08026CF2
	b _08026D00
_08026CE8:
	bl sub_0800BB40
	bl sub_0805768C
	b _08026D00
_08026CF2:
	bl sub_080576C4
	bl sub_0800BB40
	movs r0, #5
	bl sub_08057624
_08026D00:
	cmp r5, #0x17
	bls _08026D06
	b _0802701A
_08026D06:
	lsls r0, r5, #2
	ldr r1, _08026D10
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08026D10: .4byte _08026D14
_08026D14:
	.4byte _08026D74
_08026D18: .4byte _08026D9C
_08026D1C: .4byte _08026DB8
_08026D20: .4byte _08026DD4
_08026D24: .4byte _08026DF0
_08026D28: .4byte _08026E0C
_08026D2C: .4byte _08026E28
_08026D30: .4byte _08026E44
_08026D34: .4byte _08026E60
_08026D38: .4byte _08026E7C
_08026D3C: .4byte _08026E98
_08026D40: .4byte _08026EB4
_08026D44: .4byte _08026ED0
_08026D48: .4byte _08026EEC
_08026D4C: .4byte _08026F08
_08026D50: .4byte _08026F24
_08026D54: .4byte _08026F40
_08026D58: .4byte _08026F5C
_08026D5C: .4byte _08026F78
_08026D60: .4byte _08026F94
_08026D64: .4byte _08026FB0
_08026D68: .4byte _08026FCC
_08026D6C: .4byte _08026FE8
_08026D70: .4byte _08027004
_08026D74:
	bl sub_0800CCDC
	ldr r0, _08026D90
	ldr r3, [r0, #0]
	ldr r0, _08026D94
	adds r2, r3, r0
	ldr r1, _08026D98
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0x36]
	b _0802701A
_08026D90: .4byte gUnk_03005CF4
_08026D94: .4byte 0x0000071C
_08026D98: .4byte gUnk_084F0AC0
_08026D9C:
	bl sub_0800CCEC
	ldr r0, _08026DAC
	ldr r1, [r0, #0]
	ldr r0, _08026DB0
	adds r1, r1, r0
	ldr r2, _08026DB4
	b _08027012
_08026DAC: .4byte gUnk_03005CF4
_08026DB0: .4byte 0x0000071C
_08026DB4: .4byte gUnk_084F26E4
_08026DB8:
	bl sub_0800CCEC
	ldr r0, _08026DC8
	ldr r1, [r0, #0]
	ldr r0, _08026DCC
	adds r1, r1, r0
	ldr r2, _08026DD0
	b _08027012
_08026DC8: .4byte gUnk_03005CF4
_08026DCC: .4byte 0x0000071C
_08026DD0: .4byte gUnk_084F4818
_08026DD4:
	bl sub_0800CCEC
	ldr r0, _08026DE4
	ldr r1, [r0, #0]
	ldr r0, _08026DE8
	adds r1, r1, r0
	ldr r2, _08026DEC
	b _08027012
_08026DE4: .4byte gUnk_03005CF4
_08026DE8: .4byte 0x0000071C
_08026DEC: .4byte gUnk_084F794C
_08026DF0:
	bl sub_0800CCEC
	ldr r0, _08026E00
	ldr r1, [r0, #0]
	ldr r0, _08026E04
	adds r1, r1, r0
	ldr r2, _08026E08
	b _08027012
_08026E00: .4byte gUnk_03005CF4
_08026E04: .4byte 0x0000071C
_08026E08: .4byte gUnk_084FA298
_08026E0C:
	bl sub_0800CCEC
	ldr r0, _08026E1C
	ldr r1, [r0, #0]
	ldr r0, _08026E20
	adds r1, r1, r0
	ldr r2, _08026E24
	b _08027012
_08026E1C: .4byte gUnk_03005CF4
_08026E20: .4byte 0x0000071C
_08026E24: .4byte gUnk_084FD06C
_08026E28:
	bl sub_0800CCEC
	ldr r0, _08026E38
	ldr r1, [r0, #0]
	ldr r0, _08026E3C
	adds r1, r1, r0
	ldr r2, _08026E40
	b _08027012
_08026E38: .4byte gUnk_03005CF4
_08026E3C: .4byte 0x0000071C
_08026E40: .4byte gUnk_0850008C
_08026E44:
	bl sub_0800CCEC
	ldr r0, _08026E54
	ldr r1, [r0, #0]
	ldr r0, _08026E58
	adds r1, r1, r0
	ldr r2, _08026E5C
	b _08027012
_08026E54: .4byte gUnk_03005CF4
_08026E58: .4byte 0x0000071C
_08026E5C: .4byte gUnk_085028BC
_08026E60:
	bl sub_0800CCEC
	ldr r0, _08026E70
	ldr r1, [r0, #0]
	ldr r0, _08026E74
	adds r1, r1, r0
	ldr r2, _08026E78
	b _08027012
_08026E70: .4byte gUnk_03005CF4
_08026E74: .4byte 0x0000071C
_08026E78: .4byte gUnk_085060D4
_08026E7C:
	bl sub_0800CCEC
	ldr r0, _08026E8C
	ldr r1, [r0, #0]
	ldr r0, _08026E90
	adds r1, r1, r0
	ldr r2, _08026E94
	b _08027012
_08026E8C: .4byte gUnk_03005CF4
_08026E90: .4byte 0x0000071C
_08026E94: .4byte gUnk_08508B54
_08026E98:
	bl sub_0800CCEC
	ldr r0, _08026EA8
	ldr r1, [r0, #0]
	ldr r0, _08026EAC
	adds r1, r1, r0
	ldr r2, _08026EB0
	b _08027012
_08026EA8: .4byte gUnk_03005CF4
_08026EAC: .4byte 0x0000071C
_08026EB0: .4byte gUnk_0850C6E8
_08026EB4:
	bl sub_0800CCEC
	ldr r0, _08026EC4
	ldr r1, [r0, #0]
	ldr r0, _08026EC8
	adds r1, r1, r0
	ldr r2, _08026ECC
	b _08027012
_08026EC4: .4byte gUnk_03005CF4
_08026EC8: .4byte 0x0000071C
_08026ECC: .4byte gUnk_0850D4EC
_08026ED0:
	bl sub_0800CCEC
	ldr r0, _08026EE0
	ldr r1, [r0, #0]
	ldr r0, _08026EE4
	adds r1, r1, r0
	ldr r2, _08026EE8
	b _08027012
_08026EE0: .4byte gUnk_03005CF4
_08026EE4: .4byte 0x0000071C
_08026EE8: .4byte gUnk_0850DE28
_08026EEC:
	bl sub_0800CCEC
	ldr r0, _08026EFC
	ldr r1, [r0, #0]
	ldr r0, _08026F00
	adds r1, r1, r0
	ldr r2, _08026F04
	b _08027012
_08026EFC: .4byte gUnk_03005CF4
_08026F00: .4byte 0x0000071C
_08026F04: .4byte gUnk_0850EAC4
_08026F08:
	bl sub_0800CCEC
	ldr r0, _08026F18
	ldr r1, [r0, #0]
	ldr r0, _08026F1C
	adds r1, r1, r0
	ldr r2, _08026F20
	b _08027012
_08026F18: .4byte gUnk_03005CF4
_08026F1C: .4byte 0x0000071C
_08026F20: .4byte gUnk_0850ED20
_08026F24:
	bl sub_0800CCEC
	ldr r0, _08026F34
	ldr r1, [r0, #0]
	ldr r0, _08026F38
	adds r1, r1, r0
	ldr r2, _08026F3C
	b _08027012
_08026F34: .4byte gUnk_03005CF4
_08026F38: .4byte 0x0000071C
_08026F3C: .4byte gUnk_0850F894
_08026F40:
	bl sub_0800CCEC
	ldr r0, _08026F50
	ldr r1, [r0, #0]
	ldr r0, _08026F54
	adds r1, r1, r0
	ldr r2, _08026F58
	b _08027012
_08026F50: .4byte gUnk_03005CF4
_08026F54: .4byte 0x0000071C
_08026F58: .4byte gUnk_08510530
_08026F5C:
	bl sub_0800CCEC
	ldr r0, _08026F6C
	ldr r1, [r0, #0]
	ldr r0, _08026F70
	adds r1, r1, r0
	ldr r2, _08026F74
	b _08027012
_08026F6C: .4byte gUnk_03005CF4
_08026F70: .4byte 0x0000071C
_08026F74: .4byte gUnk_08511538
_08026F78:
	bl sub_0800CCEC
	ldr r0, _08026F88
	ldr r1, [r0, #0]
	ldr r0, _08026F8C
	adds r1, r1, r0
	ldr r2, _08026F90
	b _08027012
_08026F88: .4byte gUnk_03005CF4
_08026F8C: .4byte 0x0000071C
_08026F90: .4byte gUnk_08512670
_08026F94:
	bl sub_0800CCEC
	ldr r0, _08026FA4
	ldr r1, [r0, #0]
	ldr r0, _08026FA8
	adds r1, r1, r0
	ldr r2, _08026FAC
	b _08027012
_08026FA4: .4byte gUnk_03005CF4
_08026FA8: .4byte 0x0000071C
_08026FAC: .4byte gUnk_08513680
_08026FB0:
	bl sub_0800CCEC
	ldr r0, _08026FC0
	ldr r1, [r0, #0]
	ldr r0, _08026FC4
	adds r1, r1, r0
	ldr r2, _08026FC8
	b _08027012
_08026FC0: .4byte gUnk_03005CF4
_08026FC4: .4byte 0x0000071C
_08026FC8: .4byte gUnk_08514FAC
_08026FCC:
	bl sub_0800CCEC
	ldr r0, _08026FDC
	ldr r1, [r0, #0]
	ldr r0, _08026FE0
	adds r1, r1, r0
	ldr r2, _08026FE4
	b _08027012
_08026FDC: .4byte gUnk_03005CF4
_08026FE0: .4byte 0x0000071C
_08026FE4: .4byte gUnk_08515FCC
_08026FE8:
	bl sub_0800CCEC
	ldr r0, _08026FF8
	ldr r1, [r0, #0]
	ldr r0, _08026FFC
	adds r1, r1, r0
	ldr r2, _08027000
	b _08027012
_08026FF8: .4byte gUnk_03005CF4
_08026FFC: .4byte 0x0000071C
_08027000: .4byte gUnk_08517220
_08027004:
	bl sub_0800CCEC
	ldr r0, _08027040
	ldr r1, [r0, #0]
	ldr r0, _08027044
	adds r1, r1, r0
	ldr r2, _08027048
_08027012:
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_0802701A:
	bl sub_0800CF10
	movs r1, #0
	cmp r0, #0
	bne _08027026
	movs r1, #1
_08027026:
	adds r0, r1, #0
	bl sub_080570DC
	ldr r0, _08027040
	ldr r0, [r0, #0]
	movs r1, #0
	strh r1, [r0, #0x10]
	str r4, [r0, #0x40]
	strh r5, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08027040: .4byte gUnk_03005CF4
_08027044: .4byte 0x0000071C
_08027048: .4byte gUnk_0851810C
	thumb_func_end sub_08026CD0

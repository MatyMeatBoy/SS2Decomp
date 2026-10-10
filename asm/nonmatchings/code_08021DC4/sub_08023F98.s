	thumb_func_start sub_08023F98
sub_08023F98: @ 0x08023F98
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	subs r0, r5, #1
	cmp r0, #0x16
	bls _08023FAA
	b _080240CE
_08023FAA:
	lsls r0, r0, #2
	ldr r1, _08023FB4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08023FB4: .4byte _08023FB8
_08023FB8:
	.4byte _08024014
_08023FBC: .4byte _0802401C
_08023FC0: .4byte _08024024
_08023FC4: .4byte _0802402C
_08023FC8: .4byte _08024034
_08023FCC: .4byte _0802403C
_08023FD0: .4byte _08024044
_08023FD4: .4byte _0802404C
_08023FD8: .4byte _08024054
_08023FDC: .4byte _0802405C
_08023FE0: .4byte _08024064
_08023FE4: .4byte _0802406C
_08023FE8: .4byte _08024074
_08023FEC: .4byte _0802407C
_08023FF0: .4byte _08024084
_08023FF4: .4byte _0802408C
_08023FF8: .4byte _08024094
_08023FFC: .4byte _0802409C
_08024000: .4byte _080240A4
_08024004: .4byte _080240AC
_08024008: .4byte _080240B4
_0802400C: .4byte _080240BC
_08024010: .4byte _080240C4
_08024014:
	ldr r0, _08024018
	b _080240C6
_08024018: .4byte gUnk_084B139C
_0802401C:
	ldr r0, _08024020
	b _080240C6
_08024020: .4byte gUnk_084B13BC
_08024024:
	ldr r0, _08024028
	b _080240C6
_08024028: .4byte gUnk_084B13E4
_0802402C:
	ldr r0, _08024030
	b _080240C6
_08024030: .4byte gUnk_084B1420
_08024034:
	ldr r0, _08024038
	b _080240C6
_08024038: .4byte gUnk_084B1454
_0802403C:
	ldr r0, _08024040
	b _080240C6
_08024040: .4byte gUnk_084B148C
_08024044:
	ldr r0, _08024048
	b _080240C6
_08024048: .4byte gUnk_084B14D0
_0802404C:
	ldr r0, _08024050
	b _080240C6
_08024050: .4byte gUnk_084B1504
_08024054:
	ldr r0, _08024058
	b _080240C6
_08024058: .4byte gUnk_084B154C
_0802405C:
	ldr r0, _08024060
	b _080240C6
_08024060: .4byte gUnk_084B1590
_08024064:
	ldr r0, _08024068
	b _080240C6
_08024068: .4byte gUnk_084B15E4
_0802406C:
	ldr r0, _08024070
	b _080240C6
_08024070: .4byte gUnk_084B15E8
_08024074:
	ldr r0, _08024078
	b _080240C6
_08024078: .4byte gUnk_084B15F8
_0802407C:
	ldr r0, _08024080
	b _080240C6
_08024080: .4byte gUnk_084B160C
_08024084:
	ldr r0, _08024088
	b _080240C6
_08024088: .4byte gUnk_084B1610
_0802408C:
	ldr r0, _08024090
	b _080240C6
_08024090: .4byte gUnk_084B1620
_08024094:
	ldr r0, _08024098
	b _080240C6
_08024098: .4byte gUnk_084B1630
_0802409C:
	ldr r0, _080240A0
	b _080240C6
_080240A0: .4byte gUnk_084B164C
_080240A4:
	ldr r0, _080240A8
	b _080240C6
_080240A8: .4byte gUnk_084B1664
_080240AC:
	ldr r0, _080240B0
	b _080240C6
_080240B0: .4byte gUnk_084B1678
_080240B4:
	ldr r0, _080240B8
	b _080240C6
_080240B8: .4byte gUnk_084B16A0
_080240BC:
	ldr r0, _080240C0
	b _080240C6
_080240C0: .4byte gUnk_084B16B4
_080240C4:
	ldr r0, _08024130
_080240C6:
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	ldr r4, [r0, #0]
_080240CE:
	bl sub_08002204
	cmp r0, #0
	beq _08024128
	ldr r2, _08024134
	ldr r1, [r2, #0]
	movs r0, #0
	strh r0, [r1, #0xa]
	cmp r5, #0
	beq _08024128
	cmp r5, #0xb
	beq _08024128
	movs r5, #0
	ldrh r1, [r4, #0]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08024128
	adds r6, r2, #0
_080240F4:
	ldr r0, [r6, #0]
	ldrh r2, [r0, #0xa]
	cmp r1, #0
	beq _08024116
	lsls r1, r2, #2
	ldr r3, _08024138
	adds r0, r0, r3
	adds r0, r0, r1
	str r4, [r0, #0]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08023ED8
	ldr r1, [r6, #0]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
_08024116:
	adds r5, #1
	adds r4, #0x38
	cmp r5, #0x1f
	bhi _08024128
	ldrh r1, [r4, #0]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080240F4
_08024128:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08024130: .4byte gUnk_084B16CC
_08024134: .4byte gUnk_03005CF4
_08024138: .4byte 0x00000724
	thumb_func_end sub_08023F98

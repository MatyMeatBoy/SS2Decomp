	thumb_func_start sub_08006EE0
sub_08006EE0: @ 0x08006EE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	lsls r0, r4, #4
	lsrs r5, r0, #0x14
	cmp r5, #0x16
	bls _08006EF0
	b _080070D8
_08006EF0:
	lsls r0, r5, #2
	ldr r1, _08006EFC
	adds r1, r0, r1
	ldr r1, [r1, #0]
	adds r6, r0, #0
	mov pc, r1
_08006EFC: .4byte _08006F00
_08006F00:
	.4byte _08006F6E
_08006F04: .4byte _08006F6E
_08006F08: .4byte _08006F6E
_08006F0C: .4byte _08006F6E
_08006F10: .4byte _08006F6E
_08006F14: .4byte _08006F6E
_08006F18: .4byte _08006F6E
_08006F1C: .4byte _08006F5C
_08006F20: .4byte _08006F62
_08006F24: .4byte _08006F68
_08006F28: .4byte _080070D8
_08006F2C: .4byte _08006F7A
_08006F30: .4byte _08006F90
_08006F34: .4byte _08006FA8
_08006F38: .4byte _08006FC0
_08006F3C: .4byte _08006FD8
_08006F40: .4byte _08006FF0
_08006F44: .4byte _08007008
_08006F48: .4byte _08007020
_08006F4C: .4byte _08007038
_08006F50: .4byte _08007050
_08006F54: .4byte _080070B8
_08006F58: .4byte _080070D0
_08006F5C:
	ldr r0, [r3, #0xc]
	adds r2, r3, r0
	b _080070DC
_08006F62:
	ldr r0, [r3, #0x20]
	adds r2, r3, r0
	b _080070DC
_08006F68:
	ldr r0, [r3, #0x14]
	adds r2, r3, r0
	b _080070DC
_08006F6E:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r6
	ldr r0, [r0, #0]
	adds r2, r3, r0
	b _080070DC
_08006F7A:
	ldr r0, _08006F88
	ands r0, r4
	movs r1, #0xc4
	muls r1, r0, r1
	ldr r0, _08006F8C
	adds r2, r1, r0
	b _080070DC
_08006F88: .4byte 0x0000FFFF
_08006F8C: .4byte gUnk_084506D0
_08006F90:
	ldr r0, _08006FA0
	ands r0, r4
	movs r1, #0xb8
	muls r1, r0, r1
	ldr r0, _08006FA4
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08006FA0: .4byte 0x0000FFFF
_08006FA4: .4byte gUnk_08434738
_08006FA8:
	ldr r0, _08006FB8
	ands r0, r4
	movs r1, #0xb8
	muls r1, r0, r1
	ldr r0, _08006FBC
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08006FB8: .4byte 0x0000FFFF
_08006FBC: .4byte gUnk_0843B8C8
_08006FC0:
	ldr r0, _08006FD0
	ands r0, r4
	movs r1, #0xb8
	muls r1, r0, r1
	ldr r0, _08006FD4
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08006FD0: .4byte 0x0000FFFF
_08006FD4: .4byte gUnk_08442498
_08006FD8:
	ldr r0, _08006FE8
	ands r0, r4
	movs r1, #0xb4
	muls r1, r0, r1
	ldr r0, _08006FEC
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08006FE8: .4byte 0x0000FFFF
_08006FEC: .4byte gUnk_084303B8
_08006FF0:
	ldr r0, _08007000
	ands r0, r4
	movs r1, #0xac
	muls r1, r0, r1
	ldr r0, _08007004
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08007000: .4byte 0x0000FFFF
_08007004: .4byte gUnk_0844A820
_08007008:
	ldr r0, _08007018
	ands r0, r4
	movs r1, #0xb0
	muls r1, r0, r1
	ldr r0, _0800701C
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08007018: .4byte 0x0000FFFF
_0800701C: .4byte gUnk_0844EB50
_08007020:
	ldr r0, _08007030
	ands r0, r4
	movs r1, #0xa4
	muls r1, r0, r1
	ldr r0, _08007034
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08007030: .4byte 0x0000FFFF
_08007034: .4byte gUnk_0842A6D4
_08007038:
	ldr r0, _08007048
	ands r0, r4
	movs r1, #0xb0
	muls r1, r0, r1
	ldr r0, _0800704C
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_08007048: .4byte 0x0000FFFF
_0800704C: .4byte gUnk_084742BC
_08007050:
	ldr r0, _08007064
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _080070DC
	lsls r0, r0, #2
	ldr r1, _08007068
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08007064: .4byte gUnk_03003470
_08007068: .4byte _0800706C
_0800706C:
	.4byte _08007080
_08007070: .4byte _08007088
_08007074: .4byte _08007090
_08007078: .4byte _080070A0
_0800707C: .4byte _08007098
_08007080:
	ldr r1, _08007084
	b _080070A2
_08007084: .4byte gUnk_0838AFF0
_08007088:
	ldr r1, _0800708C
	b _080070A2
_0800708C: .4byte gUnk_084009A4
_08007090:
	ldr r1, _08007094
	b _080070A2
_08007094: .4byte gUnk_08428C38
_08007098:
	ldr r1, _0800709C
	b _080070A2
_0800709C: .4byte gUnk_083B0B4C
_080070A0:
	ldr r1, _080070B0
_080070A2:
	ldr r0, _080070B4
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	b _080070DC
	.2byte 0x0000
_080070B0: .4byte gUnk_083D8AEC
_080070B4: .4byte 0x0000FFFF
_080070B8:
	ldr r0, _080070C8
	ands r0, r4
	movs r1, #0xa8
	muls r1, r0, r1
	ldr r0, _080070CC
	adds r2, r1, r0
	b _080070DC
	.2byte 0x0000
_080070C8: .4byte 0x0000FFFF
_080070CC: .4byte gUnk_0842A38C
_080070D0:
	ldr r2, _080070D4
	b _080070DC
_080070D4: .4byte gUnk_0847838C
_080070D8:
	movs r0, #0
	b _08007158
_080070DC:
	cmp r5, #9
	bhi _08007156
	ldr r0, _080070E8
	adds r0, r6, r0
	ldr r0, [r0, #0]
	mov pc, r0
_080070E8: .4byte _080070EC
_080070EC:
	.4byte _08007114
_080070F0: .4byte _08007138
_080070F4: .4byte _08007114
_080070F8: .4byte _08007138
_080070FC: .4byte _0800712C
_08007100: .4byte _08007120
_08007104: .4byte _08007138
_08007108: .4byte _08007144
_0800710C: .4byte _08007144
_08007110: .4byte _08007144
_08007114:
	ldr r0, _0800711C
	ands r0, r4
	b _0800714C
	.2byte 0x0000
_0800711C: .4byte 0x0000FFFF
_08007120:
	ldr r0, _08007128
	ands r0, r4
	b _0800714C
	.2byte 0x0000
_08007128: .4byte 0x0000FFFF
_0800712C:
	ldr r0, _08007134
	ands r0, r4
	b _0800714C
	.2byte 0x0000
_08007134: .4byte 0x0000FFFF
_08007138:
	ldr r0, _08007140
	ands r0, r4
	lsls r0, r0, #3
	b _0800714E
_08007140: .4byte 0x0000FFFF
_08007144:
	ldr r0, _08007160
	ands r0, r4
	lsls r0, r0, #1
	adds r0, #1
_0800714C:
	lsls r0, r0, #2
_0800714E:
	adds r1, r2, #4
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r2, r2, r0
_08007156:
	adds r0, r2, #0
_08007158:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_08007160: .4byte 0x0000FFFF
	thumb_func_end sub_08006EE0

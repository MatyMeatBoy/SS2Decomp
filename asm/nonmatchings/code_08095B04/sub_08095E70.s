	thumb_func_start sub_08095E70
sub_08095E70: @ 0x08095E70
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, [r4, #0x14]
	lsls r2, r2, #8
	ldr r3, [r4, #0x18]
	lsls r3, r3, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r3, r3, #0x10
	subs r1, r1, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _08095EB4
	cmp r2, #6
	bhi _08095EB2
	adds r2, #1
	b _08095EB4
_08095EB2:
	movs r2, #0
_08095EB4:
	cmp r2, #7
	bhi _08095F08
	lsls r0, r2, #2
	ldr r1, _08095EC4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08095EC4: .4byte _08095EC8
_08095EC8:
	.4byte _08095EE8
_08095ECC: .4byte _08095EEC
_08095ED0: .4byte _08095EF0
_08095ED4: .4byte _08095EF4
_08095ED8: .4byte _08095EF8
_08095EDC: .4byte _08095EFC
_08095EE0: .4byte _08095F00
_08095EE4: .4byte _08095F04
_08095EE8:
	movs r0, #6
	b _08095F06
_08095EEC:
	movs r0, #7
	b _08095F06
_08095EF0:
	movs r0, #0
	b _08095F06
_08095EF4:
	movs r0, #1
	b _08095F06
_08095EF8:
	movs r0, #2
	b _08095F06
_08095EFC:
	movs r0, #3
	b _08095F06
_08095F00:
	movs r0, #4
	b _08095F06
_08095F04:
	movs r0, #5
_08095F06:
	strh r0, [r4, #8]
_08095F08:
	ldrb r0, [r4, #8]
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08095E70

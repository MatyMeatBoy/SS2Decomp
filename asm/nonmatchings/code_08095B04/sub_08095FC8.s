	thumb_func_start sub_08095FC8
sub_08095FC8: @ 0x08095FC8
	push {lr}
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r3, r3, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _08096006
	cmp r2, #6
	bhi _08096004
	adds r2, #1
	b _08096006
_08096004:
	movs r2, #0
_08096006:
	cmp r2, #7
	bhi _08096056
	lsls r0, r2, #2
	ldr r1, _08096014
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08096014: .4byte _08096018
_08096018:
	.4byte _08096038
_0809601C: .4byte _0809603C
_08096020: .4byte _08096040
_08096024: .4byte _08096044
_08096028: .4byte _08096048
_0809602C: .4byte _0809604C
_08096030: .4byte _08096050
_08096034: .4byte _08096054
_08096038:
	movs r2, #6
	b _08096056
_0809603C:
	movs r2, #7
	b _08096056
_08096040:
	movs r2, #0
	b _08096056
_08096044:
	movs r2, #1
	b _08096056
_08096048:
	movs r2, #2
	b _08096056
_0809604C:
	movs r2, #3
	b _08096056
_08096050:
	movs r2, #4
	b _08096056
_08096054:
	movs r2, #5
_08096056:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	thumb_func_end sub_08095FC8

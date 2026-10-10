	thumb_func_start sub_08021D00
sub_08021D00: @ 0x08021D00
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	subs r0, #1
	cmp r0, #6
	bhi _08021D78
	lsls r0, r0, #2
	ldr r1, _08021D1C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08021D1C: .4byte _08021D20
_08021D20:
	.4byte _08021D3C
_08021D24: .4byte _08021D40
_08021D28: .4byte _08021D44
_08021D2C: .4byte _08021D48
_08021D30: .4byte _08021D4C
_08021D34: .4byte _08021D50
_08021D38: .4byte _08021D50
_08021D3C:
	ldrh r1, [r2, #0]
	b _08021D52
_08021D40:
	ldrh r1, [r2, #2]
	b _08021D52
_08021D44:
	ldrh r1, [r2, #4]
	b _08021D52
_08021D48:
	ldrh r1, [r2, #6]
	b _08021D52
_08021D4C:
	ldrh r1, [r2, #8]
	b _08021D52
_08021D50:
	ldrh r1, [r2, #0xa]
_08021D52:
	ldr r0, _08021D80
	muls r0, r3, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r2, _08021D84
	adds r1, r1, r2
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08021D78
	movs r3, #1
_08021D78:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.2byte 0x0000
_08021D80: .4byte 0x00001388
_08021D84: .4byte 0x000009C4
	thumb_func_end sub_08021D00

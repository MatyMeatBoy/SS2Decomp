	thumb_func_start sub_08095F10
sub_08095F10: @ 0x08095F10
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, [r5, #0x14]
	lsls r3, r3, #8
	ldr r4, [r5, #0x18]
	lsls r4, r4, #8
	ldr r2, _08095F68
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r0, r0, #4
	asrs r3, r3, #0x10
	subs r0, r0, r3
	lsrs r1, r1, #0x14
	asrs r4, r4, #0x10
	subs r1, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _08095F6E
	cmp r2, #6
	bhi _08095F6C
	adds r2, #1
	b _08095F6E
	.2byte 0x0000
_08095F68: .4byte gUnk_03003CE0
_08095F6C:
	movs r2, #0
_08095F6E:
	cmp r2, #7
	bhi _08095FC0
	lsls r0, r2, #2
	ldr r1, _08095F7C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08095F7C: .4byte _08095F80
_08095F80:
	.4byte _08095FA0
_08095F84: .4byte _08095FA4
_08095F88: .4byte _08095FA8
_08095F8C: .4byte _08095FAC
_08095F90: .4byte _08095FB0
_08095F94: .4byte _08095FB4
_08095F98: .4byte _08095FB8
_08095F9C: .4byte _08095FBC
_08095FA0:
	movs r0, #6
	b _08095FBE
_08095FA4:
	movs r0, #7
	b _08095FBE
_08095FA8:
	movs r0, #0
	b _08095FBE
_08095FAC:
	movs r0, #1
	b _08095FBE
_08095FB0:
	movs r0, #2
	b _08095FBE
_08095FB4:
	movs r0, #3
	b _08095FBE
_08095FB8:
	movs r0, #4
	b _08095FBE
_08095FBC:
	movs r0, #5
_08095FBE:
	strh r0, [r5, #8]
_08095FC0:
	ldrb r0, [r5, #8]
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08095F10

	thumb_func_start sub_08057FBC
sub_08057FBC: @ 0x08057FBC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _08057FFC
	ldr r0, _08057FF0
	ldr r0, [r0, #0]
	ldr r3, _08057FF4
	adds r1, r0, r3
	movs r3, #0
_08057FD4:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08057FF8
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08057FD4
	bl sub_080003F0
	movs r0, #0
_08057FE8:
	cmp r0, #0
	beq _0805803E
	adds r0, #0x42
	b _0805803C
_08057FF0: .4byte gUnk_03005CF4
_08057FF4: .4byte 0x000007A4
_08057FF8:
	adds r0, r1, #0
	b _08057FE8
_08057FFC:
	cmp r2, #0
	beq _08058028
	subs r2, #1
	cmp r2, #4
	bhi _0805803E
	ldr r1, _08058024
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	bl sub_08019EB8
	b _0805803E
	.2byte 0x0000
_08058024: .4byte gUnk_030056F4
_08058028:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08058044
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_0805803C:
	strh r4, [r0, #0]
_0805803E:
	pop {r4}
	pop {r0}
	bx r0
_08058044: .4byte gUnk_03003CE0
	thumb_func_end sub_08057FBC

	thumb_func_start sub_0808FC50
sub_0808FC50: @ 0x0808FC50
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _0808FC78
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808FC84
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808FC7C
	ldr r1, _0808FC80
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808FCF4
	.2byte 0x0000
_0808FC78: .4byte gUnk_03005CF4
_0808FC7C: .4byte sub_080B4C34
_0808FC80: .4byte sub_080B6324
_0808FC84:
	bl sub_08056E90
	cmp r0, #0
	beq _0808FCF4
	bl sub_080B6360
	movs r0, #0
	movs r1, #2
	bl sub_08056FB8
	movs r0, #0xb9
	lsls r0, r0, #1
	bl sub_080586B4
	bl sub_08056E78
	ldr r1, [r7, #0]
	movs r6, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	bl sub_0800CDAC
	ldr r0, _0808FD08
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	bl sub_08057BD0
	movs r0, #3
	movs r1, #0xa
	bl sub_08057B2C
	bl sub_080020F4
	ldr r5, _0808FD0C
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	strh r6, [r0, #0x20]
	ldr r0, [r7, #0]
	strh r6, [r0, #0x10]
	movs r1, #1
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x24]
_0808FCF4:
	bl sub_08056E50
	cmp r0, #0
	beq _0808FD7E
	bl sub_0805795C
	bl sub_080169C8
	b _0808FD14
	.2byte 0x0000
_0808FD08: .4byte gUnk_03003170
_0808FD0C: .4byte gUnk_03003CE0
_0808FD10:
	bl sub_080003F0
_0808FD14:
	bl sub_080B6068
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808FD10
	bl sub_08058790
	movs r0, #0xb9
	lsls r0, r0, #1
	bl sub_08058688
	movs r4, #0
	b _0808FD36
_0808FD2E:
	ldr r0, _0808FD5C
	bl sub_08057624
	adds r4, #1
_0808FD36:
	cmp r4, #0x16
	bhi _0808FD4E
	ldr r1, _0808FD60
	adds r0, r4, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	bl sub_080889D4
	bl sub_080021A8
	cmp r0, #0
	beq _0808FD2E
_0808FD4E:
	bl sub_08002204
	cmp r0, #0
	beq _0808FD6A
	bl sub_08067DC8
	b _0808FD6A
_0808FD5C: .4byte 0x000001A7
_0808FD60: .4byte 0x00000483
_0808FD64:
	movs r0, #1
	bl sub_08057624
_0808FD6A:
	bl sub_08056E90
	cmp r0, #0
	bne _0808FD7A
	bl sub_080021A8
	cmp r0, #0
	beq _0808FD64
_0808FD7A:
	bl sub_08056E38
_0808FD7E:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0808FC50

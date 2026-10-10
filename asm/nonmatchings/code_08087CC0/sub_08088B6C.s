	thumb_func_start sub_08088B6C
sub_08088B6C: @ 0x08088B6C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08088BCC
	adds r3, r1, r0
	movs r2, #1
	movs r5, #0
_08088B84:
	ldr r0, _08088BD0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r6, r0
	lsls r1, r2, #3
	adds r4, r0, r1
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r4, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _08088BAA
	negs r0, r0
_08088BAA:
	cmp r0, #1
	bgt _08088C14
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08088C14
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08088BD8
_08088BCC: .4byte gUnk_03003CE0
_08088BD0: .4byte gUnk_03005CF4
_08088BD4:
	bl sub_080003F0
_08088BD8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08088BD4
	bl sub_0800BB40
	ldr r0, _08088C08
	ldr r1, [r0, #0]
	strh r7, [r1, #0x36]
	ldrh r0, [r4, #4]
	strh r0, [r1, #2]
	ldr r0, _08088C0C
	adds r3, r1, r0
	ldr r2, _08088C10
	ldrh r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x1c]
	movs r0, #1
	b _08088C1C
	.2byte 0x0000
_08088C08: .4byte gUnk_03005CF4
_08088C0C: .4byte 0x0000071C
_08088C10: .4byte gUnk_084F0AC0
_08088C14:
	adds r2, #1
	cmp r2, #3
	bls _08088B84
	movs r0, #0
_08088C1C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08088B6C

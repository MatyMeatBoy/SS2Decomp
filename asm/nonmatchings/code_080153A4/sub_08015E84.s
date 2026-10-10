	thumb_func_start sub_08015E84
sub_08015E84: @ 0x08015E84
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	adds r1, #0x6c
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	movs r4, #7
	ldr r2, _08015EC0
	lsls r6, r1, #1
	adds r2, #0xe
	adds r5, r0, #0
	adds r5, #0xc2
_08015E9E:
	ldrh r0, [r2, #0]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08015EAC
	movs r3, #0
_08015EAC:
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _08015EC4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	b _08015ECE
	.2byte 0x0000
_08015EC0: .4byte gUnk_0847ACE8
_08015EC4:
	subs r2, #2
	subs r4, #1
	cmp r4, #0
	bge _08015E9E
	movs r0, #0
_08015ECE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08015E84

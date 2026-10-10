	thumb_func_start sub_08015E3C
sub_08015E3C: @ 0x08015E3C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x6c
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #2
	adds r0, r0, r2
	ldr r2, _08015E80
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r0, #1
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	bge _08015E60
	movs r3, #0
_08015E60:
	adds r2, r4, #0
	adds r2, #0xc2
	ldrh r1, [r2, #0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _08015E78
	movs r0, #0
	strh r0, [r2, #0]
_08015E78:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08015E80: .4byte gUnk_0847ACE8
	thumb_func_end sub_08015E3C

	thumb_func_start sub_08096060
sub_08096060: @ 0x08096060
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	ldr r4, [r5, #0x18]
	lsls r4, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	asrs r4, r4, #0x10
	subs r2, r2, r4
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r7, #0
	muls r0, r7, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	mov r8, r1
	cmp r4, r0
	ble _080960AA
	movs r0, #0
	mov r8, r0
_080960AA:
	adds r0, r7, #0
	adds r1, r6, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080960CA
	cmp r2, #6
	bhi _080960C8
	adds r2, #1
	b _080960CA
_080960C8:
	movs r2, #0
_080960CA:
	cmp r2, #7
	bhi _0809613C
	lsls r0, r2, #2
	ldr r1, _080960D8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080960D8: .4byte _080960DC
_080960DC:
	.4byte _080960FC
_080960E0: .4byte _08096104
_080960E4: .4byte _0809610C
_080960E8: .4byte _08096114
_080960EC: .4byte _0809611C
_080960F0: .4byte _08096124
_080960F4: .4byte _0809612C
_080960F8: .4byte _08096134
_080960FC:
	movs r0, #6
	strh r0, [r5, #8]
	movs r0, #0x10
	b _0809613A
_08096104:
	movs r0, #7
	strh r0, [r5, #8]
	movs r0, #0x90
	b _0809613A
_0809610C:
	movs r0, #0
	strh r0, [r5, #8]
	movs r0, #0x80
	b _0809613A
_08096114:
	movs r0, #1
	strh r0, [r5, #8]
	movs r0, #0xa0
	b _0809613A
_0809611C:
	movs r0, #2
	strh r0, [r5, #8]
	movs r0, #0x20
	b _0809613A
_08096124:
	movs r0, #3
	strh r0, [r5, #8]
	movs r0, #0x60
	b _0809613A
_0809612C:
	movs r0, #4
	strh r0, [r5, #8]
	movs r0, #0x40
	b _0809613A
_08096134:
	movs r0, #5
	strh r0, [r5, #8]
	movs r0, #0x50
_0809613A:
	strh r0, [r5, #4]
_0809613C:
	movs r0, #0
	strh r0, [r5, #6]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r1, [r5, #0x20]
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08096060

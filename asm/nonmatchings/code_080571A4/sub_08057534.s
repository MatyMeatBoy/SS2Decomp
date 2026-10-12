	thumb_func_start sub_08057534
sub_08057534: @ 0x08057534
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _08057554
	ldr r0, [r0, #0]
	ldr r2, _08057558
	adds r1, r0, r2
	movs r2, #0
_0805754A:
	ldr r0, [r1, #0]
	cmp r0, r3
	bne _0805755C
	adds r2, r1, #0
	b _0805756A
_08057554: .4byte gUnk_03005CF4
_08057558: .4byte 0x000007A4
_0805755C:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0805754A
	bl sub_080003F0
	movs r2, #0
_0805756A:
	cmp r2, #0
	beq _0805757A
	strh r5, [r2, #0x18]
	strh r4, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0805757A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08057534

	thumb_func_start sub_0800D164
sub_0800D164: @ 0x0800D164
	push {r4, r5, lr}
	ldr r5, _0800D16C
	movs r4, #1
	b _0800D174
_0800D16C: .4byte gUnk_03003478
_0800D170:
	bl sub_080003F0
_0800D174:
	bl sub_08056E90
	cmp r0, #0
	bne _0800D186
	ldr r0, [r5, #0]
	lsrs r0, r0, #5
	ands r0, r4
	cmp r0, #0
	bne _0800D170
_0800D186:
	ldr r0, [r5, #0]
	lsrs r0, r0, #5
	ands r0, r4
	cmp r0, #0
	beq _0800D1A4
	movs r0, #0
	ldr r1, _0800D19C
	bl sub_08057328
	b _0800D1A4
	.2byte 0x0000
_0800D19C: .4byte sub_080277E0
_0800D1A0:
	bl sub_080003F0
_0800D1A4:
	bl sub_08056E90
	cmp r0, #0
	bne _0800D1A0
	b _0800D174
	thumb_func_end sub_0800D164

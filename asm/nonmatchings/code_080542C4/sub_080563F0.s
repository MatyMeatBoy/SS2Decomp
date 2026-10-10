	thumb_func_start sub_080563F0
sub_080563F0: @ 0x080563F0
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08056434
	bl sub_0801AB24
	cmp r0, #1
	beq _08056418
	cmp r0, #1
	bgt _0805640C
	cmp r0, #0
	beq _08056412
	b _0805642C
_0805640C:
	cmp r0, #2
	beq _08056420
	b _0805642C
_08056412:
	bl sub_080576A8
	b _0805642C
_08056418:
	movs r0, #6
	bl sub_0801AB50
	b _0805642C
_08056420:
	movs r0, #6
	bl sub_0801AB90
	b _0805642C
_08056428:
	bl sub_080003F0
_0805642C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08056428
_08056434:
	movs r1, #0xb
	ldr r0, _08056484
	str r1, [r0, #0]
	ldr r0, _08056488
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805644C
	movs r0, #0xb
	bl sub_08006CB4
_0805644C:
	ldr r0, _0805648C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08056490
	movs r6, #1
	movs r4, #0
_08056458:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0805646C
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0805646C
	strh r4, [r2, #0xc]
_0805646C:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08056458
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08056484: .4byte gUnk_03005CF8
_08056488: .4byte gUnk_030027D0
_0805648C: .4byte gUnk_030056F4
_08056490: .4byte gUnk_030056FC
	thumb_func_end sub_080563F0

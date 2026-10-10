	thumb_func_start sub_080558D0
sub_080558D0: @ 0x080558D0
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08055914
	bl sub_0801AB24
	cmp r0, #1
	beq _080558F8
	cmp r0, #1
	bgt _080558EC
	cmp r0, #0
	beq _080558F2
	b _0805590C
_080558EC:
	cmp r0, #2
	beq _08055900
	b _0805590C
_080558F2:
	bl sub_080576A8
	b _0805590C
_080558F8:
	movs r0, #6
	bl sub_0801AB50
	b _0805590C
_08055900:
	movs r0, #6
	bl sub_0801AB90
	b _0805590C
_08055908:
	bl sub_080003F0
_0805590C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08055908
_08055914:
	movs r1, #0xb
	ldr r0, _08055964
	str r1, [r0, #0]
	ldr r0, _08055968
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805592C
	movs r0, #0xb
	bl sub_08006CB4
_0805592C:
	ldr r0, _0805596C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08055970
	movs r6, #1
	movs r4, #0
_08055938:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0805594C
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0805594C
	strh r4, [r2, #0xc]
_0805594C:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08055938
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08055964: .4byte gUnk_03005CF8
_08055968: .4byte gUnk_030027D0
_0805596C: .4byte gUnk_030056F4
_08055970: .4byte gUnk_030056FC
	thumb_func_end sub_080558D0

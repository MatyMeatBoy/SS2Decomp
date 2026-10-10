	thumb_func_start sub_08057254
sub_08057254: @ 0x08057254
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0
	ldr r1, _08057290
	ldr r2, [r1, #0]
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r2, r2, r0
_0805726A:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _0805727C
	movs r3, #1
_0805727C:
	cmp r3, #0
	bne _0805728C
	movs r3, #0
	cmp r0, #1
	bne _08057288
	movs r3, #1
_08057288:
	cmp r3, #0
	beq _08057294
_0805728C:
	movs r0, #0
	b _0805729C
_08057290: .4byte gUnk_03005CF4
_08057294:
	adds r4, #1
	cmp r4, #4
	bls _0805726A
	movs r0, #1
_0805729C:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08057254

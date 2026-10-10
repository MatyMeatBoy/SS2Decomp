	thumb_func_start sub_0805EE6C
sub_0805EE6C: @ 0x0805EE6C
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0805EED4
	ldr r1, [r4, #0x28]
	movs r3, #0
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r2, [r0, #0]
	cmp r2, #3
	bne _0805EE84
	movs r3, #1
_0805EE84:
	cmp r3, #0
	beq _0805EEC4
	adds r3, r1, #0
	ldr r0, _0805EEC0
	ldrb r0, [r0, #0]
	adds r1, #0x31
	ldrb r1, [r1, #0]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805EEBA
	cmp r2, #1
	beq _0805EEAC
	cmp r2, #3
	beq _0805EEAC
	cmp r2, #4
	beq _0805EEAC
	cmp r2, #2
	bne _0805EEBA
_0805EEAC:
	adds r1, r3, #0
	adds r1, #0x30
	movs r0, #4
	strb r0, [r1, #0]
	movs r0, #0xdd
	bl sub_0805865C
_0805EEBA:
	movs r0, #7
	str r0, [r4, #0x74]
	b _0805EED4
_0805EEC0: .4byte gUnk_03005D70
_0805EEC4:
	movs r0, #0
	cmp r2, #0
	bne _0805EECC
	movs r0, #1
_0805EECC:
	cmp r0, #0
	bne _0805EED4
	movs r0, #0
	b _0805EED6
_0805EED4:
	movs r0, #1
_0805EED6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0805EE6C

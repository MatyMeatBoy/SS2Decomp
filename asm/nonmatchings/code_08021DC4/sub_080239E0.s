	thumb_func_start sub_080239E0
sub_080239E0: @ 0x080239E0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0
	movs r5, #0
	movs r4, #0
	ldr r1, _08023A30
	ldr r2, [r1, #0]
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r2, r2, r0
_080239FA:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0
	adds r0, r0, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08023A0C
	movs r3, #1
_08023A0C:
	cmp r3, #0
	bne _08023A12
	adds r5, #1
_08023A12:
	movs r3, #0
	cmp r0, #2
	bne _08023A1A
	movs r3, #1
_08023A1A:
	cmp r3, #0
	beq _08023A20
	adds r6, #1
_08023A20:
	adds r4, #1
	cmp r4, #4
	bls _080239FA
	cmp r5, r6
	beq _08023A34
	movs r0, #0
	b _08023A36
	.2byte 0x0000
_08023A30: .4byte gUnk_03005CF4
_08023A34:
	movs r0, #1
_08023A36:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080239E0

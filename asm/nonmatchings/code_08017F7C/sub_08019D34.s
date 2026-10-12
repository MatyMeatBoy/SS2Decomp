	thumb_func_start sub_08019D34
sub_08019D34: @ 0x08019D34
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08019D44
	b _08019D6C
_08019D40:
	movs r0, #1
	b _08019D6E
_08019D44:
	ldr r0, _08019D74
	ldr r2, [r0, #0]
	movs r1, #0
	ldr r0, _08019D78
	movs r6, #1
	ldr r4, [r0, #0]
	movs r5, #0xb8
	lsls r5, r5, #2
_08019D54:
	adds r0, r6, #0
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08019D64
	ldrh r0, [r2, #2]
	cmp r0, r3
	beq _08019D40
_08019D64:
	adds r1, #1
	adds r2, r2, r5
	cmp r1, #4
	bls _08019D54
_08019D6C:
	movs r0, #0
_08019D6E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08019D74: .4byte gUnk_030056F4
_08019D78: .4byte gUnk_030056FC
	thumb_func_end sub_08019D34

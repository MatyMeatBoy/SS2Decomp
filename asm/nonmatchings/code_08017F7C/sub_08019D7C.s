	thumb_func_start sub_08019D7C
sub_08019D7C: @ 0x08019D7C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r1, #0
	ldr r0, _08019DC0
	ldr r5, [r0, #0]
	movs r4, #0x80
	lsls r4, r4, #0xb
	movs r3, #0
_08019D90:
	movs r0, #1
	lsls r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08019DC8
	ldr r2, _08019DC4
	adds r0, r3, r2
	ldr r0, [r0, #0]
	cmp r0, r7
	bne _08019DC8
	adds r0, r2, #4
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, r6
	bne _08019DC8
	adds r0, r2, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08019DC8
	lsrs r0, r4, #0x10
	b _08019DD8
	.2byte 0x0000
_08019DC0: .4byte gUnk_030056F8
_08019DC4: .4byte gUnk_03005700
_08019DC8:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r3, #0xc
	adds r1, #1
	cmp r1, #2
	bls _08019D90
	subs r0, #1
_08019DD8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08019D7C

	thumb_func_start sub_08019BF8
sub_08019BF8: @ 0x08019BF8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08019C24
	ldr r1, [r0, #0]
	movs r2, #0
	ldr r0, _08019C28
	movs r6, #1
	ldr r3, [r0, #0]
	movs r5, #0xb8
	lsls r5, r5, #2
_08019C0E:
	adds r0, r6, #0
	lsls r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08019C2C
	ldrh r0, [r1, #2]
	cmp r0, r4
	bne _08019C2C
	adds r0, r1, #0
	b _08019C36
	.2byte 0x0000
_08019C24: .4byte gUnk_030056F4
_08019C28: .4byte gUnk_030056FC
_08019C2C:
	adds r2, #1
	adds r1, r1, r5
	cmp r2, #4
	bls _08019C0E
	movs r0, #0
_08019C36:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08019BF8

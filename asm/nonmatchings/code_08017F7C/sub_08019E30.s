	thumb_func_start sub_08019E30
sub_08019E30: @ 0x08019E30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08019E6C
	ldr r3, [r0, #0]
	movs r4, #0
	movs r2, #0
	ldr r0, _08019E70
	movs r1, #1
	mov ip, r1
	ldr r5, [r0, #0]
	movs r7, #0xb8
	lsls r7, r7, #2
_08019E48:
	mov r1, ip
	lsls r1, r2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08019E5C
	ldr r0, [r3, #0x2c]
	cmp r0, r6
	bne _08019E5C
	orrs r4, r1
_08019E5C:
	adds r2, #1
	adds r3, r3, r7
	cmp r2, #4
	bls _08019E48
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08019E6C: .4byte gUnk_030056F4
_08019E70: .4byte gUnk_030056FC
	thumb_func_end sub_08019E30

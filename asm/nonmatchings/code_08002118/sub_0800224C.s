	thumb_func_start sub_0800224C
sub_0800224C: @ 0x0800224C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08002290
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800228A
	ldr r0, _08002294
	ldr r1, [r0, #0]
	lsrs r5, r1, #8
	movs r1, #0xf
	ands r5, r1
	adds r7, r0, #0
	movs r6, #1
_08002268:
	bl sub_080003F0
	movs r3, #0
	movs r2, #0
	ldr r4, [r7, #0]
_08002272:
	adds r1, r6, #0
	lsls r1, r2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08002280
	orrs r3, r1
_08002280:
	adds r2, #1
	cmp r2, #3
	bls _08002272
	cmp r3, r5
	bne _08002268
_0800228A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08002290: .4byte gUnk_030027D0
_08002294: .4byte gUnk_03002730
	thumb_func_end sub_0800224C

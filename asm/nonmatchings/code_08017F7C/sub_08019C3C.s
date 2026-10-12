	thumb_func_start sub_08019C3C
sub_08019C3C: @ 0x08019C3C
	push {r4, r5, r6, lr}
	ldr r0, _08019C78
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _08019C84
	ldr r0, _08019C7C
	ldr r0, [r0, #0]
	movs r3, #0
	movs r6, #1
	adds r4, r1, #0
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r2, r0, #0
	adds r2, #0x4a
_08019C58:
	adds r0, r6, #0
	lsls r0, r3
	ands r0, r4
	cmp r0, #0
	beq _08019C6E
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #0]
	subs r0, r0, r1
	cmp r0, #0
	bgt _08019C80
_08019C6E:
	adds r3, #1
	adds r2, r2, r5
	cmp r3, #4
	bls _08019C58
	b _08019C84
_08019C78: .4byte gUnk_030056FC
_08019C7C: .4byte gUnk_030056F4
_08019C80:
	movs r0, #1
	b _08019C86
_08019C84:
	movs r0, #0
_08019C86:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08019C3C

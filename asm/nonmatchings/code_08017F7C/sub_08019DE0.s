	thumb_func_start sub_08019DE0
sub_08019DE0: @ 0x08019DE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08019E08
	ldr r2, [r0, #0]
	movs r1, #0
	ldr r0, _08019E0C
	movs r6, #1
	ldr r3, [r0, #0]
	movs r5, #0xb8
	lsls r5, r5, #2
_08019DF4:
	adds r0, r6, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08019E10
	ldr r0, [r2, #0x2c]
	cmp r0, r4
	bne _08019E10
	movs r0, #1
	b _08019E1A
_08019E08: .4byte gUnk_030056F4
_08019E0C: .4byte gUnk_030056FC
_08019E10:
	adds r1, #1
	adds r2, r2, r5
	cmp r1, #4
	bls _08019DF4
	movs r0, #0
_08019E1A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08019DE0

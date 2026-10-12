	thumb_func_start sub_08019E74
sub_08019E74: @ 0x08019E74
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r2, #0
	ldr r0, _08019EB0
	ldrh r5, [r0, #0]
	movs r3, #1
	ldr r7, _08019EB4
_08019E84:
	adds r0, r5, #0
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08019EA0
	ldr r0, [r7, #0]
	lsls r1, r2, #3
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _08019EA0
	adds r0, r3, #0
	lsls r0, r2
	orrs r4, r0
_08019EA0:
	adds r2, #1
	cmp r2, #1
	bls _08019E84
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08019EB0: .4byte gUnk_03005724
_08019EB4: .4byte gUnk_030042E8
	thumb_func_end sub_08019E74

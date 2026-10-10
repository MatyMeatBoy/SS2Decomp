	thumb_func_start sub_08019EB8
sub_08019EB8: @ 0x08019EB8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08019ED0
	ldr r3, [r0, #0]
	movs r4, #0
	ldr r2, _08019ED4
	movs r1, #1
	b _08019EE8
	.2byte 0x0000
_08019ED0: .4byte gUnk_030056F4
_08019ED4: .4byte gUnk_030056FC
_08019ED8:
	adds r4, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r3, r3, r0
	cmp r4, #4
	bhi _08019EFC
	movs r1, #1
	lsls r1, r4
_08019EE8:
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08019ED8
	ldrh r0, [r3, #2]
	cmp r0, r5
	bne _08019ED8
	adds r0, r3, #0
	adds r0, #0x88
	strh r6, [r0, #0]
_08019EFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08019EB8

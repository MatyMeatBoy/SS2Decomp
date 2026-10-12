	thumb_func_start sub_08019CE8
sub_08019CE8: @ 0x08019CE8
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x5c
	movs r0, #0x4a
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0, #0]
	ldr r0, _08019D28
	ands r0, r1
	ldrh r1, [r2, #0]
	subs r1, r1, r0
	movs r4, #0
	strh r1, [r2, #0]
	mov r1, ip
	strh r4, [r1, #0]
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08019D1E
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08019D2C
_08019D1E:
	movs r0, #0xb
	strh r0, [r3, #0xc]
	strh r4, [r2, #0]
	movs r0, #1
	b _08019D2E
_08019D28: .4byte 0x00007FFF
_08019D2C:
	movs r0, #0
_08019D2E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08019CE8

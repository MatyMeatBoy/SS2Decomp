	thumb_func_start sub_080B8080
sub_080B8080: @ 0x080B8080
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B80A4
	cmp r3, r0
	bne _080B809C
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080B809C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B80A4: .4byte 0x68736D53
	thumb_func_end sub_080B8080

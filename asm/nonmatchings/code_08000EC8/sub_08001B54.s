	thumb_func_start sub_08001B54
sub_08001B54: @ 0x08001B54
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08001B68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08001B6C
	movs r0, #1
	b _08001B72
	.2byte 0x0000
_08001B68: .4byte gUnk_03000018
_08001B6C:
	adds r0, r2, #0
	bl sub_080B88F8
_08001B72:
	pop {r1}
	bx r1
	thumb_func_end sub_08001B54

	thumb_func_start sub_080B77A0
sub_080B77A0: @ 0x080B77A0
	push {lr}
	sub sp, #4
	ldr r0, _080B77DC
	ldr r2, [r0, #0]
	ldr r1, [r2, #0]
	ldr r3, _080B77E0
	adds r0, r1, r3
	cmp r0, #1
	bhi _080B77D4
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2, #0]
	ldr r0, _080B77E4
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #0xc
	strh r1, [r0, #0]
	movs r0, #0
	str r0, [sp, #0]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080B77E8
	mov r0, sp
	bl sub_080B8578
_080B77D4:
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
_080B77DC: .4byte gUnk_03007FF0
_080B77E0: .4byte 0x978C92AD
_080B77E4: .4byte 0x040000C6
_080B77E8: .4byte 0x05000318
	thumb_func_end sub_080B77A0

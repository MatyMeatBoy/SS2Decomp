	thumb_func_start sub_08058420
sub_08058420: @ 0x08058420
	push {lr}
	ldr r0, _08058438
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805843C
	movs r0, #1
	b _08058440
	.2byte 0x0000
_08058438: .4byte gUnk_03005CF4
_0805843C:
	bl sub_08019C3C
_08058440:
	pop {r1}
	bx r1
	thumb_func_end sub_08058420

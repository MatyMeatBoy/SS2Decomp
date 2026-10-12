	thumb_func_start sub_08058CC4
sub_08058CC4: @ 0x08058CC4
	push {lr}
	subs r0, #1
	cmp r0, #8
	bhi _08058D42
	lsls r0, r0, #2
	ldr r1, _08058CD8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08058CD8: .4byte _08058CDC
_08058CDC:
	.4byte _08058D18
_08058CE0: .4byte _08058D00
_08058CE4: .4byte _08058D42
_08058CE8: .4byte _08058D18
_08058CEC: .4byte _08058D18
_08058CF0: .4byte _08058D30
_08058CF4: .4byte _08058D18
_08058CF8: .4byte _08058D30
_08058CFC: .4byte _08058D18
_08058D00:
	ldr r0, _08058D14
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058D42
	movs r0, #0x14
	bl sub_08006D08
	b _08058D42
_08058D14: .4byte gUnk_030027D0
_08058D18:
	ldr r0, _08058D2C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058D42
	movs r0, #0x13
	bl sub_08006D08
	b _08058D42
_08058D2C: .4byte gUnk_030027D0
_08058D30:
	ldr r0, _08058D48
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058D42
	movs r0, #0x1b
	bl sub_08006D08
_08058D42:
	pop {r0}
	bx r0
	.2byte 0x0000
_08058D48: .4byte gUnk_030027D0
	thumb_func_end sub_08058CC4

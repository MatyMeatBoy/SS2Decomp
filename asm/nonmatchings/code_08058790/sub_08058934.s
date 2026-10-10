	thumb_func_start sub_08058934
sub_08058934: @ 0x08058934
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	bne _08058950
	ldr r0, _0805894C
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	adds r0, #0xd0
	b _0805895C
	.2byte 0x0000
_0805894C: .4byte gUnk_03005CF4
_08058950:
	ldr r0, _08058968
	ldr r0, [r0, #0]
	lsls r1, r4, #2
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
_0805895C:
	adds r0, r0, r1
	ldr r0, [r0, #0]
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_08058968: .4byte gUnk_03005CF4
	thumb_func_end sub_08058934

	thumb_func_start sub_0805A550
sub_0805A550: @ 0x0805A550
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0805A57C
	ldr r4, _0805A584
	ldr r0, [r4, #0]
	lsls r1, r3, #2
	ldr r5, _0805A588
	adds r0, r0, r5
	adds r0, r0, r1
	str r2, [r0, #0]
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08023ED8
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
_0805A57C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A584: .4byte gUnk_03005CF4
_0805A588: .4byte 0x00000724
	thumb_func_end sub_0805A550

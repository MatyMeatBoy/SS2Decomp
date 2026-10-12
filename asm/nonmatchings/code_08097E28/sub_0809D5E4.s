	thumb_func_start sub_0809D5E4
sub_0809D5E4: @ 0x0809D5E4
	push {r4, r5, lr}
	ldr r0, _0809D61C
	ldr r4, [r0, #0]
	movs r0, #0xe6
	bl sub_0805867C
	movs r5, #0
_0809D5F2:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0809D602
	adds r0, r4, #0
	bl sub_080003A8
_0809D602:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #7
	bls _0809D5F2
	movs r5, #0
	ldr r4, _0809D61C
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
_0809D61C: .4byte gUnk_030002F4
	thumb_func_end sub_0809D5E4

	thumb_func_start sub_0803E5D8
sub_0803E5D8: @ 0x0803E5D8
	push {r4, lr}
	bl sub_0800CE30
	cmp r0, #0
	beq _0803E5F4
	ldr r0, _0803E5EC
	ldr r0, [r0, #0]
	ldr r1, _0803E5F0
	b _0803E5FA
	.2byte 0x0000
_0803E5EC: .4byte gUnk_03005CF4
_0803E5F0: .4byte 0x000001C1
_0803E5F4:
	ldr r0, _0803E614
	ldr r0, [r0, #0]
	ldr r1, _0803E618
_0803E5FA:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _0803E620
	ldr r0, _0803E614
	ldr r0, [r0, #0]
	ldr r1, _0803E61C
	b _0803E626
_0803E614: .4byte gUnk_03005CF4
_0803E618: .4byte 0x000001B5
_0803E61C: .4byte 0x000001C1
_0803E620:
	ldr r0, _0803E630
	ldr r0, [r0, #0]
	ldr r1, _0803E634
_0803E626:
	adds r0, r0, r1
	strb r4, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
_0803E630: .4byte gUnk_03005CF4
_0803E634: .4byte 0x000001B5
	thumb_func_end sub_0803E5D8

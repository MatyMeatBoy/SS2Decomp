	thumb_func_start sub_08045AFC
sub_08045AFC: @ 0x08045AFC
	push {lr}
	bl sub_0800CE30
	cmp r0, #0
	beq _08045B18
	ldr r0, _08045B10
	ldr r0, [r0, #0]
	ldr r1, _08045B14
	b _08045B1E
	.2byte 0x0000
_08045B10: .4byte gUnk_03005CF4
_08045B14: .4byte 0x000001C3
_08045B18:
	ldr r0, _08045B38
	ldr r0, [r0, #0]
	ldr r1, _08045B3C
_08045B1E:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08045B5C
	bl sub_0800CE30
	cmp r0, #0
	beq _08045B44
	ldr r0, _08045B38
	ldr r0, [r0, #0]
	ldr r1, _08045B40
	b _08045B4A
_08045B38: .4byte gUnk_03005CF4
_08045B3C: .4byte 0x000001B7
_08045B40: .4byte 0x000001C5
_08045B44:
	ldr r0, _08045B60
	ldr r0, [r0, #0]
	ldr r1, _08045B64
_08045B4A:
	adds r2, r0, r1
	movs r0, #0x21
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	movs r0, #0
	bl sub_0805C7B8
_08045B5C:
	pop {r0}
	bx r0
_08045B60: .4byte gUnk_03005CF4
_08045B64: .4byte 0x000001B9
	thumb_func_end sub_08045AFC

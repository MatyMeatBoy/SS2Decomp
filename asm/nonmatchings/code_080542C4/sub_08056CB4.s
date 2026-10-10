	thumb_func_start sub_08056CB4
sub_08056CB4: @ 0x08056CB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080020F4
	cmp r0, #0
	bne _08056D1E
	bl sub_0800CE30
	cmp r0, #0
	beq _08056CD8
	ldr r0, _08056CD0
	ldr r0, [r0, #0]
	ldr r1, _08056CD4
	b _08056CDE
_08056CD0: .4byte gUnk_03005CF4
_08056CD4: .4byte 0x000001C1
_08056CD8:
	ldr r0, _08056D04
	ldr r0, [r0, #0]
	ldr r1, _08056D08
_08056CDE:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #7
	bgt _08056D1E
	adds r4, #8
	ldr r0, _08056D0C
	adds r1, r4, #0
	bl sub_08068070
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _08056D14
	ldr r0, _08056D04
	ldr r0, [r0, #0]
	ldr r1, _08056D10
	b _08056D1A
_08056D04: .4byte gUnk_03005CF4
_08056D08: .4byte 0x000001B5
_08056D0C: .4byte sub_0805A43C
_08056D10: .4byte 0x000001C1
_08056D14:
	ldr r0, _08056D24
	ldr r0, [r0, #0]
	ldr r1, _08056D28
_08056D1A:
	adds r0, r0, r1
	strb r4, [r0, #0]
_08056D1E:
	pop {r4}
	pop {r0}
	bx r0
_08056D24: .4byte gUnk_03005CF4
_08056D28: .4byte 0x000001B5
	thumb_func_end sub_08056CB4

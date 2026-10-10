	thumb_func_start sub_08052FE8
sub_08052FE8: @ 0x08052FE8
	push {r4, lr}
	bl sub_0800CE30
	cmp r0, #0
	beq _08053004
	ldr r0, _08052FFC
	ldr r0, [r0, #0]
	ldr r1, _08053000
	b _0805300A
	.2byte 0x0000
_08052FFC: .4byte gUnk_03005CF4
_08053000: .4byte 0x000001C7
_08053004:
	ldr r0, _08053050
	ldr r0, [r0, #0]
	ldr r1, _08053054
_0805300A:
	adds r2, r0, r1
	movs r0, #2
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	bl sub_0801DE60
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_0800CCCC
	movs r1, #0
	cmp r4, #6
	bne _0805302C
	movs r1, #1
_0805302C:
	movs r2, #0
	cmp r0, #0
	bne _08053034
	movs r2, #1
_08053034:
	ands r1, r2
	cmp r1, #0
	beq _08053042
	ldr r0, _08053058
	movs r1, #0x20
	bl sub_08068070
_08053042:
	ldr r0, _0805305C
	movs r1, #0
	bl sub_08068070
	pop {r4}
	pop {r0}
	bx r0
_08053050: .4byte gUnk_03005CF4
_08053054: .4byte 0x000001BB
_08053058: .4byte sub_0805990C
_0805305C: .4byte sub_0803E5D8
	thumb_func_end sub_08052FE8

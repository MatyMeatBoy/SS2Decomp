	thumb_func_start sub_08001130
sub_08001130: @ 0x08001130
	push {lr}
	ldr r0, _08001150
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0800113E
	bl _call_via_r0
_0800113E:
	ldr r0, _08001154
	movs r2, #4
	strh r2, [r0, #0]
	ldr r1, _08001158
	ldrh r0, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	pop {r0}
	bx r0
_08001150: .4byte gUnk_03000010
_08001154: .4byte 0x04000202
_08001158: .4byte gUnk_03007FF8
	thumb_func_end sub_08001130

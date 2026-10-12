	thumb_func_start sub_0801A6D4
sub_0801A6D4: @ 0x0801A6D4
	push {lr}
	cmp r0, #0
	beq _0801A6E0
	cmp r0, #1
	beq _0801A6E8
	b _0801A6F2
_0801A6E0:
	ldr r0, _0801A6E4
	b _0801A6EA
_0801A6E4: .4byte 0x00080006
_0801A6E8:
	ldr r0, _0801A704
_0801A6EA:
	ldr r1, _0801A708
	bl sub_08006EE0
	adds r1, r0, #0
_0801A6F2:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x19
	movs r2, #1
	bl sub_08000AF0
	pop {r0}
	bx r0
_0801A704: .4byte 0x0008004A
_0801A708: .4byte gUnk_08518938
	thumb_func_end sub_0801A6D4

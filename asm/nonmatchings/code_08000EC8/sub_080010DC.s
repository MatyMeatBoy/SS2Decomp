	thumb_func_start sub_080010DC
sub_080010DC: @ 0x080010DC
	push {lr}
	ldr r0, _080010FC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080010EA
	bl sub_080B8F24
_080010EA:
	ldr r0, _08001100
	movs r2, #2
	strh r2, [r0, #0]
	ldr r1, _08001104
	ldrh r0, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	pop {r0}
	bx r0
_080010FC: .4byte gUnk_03000014
_08001100: .4byte 0x04000202
_08001104: .4byte gUnk_03007FF8
	thumb_func_end sub_080010DC

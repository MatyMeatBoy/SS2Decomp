	thumb_func_start sub_08001180
sub_08001180: @ 0x08001180
	push {r4, lr}
	ldr r0, _080011D0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0800118E
	bl m4aSoundVSync
_0800118E:
	ldr r4, _080011D4
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080011AE
	ldr r0, _080011D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080011A2
	bl _call_via_r0
_080011A2:
	bl sub_08000B50
	bl sub_08001394
	movs r0, #0
	str r0, [r4, #0]
_080011AE:
	ldr r0, _080011D0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080011BA
	bl m4aSoundMain
_080011BA:
	ldr r0, _080011DC
	movs r2, #1
	strh r2, [r0, #0]
	ldr r1, _080011E0
	ldrh r0, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080011D0: .4byte gUnk_03002870
_080011D4: .4byte gUnk_03002350
_080011D8: .4byte gUnk_0300234C
_080011DC: .4byte 0x04000202
_080011E0: .4byte gUnk_03007FF8
	thumb_func_end sub_08001180

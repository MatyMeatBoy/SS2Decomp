	thumb_func_start sub_0809F934
sub_0809F934: @ 0x0809F934
	push {r4, lr}
	sub sp, #8
	ldr r4, _0809F994
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _0809F982
	bl sub_08000E48
	bl sub_0800CC18
	movs r0, #0
	bl sub_0800115C
	movs r0, #0
	bl sub_080011E4
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_080009C0
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r0, #2
	movs r1, #1
	bl sub_0800BD48
	ldr r0, [r4, #0]
	bl sub_080003A8
_0809F982:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0809F994: .4byte gUnk_03000318
	thumb_func_end sub_0809F934

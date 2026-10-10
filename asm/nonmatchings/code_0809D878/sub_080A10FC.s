	thumb_func_start sub_080A10FC
sub_080A10FC: @ 0x080A10FC
	push {r4, lr}
	ldr r4, _080A1158
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	bne _080A1112
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A1152
_080A1112:
	ldr r1, _080A115C
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, _080A1160
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _080A1164
	strb r1, [r0, #0]
	ldr r1, _080A1168
	movs r0, #0x14
	strb r0, [r1, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, [r4, #0]
	str r0, [r1, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, _080A116C
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x24]
	movs r0, #0x40
	str r0, [r1, #8]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000274
_080A1152:
	pop {r4}
	pop {r0}
	bx r0
_080A1158: .4byte gUnk_03000340
_080A115C: .4byte gUnk_0300033B
_080A1160: .4byte gUnk_0300033C
_080A1164: .4byte gUnk_03000339
_080A1168: .4byte gUnk_0300033A
_080A116C: .4byte sub_080A099C
	thumb_func_end sub_080A10FC

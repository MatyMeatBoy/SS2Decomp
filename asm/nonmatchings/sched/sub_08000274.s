	thumb_func_start sub_08000274
sub_08000274: @ 0x08000274
	push {r4, r5, r6, lr}
	push {r0, r1}
	bl sub_08000470
	adds r3, r0, #0
	pop {r0, r1}
	cmp r3, #1
	beq _080002D6
	ldr r4, [r0, #8]
	cmp r4, #0
	bne _0800028E
	adds r4, #1
	str r4, [r0, #8]
_0800028E:
	movs r6, #1
	str r6, [r0, #4]
	ldr r4, _080002D8
	ldr r5, [r4, #0]
_08000296:
	ldr r4, [r5, #8]
	ldr r6, [r0, #8]
	subs r4, r4, r6
	bpl _080002B4
	adds r4, r5, #0
	ldr r5, [r5, #0]
	cmp r5, #0
	beq _080002A8
	b _08000296
_080002A8:
	adds r5, r4, #0
	str r0, [r5, #0]
	movs r6, #0
	str r6, [r0, #0]
	str r5, [r0, #0x18]
	b _080002BE
_080002B4:
	ldr r6, [r5, #0x18]
	str r0, [r6, #0]
	str r6, [r0, #0x18]
	str r5, [r0, #0]
	str r0, [r5, #0x18]
_080002BE:
	ldr r4, _080002DC
	ldr r6, [r4, #0]
	adds r6, #1
	str r6, [r4, #0]
	ldr r4, [r0, #0x10]
	subs r4, #0x30
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r5, _080004AC
	str r5, [r4, #0x2c]
	str r4, [r0, #0x10]
	movs r0, #0
_080002D6:
	pop {r4, r5, r6, pc}
_080002D8: .4byte gUnk_03001240
_080002DC: .4byte gUnk_03001244
	.global _080002E0
_080002E0:
	ldr r0, _08000358
	mov r1, sp
	str r1, [r0, #0]
_080002E6:
	ldr r0, _0800034C
	ldr r1, [r0, #0]
	ldr r4, _08000350
	str r1, [r4, #0]
_080002EE:
	ldr r4, _08000350
	ldr r0, [r4, #0]
	ldr r1, [r0, #4]
	cmp r1, #1
	beq _08000302
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	cmp r0, #0
	beq _08000330
	b _080002EE
_08000302:
	movs r1, #2
	str r1, [r0, #4]
	ldr r1, [r0, #0x10]
	mov sp, r1
	ldr r3, [r0, #0xc]
	mov lr, r3
	pop {r0, r1, r2}
	mov r8, r0
	mov r9, r1
	mov sl, r2
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	pop {r3}
	push {lr}
	mov lr, r3
	pop {pc}
	.global _08000320
_08000320:
	ldr r4, _08000350
	ldr r4, [r4, #0]
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _080002EE
	movs r0, #3
	str r0, [r4, #4]
	b _080002EE
_08000330:
	bl sub_08001204
	ldr r4, _0800034C
	ldr r0, [r4, #0]
_08000338:
	ldr r1, [r0, #4]
	cmp r1, #4
	beq _08000342
	movs r1, #1
	str r1, [r0, #4]
_08000342:
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080002E6
	b _08000338
	.2byte 0x0000
_0800034C: .4byte gUnk_03001240
_08000350: .4byte gUnk_0300123C
	.4byte 0x04000006
_08000358: .4byte gUnk_03001248
	thumb_func_end sub_08000274

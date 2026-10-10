	thumb_func_start sub_08087CC0
sub_08087CC0: @ 0x08087CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08087D44
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0
	movs r1, #1
	bl sub_08000990
	movs r0, #0xe0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x88
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _08087D48
	ldr r0, [sp, #0]
	ands r0, r1
	ldr r1, _08087D4C
	orrs r0, r1
	str r0, [sp, #0]
	movs r0, #0
	mov r1, sp
	bl sub_08000AA8
	movs r0, #0xc9
	lsls r0, r0, #1
	bl sub_08058688
	bl sub_080576A8
	bl sub_08002164
	cmp r0, #2
	beq _08087D64
	cmp r0, #2
	bgt _08087D50
	cmp r0, #1
	beq _08087D5A
	b _08087D76
	.2byte 0x0000
_08087D44: .4byte gUnk_03001250
_08087D48: .4byte 0xFFFF0000
_08087D4C: .4byte 0x00001C08
_08087D50:
	cmp r0, #3
	beq _08087D6C
	cmp r0, #4
	beq _08087D74
	b _08087D76
_08087D5A:
	ldr r5, _08087D60
	b _08087D76
	.2byte 0x0000
_08087D60: .4byte 0x00000504
_08087D64:
	ldr r5, _08087D68
	b _08087D76
_08087D68: .4byte 0x00000505
_08087D6C:
	ldr r5, _08087D70
	b _08087D76
_08087D70: .4byte 0x00000506
_08087D74:
	ldr r5, _08088154
_08087D76:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	ldr r4, _08088158
	str r0, [r4, #0x20]
	ldr r7, _0808815C
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r6, #0xa
	str r6, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, _08088164
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087DB2
	bl _080887C2
_08087DB2:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa1
	lsls r1, r1, #3
	ldr r2, _08088168
	bl sub_08000274
	ldr r0, _0808816C
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087DE8
	bl _080887C2
_08087DE8:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088170
	ldr r2, _08088174
	bl sub_08000274
	ldr r0, _08088178
	bl sub_08088AA8
	ldr r0, _0808817C
	mov r8, r0
	bl sub_08000420
	ldr r1, _08088180
	mov sl, r1
	mov r0, sl
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087E2E
	bl _080887C2
_08087E2E:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088184
	ldr r2, _08088188
	bl sub_08000274
	ldr r0, _0808818C
	bl sub_08088AA8
	ldr r0, _08088190
	bl sub_08088AA8
	ldr r0, _08088194
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	ldr r0, _08088198
	mov r9, r0
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087E7C
	bl _080887C2
_08087E7C:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _0808819C
	ldr r2, _080881A0
	bl sub_08000274
	ldr r0, _080881A4
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	ldr r0, _080881A8
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087EBC
	bl _080887C2
_08087EBC:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881AC
	ldr r2, _08088164
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087EF0
	bl _080887C2
_08087EF0:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881B0
	ldr r2, _080881B4
	bl sub_08000274
	ldr r0, _080881B8
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	ldr r0, _080881BC
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087F30
	bl _080887C2
_08087F30:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881C0
	ldr r2, _08088174
	bl sub_08000274
	ldr r0, _080881C4
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	mov r0, sl
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087F70
	bl _080887C2
_08087F70:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881C8
	ldr r2, _08088164
	bl sub_08000274
	ldr r0, _080881CC
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087FB0
	bl _080887C2
_08087FB0:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa2
	lsls r1, r1, #3
	ldr r2, _080881D0
	bl sub_08000274
	ldr r0, _080881D4
	bl sub_08088AA8
	ldr r0, _080881D8
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	ldr r0, _080881DC
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08087FF6
	b _080887C2
_08087FF6:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881E0
	ldr r2, _08088188
	bl sub_08000274
	ldr r0, _080881E4
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	mov r0, r9
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088034
	b _080887C2
_08088034:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881E8
	ldr r2, _08088174
	bl sub_08000274
	ldr r0, _080881EC
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	mov r0, sl
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088072
	b _080887C2
_08088072:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881F0
	ldr r2, _08088188
	bl sub_08000274
	ldr r0, _080881F4
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	mov r0, r9
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080880B0
	b _080887C2
_080880B0:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080881F8
	ldr r2, _080881FC
	bl sub_08000274
	ldr r0, _08088200
	bl sub_08088AA8
	ldr r0, _08088204
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	movs r0, #0xfb
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080880F4
	b _080887C2
_080880F4:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088208
	ldr r2, _08088164
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088126
	b _080887C2
_08088126:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _08088160
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _0808820C
	ldr r2, _08088164
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	b _08088210
	.2byte 0x0000
_08088154: .4byte 0x00000507
_08088158: .4byte gUnk_030061B0
_0808815C: .4byte sub_08087A5C
_08088160: .4byte 0x00000BFC
_08088164: .4byte 0x000200F0
_08088168: .4byte 0x0002012C
_0808816C: .4byte 0x0000012D
_08088170: .4byte 0x00000509
_08088174: .4byte 0x000201E0
_08088178: .4byte gUnk_084ECF88
_0808817C: .4byte 0xF1FFF111
_08088180: .4byte 0x000001E1
_08088184: .4byte 0x0000050A
_08088188: .4byte 0x00020258
_0808818C: .4byte gUnk_084ECFE8
_08088190: .4byte gUnk_084ED048
_08088194: .4byte gUnk_084ED180
_08088198: .4byte 0x00000259
_0808819C: .4byte 0x0000050B
_080881A0: .4byte 0x00020294
_080881A4: .4byte gUnk_084ED1E0
_080881A8: .4byte 0x00000295
_080881AC: .4byte 0x0000050C
_080881B0: .4byte 0x0000050D
_080881B4: .4byte 0x000202EE
_080881B8: .4byte gUnk_084ED318
_080881BC: .4byte 0x000002EF
_080881C0: .4byte 0x0000050E
_080881C4: .4byte gUnk_084ED3D8
_080881C8: .4byte 0x0000050F
_080881CC: .4byte gUnk_084ED438
_080881D0: .4byte 0x00020154
_080881D4: .4byte gUnk_084ED498
_080881D8: .4byte gUnk_084ED4F8
_080881DC: .4byte 0x00000155
_080881E0: .4byte 0x00000511
_080881E4: .4byte gUnk_084ED528
_080881E8: .4byte 0x00000512
_080881EC: .4byte gUnk_084ED588
_080881F0: .4byte 0x00000513
_080881F4: .4byte gUnk_084ED5E8
_080881F8: .4byte 0x00000514
_080881FC: .4byte 0x000200FA
_08088200: .4byte gUnk_084ED648
_08088204: .4byte gUnk_084ED6A8
_08088208: .4byte 0x00000515
_0808820C: .4byte 0x00000516
_08088210:
	adds r5, r0, #0
	cmp r5, #0
	beq _08088218
	b _080887C2
_08088218:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080885EC
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _0808824A
	b _080887C2
_0808824A:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa3
	lsls r1, r1, #3
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _0808827E
	b _080887C2
_0808827E:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080885F4
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080882B0
	b _080887C2
_080882B0:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080885F8
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080882E2
	b _080887C2
_080882E2:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _080885FC
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088314
	b _080887C2
_08088314:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088600
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088346
	b _080887C2
_08088346:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088604
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088378
	b _080887C2
_08088378:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088608
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080883AA
	b _080887C2
_080883AA:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _0808860C
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080883DC
	b _080887C2
_080883DC:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa4
	lsls r1, r1, #3
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088410
	b _080887C2
_08088410:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088610
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088442
	b _080887C2
_08088442:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088614
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08088474
	b _080887C2
_08088474:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088618
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080884A6
	b _080887C2
_080884A6:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _0808861C
	ldr r2, _080885F0
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080884D8
	b _080887C2
_080884D8:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088620
	ldr r2, _08088624
	bl sub_08000274
	ldr r0, _08088628
	bl sub_08088AA8
	ldr r0, _0808862C
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	ldr r0, _08088630
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _0808851C
	b _080887C2
_0808851C:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088634
	ldr r2, _08088638
	bl sub_08000274
	ldr r0, _0808863C
	bl sub_08088AA8
	ldr r0, _08088640
	bl sub_08088AA8
	ldr r0, _08088644
	bl sub_08088AA8
	ldr r0, _08088648
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	mov r0, sl
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _0808856C
	b _080887C2
_0808856C:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _0808864C
	ldr r2, _08088624
	bl sub_08000274
	ldr r0, _08088650
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	ldr r0, _08088630
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080885AA
	b _080887C2
_080885AA:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	str r7, [r4, #0xc]
	ldr r1, _080885E8
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xa5
	lsls r1, r1, #3
	ldr r2, _08088638
	bl sub_08000274
	ldr r0, _08088654
	bl sub_08088AA8
	mov r0, r8
	bl sub_08000420
	mov r0, sl
	bl sub_08057624
	bl sub_080021A8
	cmp r0, #0
	b _08088658
	.2byte 0x0000
_080885E8: .4byte 0x00000BFC
_080885EC: .4byte 0x00000517
_080885F0: .4byte 0x000200F0
_080885F4: .4byte 0x00000519
_080885F8: .4byte 0x0000051A
_080885FC: .4byte 0x0000051B
_08088600: .4byte 0x0000051C
_08088604: .4byte 0x0000051D
_08088608: .4byte 0x0000051E
_0808860C: .4byte 0x0000051F
_08088610: .4byte 0x00000521
_08088614: .4byte 0x00000522
_08088618: .4byte 0x00000523
_0808861C: .4byte 0x00000524
_08088620: .4byte 0x00000525
_08088624: .4byte 0x0002012C
_08088628: .4byte gUnk_084ED708
_0808862C: .4byte gUnk_084ED828
_08088630: .4byte 0x0000012D
_08088634: .4byte 0x00000526
_08088638: .4byte 0x000201E0
_0808863C: .4byte gUnk_084ED948
_08088640: .4byte gUnk_084ED9A8
_08088644: .4byte gUnk_084EDA08
_08088648: .4byte gUnk_084EDA68
_0808864C: .4byte 0x00000527
_08088650: .4byte gUnk_084EDAC8
_08088654: .4byte gUnk_084EDB28
_08088658:
	beq _0808865C
	b _080887C2
_0808865C:
	movs r6, #0
	adds r5, r4, #0
_08088660:
	ldr r0, _08088740
	adds r4, r6, r0
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r5, #0x20]
	ldr r1, _08088744
	mov r8, r1
	str r1, [r5, #0xc]
	ldr r1, _08088748
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r7, #0xa
	str r7, [r5, #8]
	movs r0, #0
	str r0, [r5, #0x24]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, _0808874C
	bl sub_08000274
	movs r0, #0xf1
	bl sub_08057624
	bl sub_080021A8
	cmp r0, #0
	beq _0808869C
	b _080887C2
_0808869C:
	adds r6, #1
	cmp r6, #7
	bls _08088660
	movs r0, #0x78
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _080886B4
	b _080887C2
_080886B4:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	ldr r4, _08088750
	str r0, [r4, #0x20]
	mov r1, r8
	str r1, [r4, #0xc]
	ldr r1, _08088748
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r7, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088754
	ldr r2, _08088758
	bl sub_08000274
	ldr r0, _0808875C
	bl sub_08088AA8
	ldr r0, _08088760
	bl sub_08088AA8
	ldr r0, _08088764
	bl sub_08088AA8
	ldr r0, _08088768
	bl sub_08000420
	ldr r0, _0808876C
	bl sub_08057624
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	bne _080887C2
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	mov r1, r8
	str r1, [r4, #0xc]
	ldr r1, _08088748
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r7, [r4, #8]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	ldr r1, _08088770
	ldr r2, _08088774
	bl sub_08000274
	ldr r0, _08088778
	bl sub_08057624
	bl sub_080021A8
	cmp r0, #0
	bne _080887C2
	bl sub_0800D108
	bl sub_0800CB9C
	cmp r0, #0
	beq _080887A6
	b _08088780
	.2byte 0x0000
_08088740: .4byte 0x00000529
_08088744: .4byte sub_08087A5C
_08088748: .4byte 0x00000BFC
_0808874C: .4byte 0x000200F0
_08088750: .4byte gUnk_030061B0
_08088754: .4byte 0x00000531
_08088758: .4byte 0x0002021C
_0808875C: .4byte gUnk_084EDB88
_08088760: .4byte gUnk_084EDC18
_08088764: .4byte gUnk_084EDCA8
_08088768: .4byte 0xF1FFF111
_0808876C: .4byte 0x0000021D
_08088770: .4byte 0x00000532
_08088774: .4byte 0x00020258
_08088778: .4byte 0x00000259
_0808877C:
	bl sub_080003F0
_08088780:
	bl sub_08067C18
	cmp r0, #0
	beq _0808877C
	b _0808878E
_0808878A:
	bl sub_080003F0
_0808878E:
	bl sub_08067C08
	cmp r0, #0
	beq _0808878A
	bl sub_080021D4
	bl sub_08067BF8
	movs r0, #2
	bl sub_08061E44
	b _080887AC
_080887A6:
	movs r0, #1
	bl sub_08061E44
_080887AC:
	bl sub_080576C4
	movs r0, #0x1e
	bl sub_080586D0
	movs r0, #0x78
	bl sub_08057624
	movs r0, #0
	bl SoftReset
_080887C2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08087CC0

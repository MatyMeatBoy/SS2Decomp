	thumb_func_start sub_08084200
sub_08084200: @ 0x08084200
	push {r4, lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0]
	cmp r0, #9
	beq _0808420C
	b _08084414
_0808420C:
	ldrh r0, [r1, #0x10]
	cmp r0, #9
	beq _08084214
	b _08084414
_08084214:
	ldrh r0, [r1, #0x20]
	cmp r0, #9
	beq _0808421C
	b _08084414
_0808421C:
	ldrh r0, [r1, #2]
	adds r4, r0, #0
	cmp r4, #0
	bne _08084234
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _08084234
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _08084234
	movs r0, #1
	b _08084416
_08084234:
	cmp r4, #2
	bne _08084248
	ldrh r0, [r1, #0x12]
	cmp r0, #2
	bne _08084248
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _08084248
	movs r0, #2
	b _08084416
_08084248:
	cmp r4, #1
	bne _0808425C
	ldrh r0, [r1, #0x12]
	cmp r0, #1
	bne _0808425C
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _0808425C
	movs r0, #3
	b _08084416
_0808425C:
	adds r3, r4, #0
	cmp r3, #2
	bhi _0808427E
	ldrh r2, [r1, #0x12]
	cmp r2, #2
	bhi _0808427E
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bhi _0808427E
	cmp r3, r2
	beq _0808427E
	cmp r3, r0
	beq _0808427E
	cmp r2, r0
	beq _0808427E
	movs r0, #4
	b _08084416
_0808427E:
	cmp r4, #0
	bne _08084292
	ldrh r0, [r1, #0x12]
	cmp r0, #2
	bne _08084292
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _08084292
	movs r0, #5
	b _08084416
_08084292:
	cmp r4, #1
	bne _080842A6
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _080842A6
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _080842A6
	movs r0, #6
	b _08084416
_080842A6:
	cmp r4, #0
	bne _080842BA
	ldrh r0, [r1, #0x12]
	cmp r0, #1
	bne _080842BA
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _080842BA
	movs r0, #7
	b _08084416
_080842BA:
	cmp r4, #1
	bne _080842CE
	ldrh r0, [r1, #0x12]
	cmp r0, #2
	bne _080842CE
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _080842CE
	movs r0, #8
	b _08084416
_080842CE:
	cmp r4, #2
	bne _080842F8
	ldrh r0, [r1, #0x12]
	adds r2, r0, #0
	cmp r2, #1
	bne _080842E4
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _080842E4
	movs r0, #9
	b _08084416
_080842E4:
	cmp r4, #2
	bne _080842F8
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080842F8
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _080842F8
	movs r0, #0xa
	b _08084416
_080842F8:
	cmp r4, #0
	bne _0808430C
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _0808430C
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _0808430C
	movs r0, #0xb
	b _08084416
_0808430C:
	cmp r4, #1
	bne _08084320
	ldrh r0, [r1, #0x12]
	cmp r0, #1
	bne _08084320
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _08084320
	movs r0, #0xc
	b _08084416
_08084320:
	cmp r4, #0
	bne _08084334
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _08084334
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _08084334
	movs r0, #0xd
	b _08084416
_08084334:
	cmp r4, #1
	bne _08084348
	ldrh r0, [r1, #0x12]
	cmp r0, #1
	bne _08084348
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _08084348
	movs r0, #0xe
	b _08084416
_08084348:
	cmp r4, #2
	bne _08084388
	ldrh r0, [r1, #0x12]
	adds r2, r0, #0
	cmp r2, #2
	bne _0808435E
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _0808435E
	movs r0, #0xf
	b _08084416
_0808435E:
	cmp r4, #2
	bne _08084388
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _08084374
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _08084374
	movs r0, #0x10
	b _08084416
_08084374:
	cmp r4, #2
	bne _08084388
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _08084388
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _08084388
	movs r0, #0x11
	b _08084416
_08084388:
	cmp r4, #0
	bne _0808439C
	ldrh r0, [r1, #0x12]
	cmp r0, #1
	bne _0808439C
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _0808439C
	movs r0, #0x12
	b _08084416
_0808439C:
	cmp r4, #1
	bne _080843B0
	ldrh r0, [r1, #0x12]
	cmp r0, #0
	bne _080843B0
	ldrh r0, [r1, #0x22]
	cmp r0, #0
	bne _080843B0
	movs r0, #0x13
	b _08084416
_080843B0:
	cmp r4, #2
	bne _080843C4
	ldrh r0, [r1, #0x12]
	cmp r0, #1
	bne _080843C4
	ldrh r0, [r1, #0x22]
	cmp r0, #1
	bne _080843C4
	movs r0, #0x14
	b _08084416
_080843C4:
	cmp r4, #1
	bne _080843D8
	ldrh r0, [r1, #0x12]
	cmp r0, #2
	bne _080843D8
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _080843D8
	movs r0, #0x15
	b _08084416
_080843D8:
	cmp r4, #0
	bne _080843EC
	ldrh r0, [r1, #0x12]
	cmp r0, #2
	bne _080843EC
	ldrh r0, [r1, #0x22]
	cmp r0, #2
	bne _080843EC
	movs r0, #0x16
	b _08084416
_080843EC:
	cmp r4, #3
	bne _08084400
	ldrh r0, [r1, #0x12]
	cmp r0, #3
	bne _08084400
	ldrh r0, [r1, #0x22]
	cmp r0, #3
	bne _08084400
	movs r0, #0x17
	b _08084416
_08084400:
	cmp r4, #4
	bne _08084414
	ldrh r0, [r1, #0x12]
	cmp r0, #4
	bne _08084414
	ldrh r0, [r1, #0x22]
	cmp r0, #4
	bne _08084414
	movs r0, #0x18
	b _08084416
_08084414:
	movs r0, #0
_08084416:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08084200

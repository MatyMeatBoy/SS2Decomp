	thumb_func_start sub_08028368
sub_08028368: @ 0x08028368
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _080283B4
	ldr r1, [r3, #0]
	ldr r6, _080283B8
	adds r0, r1, r6
	ldr r0, [r0, #0]
	cmp r0, #0xa
	bhi _080283AC
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r1, _080283BC
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r1, [r3, #0]
	adds r0, r1, r6
	ldr r0, [r0, #0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r4, _080283C0
	adds r1, r1, r4
	strb r2, [r1, #0]
	ldr r1, [r3, #0]
	adds r2, r1, r6
	ldr r0, [r2, #0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r6, #4
	adds r1, r1, r6
	strh r5, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #1
	str r0, [r2, #0]
_080283AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080283B4: .4byte gUnk_03005CF4
_080283B8: .4byte 0x00001E4C
_080283BC: .4byte 0x00001E52
_080283C0: .4byte 0x00001E53
	thumb_func_end sub_08028368

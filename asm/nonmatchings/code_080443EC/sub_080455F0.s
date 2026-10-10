	thumb_func_start sub_080455F0
sub_080455F0: @ 0x080455F0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _08045608
	movs r6, #1
_080455F8:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045610
	ldr r0, [r7, #0]
	ldr r1, _0804560C
	b _08045614
	.2byte 0x0000
_08045608: .4byte gUnk_03005CF4
_0804560C: .4byte 0x000001C5
_08045610:
	ldr r0, [r7, #0]
	ldr r1, _08045630
_08045614:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #4
	ands r0, r6
	cmp r0, #0
	beq _08045634
	adds r0, r5, #0
	movs r1, #0x79
	movs r2, #0xc3
	lsls r2, r2, #1
	movs r3, #0
	bl sub_08028AAC
	b _08045640
_08045630: .4byte 0x000001B9
_08045634:
	ldr r2, _08045644
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
_08045640:
	movs r4, #1
	b _08045652
_08045644: .4byte 0x0000270F
_08045648:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080455F8
_08045652:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08045648
	b _080455F8
	thumb_func_end sub_080455F0

	thumb_func_start sub_08045764
sub_08045764: @ 0x08045764
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _08045774
	cmp r4, #1
	bne _08045772
	b _080458E4
_08045772:
	b _08045AF2
_08045774:
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _08045790
	ldr r0, _0804578C
	ldr r1, [r0, #0]
	adds r1, #0x80
	ldr r0, [r1, #0]
	orrs r0, r4
	str r0, [r1, #0]
	b _0804579A
_0804578C: .4byte gUnk_03005CF4
_08045790:
	ldr r0, _080457B4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x78]
	orrs r0, r4
	str r0, [r1, #0x78]
_0804579A:
	bl sub_0800CE30
	cmp r0, #0
	beq _080457B8
	ldr r0, _080457B4
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #4
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080457C4
	.2byte 0x0000
_080457B4: .4byte gUnk_03005CF4
_080457B8:
	ldr r0, _080457DC
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_080457C4:
	bl sub_0800CE30
	cmp r0, #0
	beq _080457E0
	ldr r0, _080457DC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #8
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080457EC
_080457DC: .4byte gUnk_03005CF4
_080457E0:
	ldr r0, _08045804
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_080457EC:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045808
	ldr r0, _08045804
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x10
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045814
_08045804: .4byte gUnk_03005CF4
_08045808:
	ldr r0, _0804582C
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045814:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045830
	ldr r0, _0804582C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x20
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0804583C
_0804582C: .4byte gUnk_03005CF4
_08045830:
	ldr r0, _08045854
	ldr r2, [r0, #0]
	movs r1, #0x20
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0804583C:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045858
	ldr r0, _08045854
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x40
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045864
_08045854: .4byte gUnk_03005CF4
_08045858:
	ldr r0, _0804587C
	ldr r2, [r0, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045864:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045880
	ldr r0, _0804587C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0804588C
_0804587C: .4byte gUnk_03005CF4
_08045880:
	ldr r0, _080458A8
	ldr r2, [r0, #0]
	movs r1, #0x80
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0804588C:
	bl sub_0800CE30
	cmp r0, #0
	beq _080458AC
	ldr r0, _080458A8
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080458BA
	.2byte 0x0000
_080458A8: .4byte gUnk_03005CF4
_080458AC:
	ldr r0, _080458D0
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_080458BA:
	bl sub_0800CE30
	cmp r0, #0
	beq _080458D4
	ldr r0, _080458D0
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #2
	b _08045AD8
	.2byte 0x0000
_080458D0: .4byte gUnk_03005CF4
_080458D4:
	ldr r0, _080458E0
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	b _08045AEC
	.2byte 0x0000
_080458E0: .4byte gUnk_03005CF4
_080458E4:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045900
	ldr r0, _080458FC
	ldr r1, [r0, #0]
	adds r1, #0x80
	lsls r2, r4, #0xa
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0804590C
_080458FC: .4byte gUnk_03005CF4
_08045900:
	ldr r0, _08045928
	ldr r2, [r0, #0]
	lsls r1, r4, #0xa
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0804590C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0804592C
	ldr r0, _08045928
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0804593A
	.2byte 0x0000
_08045928: .4byte gUnk_03005CF4
_0804592C:
	ldr r0, _08045954
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0804593A:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045958
	ldr r0, _08045954
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045966
_08045954: .4byte gUnk_03005CF4
_08045958:
	ldr r0, _08045980
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045966:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045984
	ldr r0, _08045980
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045992
_08045980: .4byte gUnk_03005CF4
_08045984:
	ldr r0, _080459AC
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045992:
	bl sub_0800CE30
	cmp r0, #0
	beq _080459B0
	ldr r0, _080459AC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080459BE
_080459AC: .4byte gUnk_03005CF4
_080459B0:
	ldr r0, _080459D8
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_080459BE:
	bl sub_0800CE30
	cmp r0, #0
	beq _080459DC
	ldr r0, _080459D8
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #9
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080459EA
_080459D8: .4byte gUnk_03005CF4
_080459DC:
	ldr r0, _08045A04
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #9
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_080459EA:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045A08
	ldr r0, _08045A04
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xa
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045A16
_08045A04: .4byte gUnk_03005CF4
_08045A08:
	ldr r0, _08045A30
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045A16:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045A34
	ldr r0, _08045A30
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xb
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045A42
_08045A30: .4byte gUnk_03005CF4
_08045A34:
	ldr r0, _08045A5C
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045A42:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045A60
	ldr r0, _08045A5C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045A6E
_08045A5C: .4byte gUnk_03005CF4
_08045A60:
	ldr r0, _08045A88
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045A6E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045A8C
	ldr r0, _08045A88
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xd
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045A9A
_08045A88: .4byte gUnk_03005CF4
_08045A8C:
	ldr r0, _08045AB4
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045A9A:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045AB8
	ldr r0, _08045AB4
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xe
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045AC6
_08045AB4: .4byte gUnk_03005CF4
_08045AB8:
	ldr r0, _08045AE0
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045AC6:
	bl sub_0800CE30
	cmp r0, #0
	beq _08045AE4
	ldr r0, _08045AE0
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xf
_08045AD8:
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08045AF2
_08045AE0: .4byte gUnk_03005CF4
_08045AE4:
	ldr r0, _08045AF8
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xf
_08045AEC:
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08045AF2:
	pop {r4}
	pop {r0}
	bx r0
_08045AF8: .4byte gUnk_03005CF4
	thumb_func_end sub_08045764

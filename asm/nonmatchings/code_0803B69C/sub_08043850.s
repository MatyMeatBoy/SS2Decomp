	thumb_func_start sub_08043850
sub_08043850: @ 0x08043850
	push {r4, r5, lr}
	ldr r0, _08043888
	ldr r0, [r0, #0]
	ldr r2, _0804388C
	adds r1, r0, r2
	movs r2, #0
	movs r4, #1
	ldr r3, [r0, #0x54]
_08043860:
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08043872
	ldr r0, [r1, #4]
	cmp r0, #0x41
	bne _08043872
	b _080439B0
_08043872:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08043860
	movs r5, #0
_0804387C:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08029174
	movs r4, #0x1e
	b _0804389A
_08043888: .4byte gUnk_03005CF4
_0804388C: .4byte 0x000007A4
_08043890:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080438A6
_0804389A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08043890
_080438A6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0802939C
	movs r4, #0x3c
	b _080438BC
_080438B2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080438C8
_080438BC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080438B2
_080438C8:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08029174
	movs r4, #0x3c
	b _080438DE
_080438D4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080438EA
_080438DE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080438D4
_080438EA:
	adds r0, r5, #0
	movs r1, #3
	bl sub_0802939C
	movs r4, #0x3c
	b _08043900
_080438F6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804390C
_08043900:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080438F6
_0804390C:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08029174
	movs r4, #0x1e
	b _08043922
_08043918:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804392E
_08043922:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08043918
_0804392E:
	adds r0, r5, #0
	movs r1, #4
	bl sub_08029174
	movs r4, #0xa
	b _08043944
_0804393A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08043950
_08043944:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804393A
_08043950:
	adds r0, r5, #0
	movs r1, #5
	bl sub_08029174
	movs r4, #0x3c
	b _08043966
_0804395C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08043972
_08043966:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804395C
_08043972:
	adds r2, r5, #0
	movs r4, #1
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r5, r0
	bls _080439B4
	ldr r0, _080439A4
	ldr r0, [r0, #0]
	ldr r3, _080439A8
	adds r1, r0, r3
	movs r3, #0
_08043988:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _080439AC
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08043988
	bl sub_080003F0
	movs r0, #0
_0804399C:
	cmp r0, #0
	beq _080439F2
	adds r0, #0x42
	b _080439F0
_080439A4: .4byte gUnk_03005CF4
_080439A8: .4byte 0x000007A4
_080439AC:
	adds r0, r1, #0
	b _0804399C
_080439B0:
	ldr r5, [r1, #0]
	b _0804387C
_080439B4:
	cmp r5, #0
	beq _080439DC
	subs r2, r5, #1
	cmp r2, #4
	bhi _080439F2
	ldr r1, _080439D8
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #1
	bl sub_08019EB8
	b _080439F2
_080439D8: .4byte gUnk_030056F4
_080439DC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08043A00
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_080439F0:
	strh r4, [r0, #0]
_080439F2:
	adds r0, r5, #0
	movs r1, #6
	bl sub_0802926C
	movs r4, #0xfa
	b _08043A0E
	.2byte 0x0000
_08043A00: .4byte gUnk_03003CE0
_08043A04:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08043A1A
_08043A0E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08043A04
_08043A1A:
	adds r0, r5, #0
	movs r1, #7
	bl sub_0802926C
	bl sub_0802A7DC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08043A48
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	pop {r4, r5}
	pop {r0}
	bx r0
_08043A48: .4byte gUnk_03003CE0
	thumb_func_end sub_08043850

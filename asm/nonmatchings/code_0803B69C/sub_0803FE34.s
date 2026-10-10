	thumb_func_start sub_0803FE34
sub_0803FE34: @ 0x0803FE34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0803FF64
	ldr r2, _0803FF68
	movs r1, #0xe1
	bl sub_080289C0
	adds r5, r0, #0
	ldr r0, _0803FF6C
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #8
	bl sub_080289C0
	adds r6, r0, #0
	movs r2, #0x8a
	lsls r2, r2, #1
	movs r0, #0x34
	movs r1, #0x5b
	bl sub_080289C0
	adds r7, r0, #0
	ldr r0, _0803FF70
	movs r2, #0xb1
	lsls r2, r2, #1
	movs r1, #0xeb
	bl sub_080289C0
	mov r8, r0
	ldr r0, _0803FF74
	movs r2, #0x93
	lsls r2, r2, #1
	movs r1, #0xd
	bl sub_080289C0
	mov r9, r0
	ldr r0, _0803FF78
	ldr r2, _0803FF7C
	movs r1, #0xcc
	bl sub_080289C0
	str r0, [sp, #0]
	ldr r2, _0803FF80
	movs r0, #0x15
	movs r1, #0x8b
	bl sub_080289C0
	str r0, [sp, #4]
	movs r4, #4
	negs r4, r4
_0803FEA0:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	adds r0, r6, #0
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	adds r0, r7, #0
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	mov r0, r8
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	mov r0, r8
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	mov r0, r9
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	mov r0, r9
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	ldr r0, [sp, #0]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	ldr r0, [sp, #0]
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	ldr r0, [sp, #4]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	ldr r0, [sp, #4]
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_08028D98
	ldr r0, _0803FF84
	ldr r0, [r0, #0]
	movs r1, #1
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _0803FF58
	movs r0, #1
_0803FF58:
	cmp r0, #0
	beq _0803FEA0
	movs r0, #1
	mov sl, r0
_0803FF60:
	movs r4, #1
	b _0803FF92
_0803FF64: .4byte 0x00010033
_0803FF68: .4byte 0x00000127
_0803FF6C: .4byte 0x00060022
_0803FF70: .4byte 0x00010026
_0803FF74: .4byte 0x0007002A
_0803FF78: .4byte 0x0001000D
_0803FF7C: .4byte 0x0000014B
_0803FF80: .4byte 0x00000113
_0803FF84: .4byte gUnk_03005CF4
_0803FF88:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FF9E
_0803FF92:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FF88
_0803FF9E:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x38]
	mov r2, sl
	ands r1, r2
	cmp r1, #0
	beq _0803FFAE
	movs r1, #1
_0803FFAE:
	cmp r1, #0
	bne _0803FF60
	ldr r3, _080400D0
	adds r1, r0, r3
	movs r2, #0
_0803FFB8:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0803FFCC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803FFB8
	bl sub_080003F0
	movs r1, #0
_0803FFCC:
	cmp r1, #0
	beq _0803FFD4
	movs r0, #4
	strh r0, [r1, #0x36]
_0803FFD4:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r2, _080400D0
	adds r1, r0, r2
	movs r2, #0
_0803FFDE:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0803FFF2
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803FFDE
	bl sub_080003F0
	movs r1, #0
_0803FFF2:
	cmp r1, #0
	beq _0803FFFA
	movs r0, #4
	strh r0, [r1, #0x36]
_0803FFFA:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r3, _080400D0
	adds r1, r0, r3
	movs r2, #0
_08040004:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _08040018
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040004
	bl sub_080003F0
	movs r1, #0
_08040018:
	cmp r1, #0
	beq _08040020
	movs r0, #4
	strh r0, [r1, #0x36]
_08040020:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r2, _080400D0
	adds r1, r0, r2
	movs r2, #0
_0804002A:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _0804003E
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804002A
	bl sub_080003F0
	movs r1, #0
_0804003E:
	cmp r1, #0
	beq _08040046
	movs r0, #4
	strh r0, [r1, #0x36]
_08040046:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r3, _080400D0
	adds r1, r0, r3
	movs r2, #0
_08040050:
	ldr r0, [r1, #0]
	cmp r0, r9
	beq _08040064
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040050
	bl sub_080003F0
	movs r1, #0
_08040064:
	cmp r1, #0
	beq _0804006C
	movs r0, #4
	strh r0, [r1, #0x36]
_0804006C:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r2, _080400D0
	adds r1, r0, r2
	movs r2, #0
_08040076:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0]
	cmp r0, r3
	beq _0804008C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040076
	bl sub_080003F0
	movs r1, #0
_0804008C:
	cmp r1, #0
	beq _08040094
	movs r0, #4
	strh r0, [r1, #0x36]
_08040094:
	ldr r0, _080400CC
	ldr r0, [r0, #0]
	ldr r2, _080400D0
	adds r1, r0, r2
	movs r2, #0
_0804009E:
	ldr r0, [r1, #0]
	ldr r3, [sp, #4]
	cmp r0, r3
	beq _080400B4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804009E
	bl sub_080003F0
	movs r1, #0
_080400B4:
	cmp r1, #0
	beq _080400BC
	movs r0, #4
	strh r0, [r1, #0x36]
_080400BC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080400CC: .4byte gUnk_03005CF4
_080400D0: .4byte 0x000007A4
	thumb_func_end sub_0803FE34

	thumb_func_start sub_0805FB7C
sub_0805FB7C: @ 0x0805FB7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	str r2, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _0805FC00
	adds r0, r2, #0
	cmp r0, r1
	bls _0805FB94
	str r1, [sp, #8]
_0805FB94:
	ldr r1, _0805FC04
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r6, [r0, #0]
	lsls r2, r7, #6
	lsls r0, r4, #1
	ldr r1, _0805FC08
	adds r0, r0, r1
	adds r5, r2, r0
	add r4, sp, #8
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_08000498
	mov r1, sp
	strh r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08000498
	mov r1, sp
	strh r0, [r1, #2]
	ldr r0, [sp, #8]
	strh r0, [r1, #4]
	adds r0, r6, r0
	strh r0, [r5, #0]
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0805FBDE
	subs r1, r5, #4
	adds r0, r6, r0
	strh r0, [r1, #0]
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0805FBE6
_0805FBDE:
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0805FBF0
_0805FBE6:
	subs r1, r5, #2
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r0, r6, r0
	strh r0, [r1, #0]
_0805FBF0:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0801A664
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805FC00: .4byte 0x000003E7
_0805FC04: .4byte gUnk_084EBD74
_0805FC08: .4byte gUnk_03005740
	thumb_func_end sub_0805FB7C

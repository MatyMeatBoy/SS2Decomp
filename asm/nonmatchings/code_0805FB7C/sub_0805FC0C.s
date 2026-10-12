	thumb_func_start sub_0805FC0C
sub_0805FC0C: @ 0x0805FC0C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _0805FC5C
	ldr r0, [sp, #8]
	cmp r0, r1
	bls _0805FC22
	str r1, [sp, #8]
_0805FC22:
	ldr r1, _0805FC60
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r5, [r0, #0]
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
	adds r0, r5, r0
	strh r0, [r6, #0]
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0805FC64
	subs r1, r6, #4
	adds r0, r5, r0
	strh r0, [r1, #0]
	b _0805FC6C
_0805FC5C: .4byte 0x000003E7
_0805FC60: .4byte gUnk_084EBD74
_0805FC64:
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0805FC76
_0805FC6C:
	subs r1, r6, #2
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r0, r5, r0
	strh r0, [r1, #0]
_0805FC76:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0805FC0C

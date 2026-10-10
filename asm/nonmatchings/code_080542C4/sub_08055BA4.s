	thumb_func_start sub_08055BA4
sub_08055BA4: @ 0x08055BA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x114
	mov r1, sp
	ldr r0, _08055BFC
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r4, sp, #0x14
	ldr r1, _08055C00
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_080B96A4
	movs r5, #0
	mov r8, r4
	add r7, sp, #0x18
_08055BCC:
	lsls r4, r5, #3
	mov r1, r8
	adds r0, r1, r4
	ldr r0, [r0, #0]
	lsls r0, r0, #2
	add r0, sp
	ldrh r2, [r0, #0]
	movs r0, #6
	movs r1, #0x78
	movs r3, #0
	bl sub_08028AAC
	movs r0, #6
	movs r1, #0
	movs r2, #0x1c
	negs r2, r2
	movs r3, #0xa
	bl sub_08028D98
	adds r4, r7, r4
	ldrh r4, [r4, #0]
	adds r6, r5, #1
	b _08055C0A
	.2byte 0x0000
_08055BFC: .4byte gUnk_080BB6D0
_08055C00: .4byte gUnk_080BB6E4
_08055C04:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08055C0A:
	cmp r4, #0
	beq _08055C1A
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08055C04
_08055C1A:
	movs r0, #6
	movs r1, #0
	movs r2, #0x1c
	movs r3, #0xa
	bl sub_08028D98
	ldr r2, _08055C38
	movs r0, #6
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	movs r4, #0x1e
	b _08055C46
	.2byte 0x0000
_08055C38: .4byte 0x0000270F
_08055C3C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08055C52
_08055C46:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08055C3C
_08055C52:
	movs r5, #0x1f
	ands r5, r6
	b _08055BCC
	thumb_func_end sub_08055BA4

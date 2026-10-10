	thumb_func_start sub_08056ED0
sub_08056ED0: @ 0x08056ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	mov sl, r1
	str r2, [sp, #0]
	str r3, [sp, #4]
	movs r4, #0
	ldr r0, _08056EF0
	mov r8, r0
	movs r7, #0
	ldr r5, _08056EF4
	b _08056F00
_08056EF0: .4byte gUnk_03005CF4
_08056EF4: .4byte 0x00001D34
_08056EF8:
	adds r7, r0, #0
	adds r7, #8
	adds r5, #0x38
	adds r4, #1
_08056F00:
	cmp r4, #4
	bhi _08056F5C
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, r0, r5
	adds r0, #0x10
	bl sub_08000470
	adds r6, r0, #0
	adds r0, r7, #0
	cmp r6, #0
	bne _08056EF8
	ldr r1, _08056F6C
	subs r0, r7, r4
	lsls r0, r0, #3
	ldr r2, _08056F70
	adds r0, r0, r2
	ldr r4, [r1, #0]
	adds r4, r4, r0
	mov r0, r9
	str r0, [r4, #0]
	mov r1, sl
	str r1, [r4, #4]
	ldr r2, [sp, #0]
	str r2, [r4, #8]
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	ldr r0, _08056F74
	str r0, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x30]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x20]
	movs r0, #0x46
	str r0, [r4, #0x18]
	str r6, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r4, #0
	bl sub_08000274
_08056F5C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08056F6C: .4byte gUnk_03005CF4
_08056F70: .4byte 0x00001D34
_08056F74: .4byte sub_0805A6B8
	thumb_func_end sub_08056ED0

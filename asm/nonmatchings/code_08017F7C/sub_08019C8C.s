	thumb_func_start sub_08019C8C
sub_08019C8C: @ 0x08019C8C
	push {lr}
	bl sub_0800CDC0
	cmp r0, #0
	beq _08019CB8
	movs r1, #4
	ldr r0, _08019CB0
	movs r3, #1
	ldr r2, [r0, #0]
_08019C9E:
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08019CB4
	subs r1, #1
	cmp r1, #0
	bge _08019C9E
	b _08019CD0
_08019CB0: .4byte gUnk_030056FC
_08019CB4:
	adds r0, r1, #0
	b _08019CD4
_08019CB8:
	movs r1, #0
	ldr r0, _08019CD8
	movs r3, #1
	ldr r2, [r0, #0]
_08019CC0:
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08019CB4
	adds r1, #1
	cmp r1, #4
	ble _08019CC0
_08019CD0:
	movs r0, #1
	negs r0, r0
_08019CD4:
	pop {r1}
	bx r1
_08019CD8: .4byte gUnk_030056FC
	thumb_func_end sub_08019C8C

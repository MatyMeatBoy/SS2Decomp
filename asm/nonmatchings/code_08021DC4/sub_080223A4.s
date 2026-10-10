	thumb_func_start sub_080223A4
sub_080223A4: @ 0x080223A4
	push {r4, lr}
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, r2, #0
	adds r3, #0xa
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r2, r1
	adds r2, #0x14
	adds r1, r2, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r0
	bge _080223EA
	movs r0, #0
	b _080223EC
_080223EA:
	movs r0, #1
_080223EC:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080223A4

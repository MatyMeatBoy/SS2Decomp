	thumb_func_start sub_080AC81C
sub_080AC81C: @ 0x080AC81C
	push {lr}
	movs r0, #0xc2
	bl sub_0805867C
	bl sub_08068384
	ldr r1, _080AC83C
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _080AC840
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_080AC83C: .4byte gUnk_030056FC
_080AC840: .4byte gUnk_03000438
	thumb_func_end sub_080AC81C

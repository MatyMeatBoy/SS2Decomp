	thumb_func_start sub_08099720
sub_08099720: @ 0x08099720
	push {lr}
	ldr r0, _08099750
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08099738
	bl sub_08099788
	bl sub_080656EC
_08099738:
	bl sub_08068384
	ldr r1, _08099754
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _08099758
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
	.2byte 0x0000
_08099750: .4byte gUnk_030002D0
_08099754: .4byte gUnk_030056FC
_08099758: .4byte gUnk_030002D4
	thumb_func_end sub_08099720

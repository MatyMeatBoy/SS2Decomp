	thumb_func_start sub_0809D574
sub_0809D574: @ 0x0809D574
	push {lr}
	movs r0, #0xe6
	bl sub_0805867C
	ldr r0, _0809D5AC
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0809D596
	bl sub_0809D5E4
	bl sub_0809D6D8
	bl sub_0809D810
_0809D596:
	bl sub_08068384
	ldr r1, _0809D5B0
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, _0809D5B4
	ldrh r0, [r0, #0]
	bl sub_08016ECC
	pop {r0}
	bx r0
_0809D5AC: .4byte gUnk_030002EC
_0809D5B0: .4byte gUnk_030056FC
_0809D5B4: .4byte gUnk_030002F0
	thumb_func_end sub_0809D574

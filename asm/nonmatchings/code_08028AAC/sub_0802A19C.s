	thumb_func_start sub_0802A19C
sub_0802A19C: @ 0x0802A19C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	bl sub_0800CE40
	movs r0, #0xa
	bl sub_0801ABE8
	b _0802A1B2
_0802A1AE:
	bl sub_080003F0
_0802A1B2:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802A1AE
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _0802A204
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r8, r0
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	bl sub_080867F8
	ldr r0, _0802A208
	bl sub_080003F4
	mov r1, r8
	strh r1, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	ldr r0, _0802A20C
	bl sub_08000420
	bl sub_0800CE54
	b _0802A214
_0802A204: .4byte gUnk_03003170
_0802A208: .4byte 0x11201100
_0802A20C: .4byte 0x000514C8
_0802A210:
	bl sub_080003F0
_0802A214:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802A210
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0802A19C

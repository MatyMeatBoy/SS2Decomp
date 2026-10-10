	thumb_func_start sub_08084F9C
sub_08084F9C: @ 0x08084F9C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08084FA4
	b _08084FAC
_08084FA4: .4byte gUnk_03006440
_08084FA8:
	bl sub_080003F0
_08084FAC:
	ldr r0, _08084FC4
	bl sub_08001494
	str r0, [r4, #0]
	cmp r0, #0
	beq _08084FA8
	ldr r0, _08084FC8
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, _08084FCC
	b _08084FD4
_08084FC4: .4byte 0x00000624
_08084FC8: .4byte gUnk_03006440
_08084FCC: .4byte gUnk_03006450
_08084FD0:
	bl sub_080003F0
_08084FD4:
	movs r0, #0xa0
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08084FD0
	ldr r0, _08085004
	ldr r1, [r0, #0x20]
	ldr r2, _08085008
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x64
	str r1, [r0, #8]
	ldr r1, _0808500C
	str r1, [r0, #0x24]
	ldr r1, _08085010
	str r1, [r0, #0xc]
	adds r1, r5, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
_08085004: .4byte gUnk_03006450
_08085008: .4byte 0x000009FC
_0808500C: .4byte sub_08085518
_08085010: .4byte sub_08082BB0
	thumb_func_end sub_08084F9C

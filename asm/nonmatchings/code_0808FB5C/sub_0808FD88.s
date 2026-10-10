	thumb_func_start sub_0808FD88
sub_0808FD88: @ 0x0808FD88
	push {r4, lr}
	bl sub_0805795C
	bl sub_080169C8
	b _0808FD98
_0808FD94:
	bl sub_080003F0
_0808FD98:
	bl sub_080B6068
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808FD94
	bl sub_08058790
	movs r0, #0xb9
	lsls r0, r0, #1
	bl sub_08058688
	movs r4, #0
	b _0808FDBA
_0808FDB2:
	ldr r0, _0808FDE0
	bl sub_08057624
	adds r4, #1
_0808FDBA:
	cmp r4, #0x16
	bhi _0808FDD2
	ldr r1, _0808FDE4
	adds r0, r4, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	bl sub_080889D4
	bl sub_080021A8
	cmp r0, #0
	beq _0808FDB2
_0808FDD2:
	bl sub_08002204
	cmp r0, #0
	beq _0808FDEE
	bl sub_08067DC8
	b _0808FDEE
_0808FDE0: .4byte 0x000001A7
_0808FDE4: .4byte 0x00000483
_0808FDE8:
	movs r0, #1
	bl sub_08057624
_0808FDEE:
	bl sub_08056E90
	cmp r0, #0
	bne _0808FDFE
	bl sub_080021A8
	cmp r0, #0
	beq _0808FDE8
_0808FDFE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0808FD88

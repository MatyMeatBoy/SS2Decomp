	thumb_func_start sub_08002164
sub_08002164: @ 0x08002164
	push {r4, lr}
	ldr r0, _08002194
	ldr r0, [r0, #0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800219C
	movs r1, #0
	movs r2, #0
	ldr r0, _08002198
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r3, [r0, #0]
_08002180:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0800218C
	adds r2, #1
_0800218C:
	adds r1, #1
	cmp r1, #3
	bls _08002180
	b _0800219E
_08002194: .4byte gUnk_030027D0
_08002198: .4byte gUnk_03002730
_0800219C:
	movs r2, #1
_0800219E:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08002164

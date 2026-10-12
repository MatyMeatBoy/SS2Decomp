	thumb_func_start sub_08058D4C
sub_08058D4C: @ 0x08058D4C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08058D74
	ldr r0, [r0, #0]
	ldr r2, _08058D78
	adds r1, r0, r2
	movs r2, #0
	movs r5, #1
	ldr r3, [r0, #0x54]
_08058D5E:
	adds r0, r5, #0
	lsls r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08058D7C
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08058D7C
	ldr r0, [r1, #0]
	b _08058D86
	.2byte 0x0000
_08058D74: .4byte gUnk_03005CF4
_08058D78: .4byte 0x000007A4
_08058D7C:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08058D5E
	movs r0, #0
_08058D86:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08058D4C

	thumb_func_start sub_0805A960
sub_0805A960: @ 0x0805A960
	push {lr}
	adds r3, r0, #0
	ldr r0, _0805A978
	ldr r0, [r0, #0]
	ldr r2, _0805A97C
	adds r1, r0, r2
	movs r2, #0
_0805A96E:
	ldr r0, [r1, #0]
	cmp r0, r3
	bne _0805A980
	adds r0, r1, #0
	b _0805A98E
_0805A978: .4byte gUnk_03005CF4
_0805A97C: .4byte 0x000007A4
_0805A980:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0805A96E
	bl sub_080003F0
	movs r0, #0
_0805A98E:
	pop {r1}
	bx r1
	thumb_func_end sub_0805A960

	thumb_func_start sub_08059340
sub_08059340: @ 0x08059340
	push {r4, lr}
	movs r4, #0xa
	bl sub_0800CE30
	cmp r0, #0
	beq _0805935C
	ldr r0, _08059354
	ldr r0, [r0, #0]
	ldr r1, _08059358
	b _08059362
_08059354: .4byte gUnk_03005CF4
_08059358: .4byte 0x000001BD
_0805935C:
	ldr r0, _0805936C
	ldr r0, [r0, #0]
	ldr r1, _08059370
_08059362:
	adds r0, r0, r1
	strb r4, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
_0805936C: .4byte gUnk_03005CF4
_08059370: .4byte 0x000001B1
	thumb_func_end sub_08059340

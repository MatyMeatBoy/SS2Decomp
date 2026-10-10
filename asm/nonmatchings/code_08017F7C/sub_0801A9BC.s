	thumb_func_start sub_0801A9BC
sub_0801A9BC: @ 0x0801A9BC
	push {r4, lr}
	ldr r1, _0801AA14
	adds r2, r1, #0
	adds r2, #0x40
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r2, #0]
	adds r1, #0x44
	movs r0, #0x10
	strh r0, [r1, #0]
	ldr r0, _0801AA18
	strh r4, [r0, #0]
	ldr r0, _0801AA1C
	strh r4, [r0, #0]
	ldr r0, _0801AA20
	strh r4, [r0, #0]
	ldr r0, _0801AA24
	strh r4, [r0, #0]
	ldr r0, _0801AA28
	strh r4, [r0, #0]
	bl sub_08000B50
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _0801AA2C
	ldr r1, _0801AA30
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #8]
	str r4, [r0, #0x24]
	movs r1, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
_0801AA14: .4byte gUnk_03001250
_0801AA18: .4byte gUnk_03000024
_0801AA1C: .4byte gUnk_03000020
_0801AA20: .4byte gUnk_03000022
_0801AA24: .4byte gUnk_03000026
_0801AA28: .4byte gUnk_03000028
_0801AA2C: .4byte gUnk_03000030
_0801AA30: .4byte sub_0801A7AC
	thumb_func_end sub_0801A9BC

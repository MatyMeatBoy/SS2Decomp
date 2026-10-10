	thumb_func_start sub_0807BEA0
sub_0807BEA0: @ 0x0807BEA0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r0, #0x10
	bls _0807BEAC
	b _0807C008
_0807BEAC:
	lsls r0, r0, #2
	ldr r1, _0807BEB8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807BEB8: .4byte _0807BEBC
_0807BEBC:
	.4byte _0807BF00
_0807BEC0: .4byte _0807BF1C
_0807BEC4: .4byte _0807BF48
_0807BEC8: .4byte _0807BF68
_0807BECC: .4byte _0807BF88
_0807BED0: .4byte _0807BFA8
_0807BED4: .4byte _0807BFD0
_0807BED8: .4byte _0807C008
_0807BEDC: .4byte _0807C008
_0807BEE0: .4byte _0807C008
_0807BEE4: .4byte _0807C008
_0807BEE8: .4byte _0807C008
_0807BEEC: .4byte _0807C008
_0807BEF0: .4byte _0807BFF0
_0807BEF4: .4byte _0807C008
_0807BEF8: .4byte _0807C008
_0807BEFC: .4byte _0807BFF0
_0807BF00:
	ldr r0, _0807BF18
	ldr r1, [r0, #0]
	lsls r0, r4, #4
	adds r1, r1, r0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r3, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	b _0807C004
	.2byte 0x0000
_0807BF18: .4byte gUnk_030034E0
_0807BF1C:
	ldr r2, _0807BF44
	ldr r1, [r2, #0]
	lsls r0, r4, #4
	adds r1, r1, r0
	adds r1, #0x70
	adds r0, r3, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	cmp r4, r0
	bne _0807C008
	adds r0, r4, #0
	bl sub_0805AD78
	b _0807C008
	.2byte 0x0000
_0807BF44: .4byte gUnk_030034E0
_0807BF48:
	ldr r0, _0807BF64
	ldr r1, [r0, #0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bl sub_0805D094
	b _0807C008
	.2byte 0x0000
_0807BF64: .4byte gUnk_030034E0
_0807BF68:
	ldr r0, _0807BF84
	ldr r1, [r0, #0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bl sub_0805D13C
	b _0807C008
	.2byte 0x0000
_0807BF84: .4byte gUnk_030034E0
_0807BF88:
	ldr r0, _0807BFA4
	ldr r1, [r0, #0]
	movs r4, #0x88
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bl sub_0805D0E8
	b _0807C008
	.2byte 0x0000
_0807BFA4: .4byte gUnk_030034E0
_0807BFA8:
	ldr r2, _0807BFCC
	ldr r1, [r2, #0]
	movs r4, #0x98
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r4, #6
	adds r1, r0, r4
	movs r0, #0
	strh r0, [r1, #0]
	bl sub_0805D190
	b _0807C008
_0807BFCC: .4byte gUnk_030034E0
_0807BFD0:
	ldr r0, _0807BFEC
	ldr r1, [r0, #0]
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r1, r1, r5
	adds r0, r3, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	bl sub_0805D1E0
	b _0807C008
	.2byte 0x0000
_0807BFEC: .4byte gUnk_030034E0
_0807BFF0:
	ldr r0, _0807C010
	ldr r1, [r0, #0]
	lsls r0, r4, #4
	adds r1, r1, r0
	movs r4, #0x82
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
_0807C004:
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_0807C008:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0807C010: .4byte gUnk_03006440
	thumb_func_end sub_0807BEA0

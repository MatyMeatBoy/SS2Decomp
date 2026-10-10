	thumb_func_start sub_0807BD78
sub_0807BD78: @ 0x0807BD78
	push {lr}
	adds r3, r1, #0
	cmp r0, #0x10
	bls _0807BD82
	b _0807BE96
_0807BD82:
	lsls r0, r0, #2
	ldr r1, _0807BD8C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0807BD8C: .4byte _0807BD90
_0807BD90:
	.4byte _0807BDD4
_0807BD94: .4byte _0807BDE8
_0807BD98: .4byte _0807BE0C
_0807BD9C: .4byte _0807BE24
_0807BDA0: .4byte _0807BE3C
_0807BDA4: .4byte _0807BE54
_0807BDA8: .4byte _0807BE6C
_0807BDAC: .4byte _0807BE96
_0807BDB0: .4byte _0807BE96
_0807BDB4: .4byte _0807BE96
_0807BDB8: .4byte _0807BE96
_0807BDBC: .4byte _0807BE84
_0807BDC0: .4byte _0807BE96
_0807BDC4: .4byte _0807BE84
_0807BDC8: .4byte _0807BE96
_0807BDCC: .4byte _0807BE96
_0807BDD0: .4byte _0807BE84
_0807BDD4:
	ldr r0, _0807BDE4
	ldr r0, [r0, #0]
	lsls r1, r3, #4
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	b _0807BE90
	.2byte 0x0000
_0807BDE4: .4byte gUnk_030034E0
_0807BDE8:
	ldr r0, _0807BE08
	ldr r2, [r0, #0]
	lsls r0, r3, #4
	adds r0, r2, r0
	adds r0, #0x70
	movs r1, #0
	strh r1, [r0, #0]
	adds r2, #0x68
	ldrh r2, [r2, #0]
	cmp r3, r2
	bne _0807BE96
	adds r0, r3, #0
	bl sub_0805AD78
	b _0807BE96
	.2byte 0x0000
_0807BE08: .4byte gUnk_030034E0
_0807BE0C:
	ldr r0, _0807BE20
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_0805D094
	b _0807BE96
_0807BE20: .4byte gUnk_030034E0
_0807BE24:
	ldr r0, _0807BE38
	ldr r0, [r0, #0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_0805D13C
	b _0807BE96
_0807BE38: .4byte gUnk_030034E0
_0807BE3C:
	ldr r0, _0807BE50
	ldr r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_0805D0E8
	b _0807BE96
_0807BE50: .4byte gUnk_030034E0
_0807BE54:
	ldr r0, _0807BE68
	ldr r0, [r0, #0]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_0805D190
	b _0807BE96
_0807BE68: .4byte gUnk_030034E0
_0807BE6C:
	ldr r0, _0807BE80
	ldr r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_0805D1E0
	b _0807BE96
_0807BE80: .4byte gUnk_030034E0
_0807BE84:
	ldr r0, _0807BE9C
	ldr r0, [r0, #0]
	lsls r1, r3, #4
	adds r0, r0, r1
	movs r1, #0x82
	lsls r1, r1, #1
_0807BE90:
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
_0807BE96:
	pop {r0}
	bx r0
	.2byte 0x0000
_0807BE9C: .4byte gUnk_03006440
	thumb_func_end sub_0807BD78

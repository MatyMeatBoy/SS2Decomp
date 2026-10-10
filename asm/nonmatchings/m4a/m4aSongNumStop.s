	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x080B72D4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080B7300
	ldr r1, _080B7304
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1, #0]
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _080B72FA
	adds r0, r2, #0
	bl m4aMPlayStop
_080B72FA:
	pop {r0}
	bx r0
	.2byte 0x0000
_080B7300: .4byte gMPlayTable
_080B7304: .4byte gSongTable
	thumb_func_end m4aSongNumStop

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x080B7208
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080B722C
	ldr r1, _080B7230
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1, #0]
	ldr r1, [r0, #0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
_080B722C: .4byte gMPlayTable
_080B7230: .4byte gSongTable
	thumb_func_end m4aSongNumStart

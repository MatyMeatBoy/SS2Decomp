	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x080B7280
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080B72AC
	ldr r1, _080B72B0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	ldr r3, [r1, #0]
	ldr r2, [r0, #0]
	cmp r3, r2
	beq _080B72B4
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _080B72D0
	.2byte 0x0000
_080B72AC: .4byte gMPlayTable
_080B72B0: .4byte gSongTable
_080B72B4:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080B72C6
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _080B72D0
_080B72C6:
	cmp r2, #0
	bge _080B72D0
	adds r0, r1, #0
	bl MPlayContinue
_080B72D0:
	pop {r0}
	bx r0
	thumb_func_end m4aSongNumStartOrContinue

	thumb_func_start AgbMain
AgbMain: @ 0x08000618
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r1, _08000714
	ldr r2, _08000718
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #0xe0
	bl RegisterRamReset
	movs r5, #0
	str r5, [sp, #0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r2, _0800071C
	mov r0, sp
	bl CpuSet
	str r5, [sp, #4]
	add r0, sp, #4
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldr r2, _08000720
	bl CpuSet
	str r5, [sp, #8]
	add r0, sp, #8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08000724
	bl CpuSet
	movs r6, #0xa0
	str r6, [sp, #0xc]
	add r0, sp, #0xc
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ldr r4, _08000728
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r2, r4, #0
	bl CpuSet
	str r6, [sp, #0x14]
	add r0, sp, #0x14
	ldr r1, _0800072C
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0x18]
	add r0, sp, #0x18
	ldr r1, _08000730
	adds r2, r4, #0
	bl CpuSet
	bl sub_08000EC8
	bl sub_08000EF4
	ldr r0, _08000734
	strh r5, [r0, #0]
	bl sub_08000968
	ldr r0, _08000738
	ldr r1, _0800073C
	ldr r2, _08000740
	bl CpuSet
	ldr r0, _08000744
	ldr r4, _08000748
	ldr r2, _0800074C
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08000750
	str r4, [r0, #0]
	bl sub_08001404
	bl sub_08000C1C
	bl sub_080012F8
	bl sub_0800116C
	ldr r0, _08000754
	bl sub_08000BB0
	bl m4aSoundInit
	bl m4aSoundVSyncOff
	bl sub_08000F2C
	movs r0, #1
	bl sub_08000F64
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
	ldr r4, _08000758
	str r5, [r4, #0]
	str r5, [r4, #8]
	ldr r0, _0800075C
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0800023C
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08000714: .4byte 0x04000204
_08000718: .4byte 0x00004014
_0800071C: .4byte 0x05010000
_08000720: .4byte 0x05001F80
_08000724: .4byte 0x05006000
_08000728: .4byte 0x05000100
_0800072C: .4byte gUnk_03001330
_08000730: .4byte gUnk_03001F40
_08000734: .4byte gUnk_03001310
_08000738: .4byte gUnk_080B9984
_0800073C: .4byte gUnk_030012A0
_08000740: .4byte 0x0400000E
_08000744: .4byte IntrMain
_08000748: .4byte gUnk_03001740
_0800074C: .4byte 0x04000200
_08000750: .4byte gUnk_03007FFC
_08000754: .4byte 0x00001234
_08000758: .4byte gUnk_030012E0
_0800075C: .4byte sub_08001B78
	thumb_func_end AgbMain

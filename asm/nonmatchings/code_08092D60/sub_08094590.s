	thumb_func_start sub_08094590
sub_08094590: @ 0x08094590
	push {r4, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A34
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0
	movs r1, #0
	bl sub_08000990
	movs r0, #0x98
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080009C0
	ldr r1, _08094628
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r1, _0809462C
	orrs r0, r1
	str r0, [sp, #4]
	movs r0, #0
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #0xc
	movs r1, #0x18
	bl sub_080921E4
	ldr r1, _08094630
	add r0, sp, #4
	strh r1, [r0, #0]
	movs r0, #1
	add r1, sp, #4
	bl sub_08000AA8
	movs r0, #0xd
	movs r1, #0x1c
	bl sub_080921E4
	ldr r0, _08094634
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	movs r0, #2
	bl sub_0800CBF8
	movs r0, #2
	bl sub_0800CC48
	movs r0, #2
	bl sub_08098010
	bl sub_08094948
	bl sub_080949A8
	bl sub_08000940
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08094628: .4byte 0xFFFF0000
_0809462C: .4byte 0x00001802
_08094630: .4byte 0x00001C03
_08094634: .4byte gUnk_03001250
	thumb_func_end sub_08094590

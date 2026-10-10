	thumb_func_start sub_080003F4
sub_080003F4: @ 0x080003F4
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, r9
	mov r3, sl
	push {r1, r2, r3}
	ldr r1, _08000418
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	mov r0, lr
	mov r2, sp
	str r0, [r1, #0xc]
	str r2, [r1, #0x10]
	movs r0, #4
	str r0, [r1, #4]
	ldr r0, _0800041C
	ldr r0, [r0, #0]
	mov sp, r0
	b _08000320
_08000418: .4byte gUnk_0300123C
_0800041C: .4byte gUnk_03001248
	thumb_func_end sub_080003F4

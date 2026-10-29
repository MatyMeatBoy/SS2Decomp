	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080B6910
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	thumb_func_end SoundMainBTM

/* The next SDK entry is aligned with zero fill. */
.align 2,0

	thumb_func_start SoftReset
SoftReset: @ 0x080B8598
	ldr r3, _080B85AC
	movs r2, #0
	strb r2, [r3, #0]
	ldr r3, _080B85B0
	movs r2, #0
	strb r2, [r3, #0]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
_080B85AC: .4byte 0x04000208
_080B85B0: .4byte gUnk_03007FFA
	thumb_func_end SoftReset

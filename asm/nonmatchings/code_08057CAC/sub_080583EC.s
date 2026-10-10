	thumb_func_start sub_080583EC
sub_080583EC: @ 0x080583EC
	push {lr}
	bl sub_0805EFBC
_080583F2:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _080583F2
	pop {r0}
	bx r0
	thumb_func_end sub_080583EC

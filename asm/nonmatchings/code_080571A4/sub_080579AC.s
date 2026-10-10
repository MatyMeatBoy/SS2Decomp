	thumb_func_start sub_080579AC
sub_080579AC: @ 0x080579AC
	push {lr}
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	thumb_func_end sub_080579AC

	thumb_func_start SoundMain
SoundMain: @ 0x080B64E8
	ldr r0, _080B6554
	ldr r0, [r0, #0]
	ldr r2, _080B6558
	ldr r3, [r0, #0]
	cmp r2, r3
	beq _080B64F6
	bx lr
_080B64F6:
	adds r3, #1
	str r3, [r0, #0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, r9
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080B651A
	ldr r2, _080B6560
	ldrb r2, [r2, #0]
	cmp r2, #0xa0
	bhs _080B6518
	adds r2, #0xe4
_080B6518:
	adds r1, r1, r2
_080B651A:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080B652A
	ldr r0, [r0, #0x24]
	bl _080B690A
	.2byte 0x9806
_080B652A:
	ldr r3, [r0, #0x28]
	bl _080B690A
	.4byte 0x69039806
	.4byte 0x4D0B4698
	.4byte 0x7904182D
	.4byte 0xD9041E67
	.4byte 0x1BC97AC1
	.4byte 0x434A4642
	.4byte 0x950218AD
	.4byte 0x4B034E06
	.4byte 0x00004718
_080B6554: .4byte gUnk_03007FF0
_080B6558: .4byte 0x68736D53
	.4byte 0x03000E3D
_080B6560: .4byte 0x04000006
	.4byte 0x00000350
	.2byte 0x0630
	thumb_func_end SoundMain

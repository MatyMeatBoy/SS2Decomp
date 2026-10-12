	thumb_func_start sub_08092124
sub_08092124: @ 0x08092124
	ldr r0, _08092160
	movs r2, #0
	str r2, [r0, #0]
	ldr r1, _08092164
	ldr r0, _08092168
	str r0, [r1, #0]
	ldr r0, _0809216C
	str r0, [r1, #4]
	ldr r0, _08092170
	str r0, [r1, #8]
	ldr r0, _08092174
	str r0, [r1, #0xc]
	ldr r0, _08092178
	str r0, [r1, #0x10]
	ldr r0, _0809217C
	str r0, [r1, #0x14]
	ldr r0, _08092180
	str r0, [r1, #0x18]
	ldr r0, _08092184
	str r0, [r1, #0x1c]
	ldr r0, _08092188
	str r0, [r1, #0x20]
	ldr r0, _0809218C
	str r2, [r0, #0x24]
	movs r1, #0x3c
	str r1, [r0, #8]
	str r2, [r0, #0]
	str r2, [r0, #0x18]
	bx lr
	.2byte 0x0000
_08092160: .4byte gUnk_0300016C
_08092164: .4byte gUnk_03000198
_08092168: .4byte sub_08090B84
_0809216C: .4byte sub_08090E38
_08092170: .4byte sub_080910A8
_08092174: .4byte sub_080912CC
_08092178: .4byte sub_080914F0
_0809217C: .4byte sub_08091714
_08092180: .4byte sub_08091938
_08092184: .4byte sub_08091B5C
_08092188: .4byte sub_08091CF8
_0809218C: .4byte gUnk_03000170
	thumb_func_end sub_08092124

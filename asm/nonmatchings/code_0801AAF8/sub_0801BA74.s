	thumb_func_start sub_0801BA74
sub_0801BA74: @ 0x0801BA74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov r9, r0
	mov sl, r1
	mov r8, r2
	adds r6, r3, #0
	ldr r0, _0801BAB8
	ldr r4, [r0, #0]
	cmp r1, #0
	beq _0801BA96
	ldrh r0, [r1, #0]
	cmp r0, #2
	beq _0801BAC4
_0801BA96:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r4, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BAB4
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BABC
_0801BAB4:
	movs r0, #0
	b _0801BAD2
_0801BAB8: .4byte gUnk_030034E0
_0801BABC:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	b _0801BAC8
_0801BAC4:
	mov r1, sl
	ldrh r0, [r1, #2]
_0801BAC8:
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
_0801BAD2:
	str r0, [sp, #0x20]
	mov r2, sl
	cmp r2, #0
	beq _0801BAE0
	ldrh r0, [r2, #0]
	cmp r0, #3
	beq _0801BB12
_0801BAE0:
	ldr r0, _0801BB00
	ldr r1, [r0, #0]
	ldr r3, _0801BB04
	adds r0, r1, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BAFA
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BB08
_0801BAFA:
	movs r3, #0
	str r3, [sp, #0x28]
	b _0801BB22
_0801BB00: .4byte gUnk_030034E0
_0801BB04: .4byte 0x00000119
_0801BB08:
	movs r1, #0x89
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0, #0]
	b _0801BB16
_0801BB12:
	mov r2, sl
	ldrh r0, [r2, #2]
_0801BB16:
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x28]
_0801BB22:
	mov r3, sl
	cmp r3, #0
	beq _0801BB2E
	ldrh r0, [r3, #0]
	cmp r0, #4
	beq _0801BB5E
_0801BB2E:
	ldr r0, _0801BB4C
	ldr r1, [r0, #0]
	ldr r2, _0801BB50
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BB48
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BB54
_0801BB48:
	movs r0, #0
	b _0801BB6C
_0801BB4C: .4byte gUnk_030034E0
_0801BB50: .4byte 0x00000109
_0801BB54:
	movs r1, #0x81
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0, #0]
	b _0801BB62
_0801BB5E:
	mov r2, sl
	ldrh r0, [r2, #2]
_0801BB62:
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
_0801BB6C:
	str r0, [sp, #0x2c]
	mov r3, sl
	cmp r3, #0
	beq _0801BB7A
	ldrh r0, [r3, #0]
	cmp r0, #5
	beq _0801BBAA
_0801BB7A:
	ldr r0, _0801BB98
	ldr r1, [r0, #0]
	ldr r2, _0801BB9C
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BB94
	movs r3, #0x94
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BBA0
_0801BB94:
	movs r0, #0
	b _0801BBB8
_0801BB98: .4byte gUnk_030034E0
_0801BB9C: .4byte 0x00000129
_0801BBA0:
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0, #0]
	b _0801BBAE
_0801BBAA:
	mov r2, sl
	ldrh r0, [r2, #2]
_0801BBAE:
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
_0801BBB8:
	str r0, [sp, #0x30]
	mov r3, sl
	cmp r3, #0
	beq _0801BBC6
	ldrh r0, [r3, #0]
	cmp r0, #6
	beq _0801BBEE
_0801BBC6:
	ldr r0, _0801BBDC
	ldr r0, [r0, #0]
	ldr r1, _0801BBE0
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801BBE4
	movs r2, #0
	str r2, [sp, #0x24]
	b _0801BBFE
	.2byte 0x0000
_0801BBDC: .4byte gUnk_030034E0
_0801BBE0: .4byte 0x00000149
_0801BBE4:
	movs r3, #0xa1
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r0, [r0, #0]
	b _0801BBF2
_0801BBEE:
	mov r1, sl
	ldrh r0, [r1, #2]
_0801BBF2:
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x24]
_0801BBFE:
	mov r2, sl
	cmp r2, #0
	beq _0801BC0A
	ldrh r0, [r2, #0]
	cmp r0, #7
	beq _0801BC32
_0801BC0A:
	ldr r0, _0801BC20
	ldr r0, [r0, #0]
	ldr r3, _0801BC24
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801BC28
	movs r4, #0
	str r4, [sp, #0x34]
	b _0801BC42
	.2byte 0x0000
_0801BC20: .4byte gUnk_030034E0
_0801BC24: .4byte 0x00000139
_0801BC28:
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r0, [r0, #0]
	b _0801BC36
_0801BC32:
	mov r2, sl
	ldrh r0, [r2, #2]
_0801BC36:
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x34]
_0801BC42:
	ldr r7, _0801BD08
	ldr r0, [r7, #0]
	mov r1, r8
	adds r0, #0x10
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r1, _0801BD0C
	ldr r3, [r7, #0]
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	movs r1, #0
	movs r2, #0
	mov r4, r8
	strh r0, [r4, #8]
	ldrh r0, [r3, #0xa]
	mov r5, r9
	adds r5, #0x64
	strh r0, [r5, #0]
	ldrh r0, [r3, #0xc]
	mov r4, r9
	adds r4, #0x66
	strb r0, [r4, #0]
	strh r2, [r6, #0]
	strh r2, [r6, #2]
	strh r2, [r6, #4]
	movs r0, #0xff
	strh r0, [r6, #6]
	movs r0, #3
	strb r0, [r6, #0x1f]
	adds r3, r6, #0
	adds r3, #0x20
	strb r0, [r3, #0]
	strb r1, [r6, #0x1d]
	strb r1, [r6, #0x1e]
	strh r2, [r6, #8]
	strh r2, [r6, #0xa]
	strb r1, [r6, #0x12]
	strb r1, [r6, #0x13]
	strb r1, [r6, #0x14]
	strb r1, [r6, #0x15]
	strb r1, [r6, #0x11]
	strb r1, [r6, #0xf]
	strb r1, [r6, #0x16]
	strb r1, [r6, #0x17]
	strb r1, [r6, #0x18]
	movs r0, #0xa
	strb r0, [r6, #0x19]
	movs r0, #0x64
	strb r0, [r6, #0x1b]
	strb r1, [r6, #0x1c]
	strb r1, [r6, #0x1a]
	adds r0, r6, #0
	adds r0, #0x21
	strb r1, [r0, #0]
	adds r0, #3
	strh r2, [r6, #0x24]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #0
	str r1, [sp, #0x1c]
	str r5, [sp, #0x44]
	str r4, [sp, #0x48]
	str r3, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _0801BD4A
	mov r3, sl
	cmp r3, #0
	beq _0801BCE6
	ldrh r0, [r3, #0]
	cmp r0, #2
	beq _0801BD10
_0801BCE6:
	ldr r1, [r7, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BD28
	adds r1, #0x74
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0801BD18
	b _0801BD28
	.2byte 0x0000
_0801BD08: .4byte gUnk_030034E0
_0801BD0C: .4byte gUnk_0848FA48
_0801BD10:
	mov r4, sl
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0801BD28
_0801BD18:
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	b _0801BD2A
_0801BD28:
	movs r4, #0
_0801BD2A:
	ldr r0, [sp, #0x20]
	adds r0, #0xa4
	ldrb r0, [r0, #0]
	strh r0, [r6, #6]
	ldr r0, [sp, #0x20]
	adds r0, #0xb0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
	adds r0, r4, #0
	adds r0, #0xa0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
_0801BD4A:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0801BDB2
	mov r1, sl
	cmp r1, #0
	beq _0801BD5C
	ldrh r0, [r1, #0]
	cmp r0, #3
	beq _0801BD80
_0801BD5C:
	ldr r0, _0801BD78
	ldr r1, [r0, #0]
	ldr r2, _0801BD7C
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BD98
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0801BD88
	b _0801BD98
_0801BD78: .4byte gUnk_030034E0
_0801BD7C: .4byte 0x00000119
_0801BD80:
	mov r4, sl
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0801BD98
_0801BD88:
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	b _0801BD9A
_0801BD98:
	movs r4, #0
_0801BD9A:
	ldr r0, [sp, #0x28]
	adds r0, #0xa4
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
	adds r0, r4, #0
	adds r0, #0xa0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
_0801BDB2:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0801BE1A
	mov r1, sl
	cmp r1, #0
	beq _0801BDC4
	ldrh r0, [r1, #0]
	cmp r0, #4
	beq _0801BDE8
_0801BDC4:
	ldr r0, _0801BDE0
	ldr r1, [r0, #0]
	ldr r2, _0801BDE4
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BE00
	movs r3, #0x82
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0801BDF0
	b _0801BE00
_0801BDE0: .4byte gUnk_030034E0
_0801BDE4: .4byte 0x00000109
_0801BDE8:
	mov r4, sl
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0801BE00
_0801BDF0:
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	b _0801BE02
_0801BE00:
	movs r4, #0
_0801BE02:
	ldr r0, [sp, #0x2c]
	adds r0, #0xa4
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
	adds r0, r4, #0
	adds r0, #0xa0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
_0801BE1A:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0801BEC0
	mov r1, sl
	cmp r1, #0
	beq _0801BE2C
	ldrh r0, [r1, #0]
	cmp r0, #5
	beq _0801BE50
_0801BE2C:
	ldr r0, _0801BE48
	ldr r1, [r0, #0]
	ldr r2, _0801BE4C
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BE68
	movs r3, #0x92
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0801BE58
	b _0801BE68
_0801BE48: .4byte gUnk_030034E0
_0801BE4C: .4byte 0x00000129
_0801BE50:
	mov r4, sl
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0801BE68
_0801BE58:
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	b _0801BE6A
_0801BE68:
	movs r4, #0
_0801BE6A:
	ldr r0, [sp, #0x30]
	adds r0, #0xa4
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
	adds r0, r4, #0
	adds r0, #0xa0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
	ldr r0, [sp, #0x30]
	adds r0, #0xa0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801BEC0
	movs r4, #0x15
	ldrsb r4, [r6, r4]
	bl sub_0801DE60
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801BEA6
	cmp r0, #3
	beq _0801BEAC
	b _0801BEB8
_0801BEA6:
	ldr r0, [sp, #0x6c]
	movs r1, #3
	b _0801BEB0
_0801BEAC:
	ldr r0, [sp, #0x6c]
	movs r1, #2
_0801BEB0:
	bl sub_0801E0AC
	lsls r0, r0, #0x13
	lsrs r4, r0, #0x10
_0801BEB8:
	adds r0, r4, #0
	ldrb r1, [r6, #0x16]
	adds r0, r0, r1
	strb r0, [r6, #0x16]
_0801BEC0:
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0801BED2
	adds r0, r2, #0
	adds r0, #0xa0
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
_0801BED2:
	movs r3, #0
	str r3, [sp, #0x38]
	movs r0, #0x99
	lsls r0, r0, #1
	add r0, r9
	strh r3, [r0, #0]
	mov r0, r9
	ldr r5, [r0, #0x34]
	movs r1, #0
	str r1, [sp, #0x18]
_0801BEE6:
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r7, [r5, #0]
	cmp r1, #0
	bge _0801BEFA
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	beq _0801BEFA
	b _0801C308
_0801BEFA:
	ldrh r0, [r5, #2]
	mov ip, r0
	mov r3, ip
	cmp r3, #3
	bls _0801BF06
	b _0801C250
_0801BF06:
	ldr r2, _0801BF3C
	ldrh r3, [r5, #2]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r3, #0
	muls r4, r0, r4
	adds r0, r2, #0
	adds r0, #0x30
	adds r0, r4, r0
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _0801BF26
	b _0801C308
_0801BF26:
	adds r0, r4, r2
	ldrh r0, [r0, #0xc]
	cmp r0, #8
	bls _0801BF30
	b _0801C308
_0801BF30:
	lsls r0, r0, #2
	ldr r1, _0801BF40
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801BF3C: .4byte gUnk_03003CE0
_0801BF40: .4byte _0801BF44
_0801BF44:
	.4byte _0801BF68
_0801BF48: .4byte _0801BF9E
_0801BF4C: .4byte _0801C308
_0801BF50: .4byte _0801BFD0
_0801BF54: .4byte _0801C088
_0801BF58: .4byte _0801C1E4
_0801BF5C: .4byte _0801C11E
_0801BF60: .4byte _0801C21E
_0801BF64: .4byte _0801C11E
_0801BF68:
	ldrh r0, [r5, #4]
	cmp r0, #7
	beq _0801BF70
	b _0801C308
_0801BF70:
	mov r1, r9
	adds r1, #0x68
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r2
	adds r0, #0x68
	ldrb r1, [r1, #0]
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq _0801BF88
	b _0801C308
_0801BF88:
	ldrh r0, [r5, #6]
	lsls r1, r0, #1
	adds r0, #0x14
	muls r0, r1, r0
	movs r1, #0x14
	bl sub_080B9394
	ldrh r1, [r6, #0]
	adds r1, r1, r0
	strh r1, [r6, #0]
	b _0801C308
_0801BF9E:
	ldrh r0, [r5, #4]
	cmp r0, #6
	beq _0801BFA6
	b _0801C308
_0801BFA6:
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrh r4, [r6, #2]
	adds r0, r0, r4
	strh r0, [r6, #2]
	ldrh r0, [r5, #6]
	lsls r0, r0, #3
	ldrb r1, [r6, #0x16]
	adds r0, r0, r1
	strb r0, [r6, #0x16]
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #0xd
	bne _0801BFCC
	b _0801C308
_0801BFCC:
	movs r0, #1
	b _0801C306
_0801BFD0:
	ldrh r0, [r5, #4]
	cmp r0, #4
	beq _0801BFDC
	cmp r0, #6
	beq _0801C006
	b _0801C308
_0801BFDC:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x10]
	cmp r0, #2
	beq _0801BFF0
	cmp r0, #4
	beq _0801BFF6
	b _0801C308
_0801BFF0:
	ldrh r1, [r5, #6]
	lsls r1, r1, #3
	b _0801BFFE
_0801BFF6:
	ldrh r0, [r5, #6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
_0801BFFE:
	ldrh r0, [r6, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
	b _0801C308
_0801C006:
	mov r4, r9
	ldrh r1, [r4, #0]
	mov r4, ip
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _0801C016
	b _0801C308
_0801C016:
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r3, r4, r3
	adds r0, r3, r2
	adds r0, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r6, #0x10]
	cmp r0, r1
	bne _0801C02A
	b _0801C308
_0801C02A:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r0, r3, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldrh r0, [r5, #2]
	muls r0, r4, r0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _0801C080
	str r0, [sp, #0x10]
	ldr r0, _0801C084
	str r0, [sp, #0x14]
	mov r1, r9
	adds r1, #0x8c
	add r2, sp, #0x10
	add r3, sp, #0x14
	add r0, sp, #8
	bl sub_08021FE0
	cmp r0, #0
	bne _0801C068
	b _0801C308
_0801C068:
	ldrh r1, [r5, #6]
	lsls r1, r1, #2
	ldrh r0, [r6, #0]
	subs r0, r0, r1
	movs r1, #0
	strh r0, [r6, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0801C07C
	b _0801C308
_0801C07C:
	strh r1, [r6, #0]
	b _0801C308
_0801C080: .4byte 0x00300030
_0801C084: .4byte 0x00010001
_0801C088:
	ldrh r4, [r5, #4]
	cmp r4, #4
	beq _0801C09E
	cmp r4, #4
	bgt _0801C098
	cmp r4, #3
	beq _0801C0C2
	b _0801C308
_0801C098:
	cmp r4, #5
	beq _0801C0E2
	b _0801C308
_0801C09E:
	mov r0, r8
	adds r0, #0x14
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	bl sub_0801B6F4
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801C0BE
	b _0801C308
_0801C0BE:
	strh r4, [r1, #0]
	b _0801C308
_0801C0C2:
	ldrh r0, [r5, #0x10]
	ldrh r3, [r6, #2]
	adds r0, r0, r3
	strh r0, [r6, #2]
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801C0DE
	b _0801C308
_0801C0DE:
	movs r0, #2
	b _0801C306
_0801C0E2:
	ldrh r0, [r5, #8]
	mov r4, r8
	ldrh r4, [r4, #0]
	adds r0, r0, r4
	mov r1, r8
	strh r0, [r1, #0]
	ldrh r0, [r5, #0xa]
	ldrh r2, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5, #0xc]
	ldrh r3, [r1, #4]
	adds r0, r0, r3
	strh r0, [r1, #4]
	ldrh r0, [r5, #0xe]
	ldrh r4, [r1, #6]
	adds r0, r0, r4
	strh r0, [r1, #6]
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0801C11A
	b _0801C308
_0801C11A:
	movs r0, #3
	b _0801C306
_0801C11E:
	ldrh r0, [r5, #4]
	cmp r0, #4
	beq _0801C126
	b _0801C308
_0801C126:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0801C1D0
	ldrh r1, [r5, #6]
	movs r0, #0xd8
	adds r4, r1, #0
	muls r4, r0, r4
	ldr r0, _0801C1CC
	adds r4, r4, r0
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r9
	str r4, [r0, #0]
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0, #0]
	adds r0, #0xa
	ldr r1, [sp, #0x44]
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0xd6
	ldrh r0, [r0, #0]
	ldr r2, [sp, #0x48]
	strb r0, [r2, #0]
	ldrh r0, [r4, #0x28]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x20]
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	mov r3, r9
	strh r0, [r3, #0x10]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r1, #0
	str r1, [sp, #0x2c]
	movs r2, #0
	str r2, [sp, #0x30]
	ldr r0, [sp, #0x20]
	adds r0, #0xa4
	ldrb r0, [r0, #0]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0xa]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldrh r0, [r4, #0]
	mov r1, r8
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r2, #2]
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	strh r0, [r2, #6]
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r2, [r2, #4]
	adds r0, r0, r2
	mov r3, r8
	strh r0, [r3, #4]
	mov r0, r8
	adds r0, #0x14
	adds r4, #0x14
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	b _0801C308
_0801C1CC: .4byte gUnk_0847AD3C
_0801C1D0:
	ldr r0, _0801C1E0
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	b _0801C308
	.2byte 0x0000
_0801C1E0: .4byte gUnk_030034E0
_0801C1E4:
	ldrh r0, [r5, #4]
	cmp r0, #5
	beq _0801C1EC
	b _0801C308
_0801C1EC:
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r4, [r6, #0]
	adds r0, r0, r4
	strh r0, [r6, #0]
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	subs r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801C308
	movs r0, #7
	b _0801C306
_0801C21E:
	ldrh r2, [r5, #4]
	cmp r2, #4
	beq _0801C308
	cmp r2, #5
	bne _0801C308
	mov r3, r9
	ldr r0, [r3, #0x30]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801C308
	ldrh r1, [r5, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r4, r8
	ldrh r4, [r4, #8]
	adds r0, r0, r4
	mov r1, r8
	strh r0, [r1, #8]
	movs r0, #0x99
	lsls r0, r0, #1
	add r0, r9
	strh r2, [r0, #0]
	b _0801C308
_0801C250:
	ldrh r0, [r5, #4]
	subs r0, #1
	cmp r0, #6
	bhi _0801C308
	lsls r0, r0, #2
	ldr r1, _0801C264
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801C264: .4byte _0801C268
_0801C268:
	.4byte _0801C284
_0801C26C: .4byte _0801C29A
_0801C270: .4byte _0801C2BC
_0801C274: .4byte _0801C2D2
_0801C278: .4byte _0801C2E8
_0801C27C: .4byte _0801C2FE
_0801C280: .4byte _0801C2FE
_0801C284:
	lsls r0, r7, #0x10
	cmp r0, #0
	bne _0801C308
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #0xd
	beq _0801C308
	movs r0, #0xe
	b _0801C306
_0801C29A:
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #8]
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r1, #0xb4
	bl sub_080B942C
	strh r0, [r5, #0]
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #0xd
	beq _0801C308
	movs r0, #9
	b _0801C306
_0801C2BC:
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #0xd
	beq _0801C2CC
	movs r0, #0xa
	strh r0, [r1, #0]
_0801C2CC:
	movs r4, #1
	str r4, [sp, #0x38]
	b _0801C308
_0801C2D2:
	lsls r0, r7, #0x10
	cmp r0, #0
	bne _0801C308
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #0xd
	beq _0801C308
	movs r0, #0xb
	b _0801C306
_0801C2E8:
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	ldrh r0, [r1, #0]
	cmp r0, #0xd
	beq _0801C2F8
	movs r0, #0xc
	strh r0, [r1, #0]
_0801C2F8:
	movs r0, #2
	str r0, [sp, #0x38]
	b _0801C308
_0801C2FE:
	movs r1, #0x99
	lsls r1, r1, #1
	add r1, r9
	movs r0, #0xd
_0801C306:
	strh r0, [r1, #0]
_0801C308:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r5, #0x28
	cmp r0, #7
	bhi _0801C31A
	b _0801BEE6
_0801C31A:
	ldr r1, [sp, #0x24]
	str r1, [sp, #0]
	ldr r2, [sp, #0x34]
	str r2, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl sub_0801B8A8
	cmp r0, #0
	beq _0801C33A
	mov r1, r8
	adds r2, r6, #0
	bl sub_0801B264
_0801C33A:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _0801C38C
	adds r0, r3, #0
	adds r0, #0x9c
	ldrb r4, [r0, #0]
	bl sub_0801DE60
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x6c]
	adds r2, r4, #0
	bl sub_0801B58C
	ldrh r4, [r6, #0]
	adds r1, r0, r4
	strh r1, [r6, #0]
	mov r0, sl
	cmp r0, #0
	beq _0801C374
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0801C374
	mov r2, sl
	ldrb r0, [r2, #6]
	adds r0, r1, r0
	b _0801C38A
_0801C374:
	ldr r0, _0801C3B8
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x76
	ldrh r0, [r6, #0]
	ldrb r1, [r1, #0]
	adds r0, r0, r1
_0801C38A:
	strh r0, [r6, #0]
_0801C38C:
	mov r3, r8
	ldrh r0, [r3, #0]
	ldrh r4, [r6, #0]
	adds r0, r0, r4
	strh r0, [r6, #0]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0801C42E
	adds r0, #0x9b
	ldrb r4, [r0, #0]
	bl sub_0801DE60
	adds r5, r4, #0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801C3BC
	cmp r0, #3
	beq _0801C3CC
	b _0801C3FA
_0801C3B8: .4byte gUnk_030034E0
_0801C3BC:
	ldr r0, [sp, #0x6c]
	movs r1, #4
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #4
	b _0801C3DA
_0801C3CC:
	ldr r0, [sp, #0x6c]
	movs r1, #3
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #3
_0801C3DA:
	bl sub_0801E0AC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xf
	adds r1, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801C3FA:
	ldr r1, [sp, #0x1c]
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	mov r2, sl
	cmp r2, #0
	beq _0801C418
	ldrh r0, [r2, #0]
	cmp r0, #3
	bne _0801C418
	ldrb r0, [r2, #6]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	b _0801C428
_0801C418:
	ldr r0, _0801C454
	ldr r0, [r0, #0]
	movs r4, #0x8b
	lsls r4, r4, #1
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
_0801C428:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_0801C42E:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _0801C474
	adds r0, r2, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801C474
	mov r3, sl
	cmp r3, #0
	beq _0801C458
	ldrh r0, [r3, #0]
	cmp r0, #2
	bne _0801C458
	ldrb r0, [r3, #6]
	ldr r4, [sp, #0x1c]
	adds r0, r4, r0
	b _0801C46E
	.2byte 0x0000
_0801C454: .4byte gUnk_030034E0
_0801C458:
	ldr r0, _0801C498
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x76
	ldrb r0, [r1, #0]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
_0801C46E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_0801C474:
	ldr r2, [sp, #0x2c]
	cmp r2, #0
	beq _0801C50E
	adds r0, r2, #0
	adds r0, #0x9b
	ldrb r4, [r0, #0]
	bl sub_0801DE60
	adds r5, r4, #0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801C49C
	cmp r0, #3
	beq _0801C4AC
	b _0801C4DA
_0801C498: .4byte gUnk_030034E0
_0801C49C:
	ldr r0, [sp, #0x6c]
	movs r1, #4
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #4
	b _0801C4BA
_0801C4AC:
	ldr r0, [sp, #0x6c]
	movs r1, #3
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #3
_0801C4BA:
	bl sub_0801E0AC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xf
	adds r1, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801C4DA:
	ldr r3, [sp, #0x1c]
	adds r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	mov r4, sl
	cmp r4, #0
	beq _0801C4F8
	ldrh r0, [r4, #0]
	cmp r0, #4
	bne _0801C4F8
	ldrb r0, [r4, #6]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	b _0801C508
_0801C4F8:
	ldr r0, _0801C540
	ldr r0, [r0, #0]
	movs r2, #0x83
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
_0801C508:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_0801C50E:
	ldr r4, [sp, #0x30]
	cmp r4, #0
	bne _0801C516
	b _0801C618
_0801C516:
	adds r0, r4, #0
	adds r0, #0xa0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0801C588
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r4, [r0, #0]
	bl sub_0801DE60
	adds r5, r4, #0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801C544
	cmp r0, #3
	beq _0801C554
	b _0801C582
	.2byte 0x0000
_0801C540: .4byte gUnk_030034E0
_0801C544:
	ldr r0, [sp, #0x6c]
	movs r1, #3
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #3
	b _0801C562
_0801C554:
	ldr r0, [sp, #0x6c]
	movs r1, #2
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #2
_0801C562:
	bl sub_0801E0AC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xf
	adds r1, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801C582:
	ldr r1, [sp, #0x1c]
	adds r0, r1, r5
	b _0801C5E8
_0801C588:
	ldr r0, [sp, #0x30]
	adds r0, #0x9b
	ldrb r4, [r0, #0]
	bl sub_0801DE60
	adds r5, r4, #0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801C5A6
	cmp r0, #3
	beq _0801C5B6
	b _0801C5E4
_0801C5A6:
	ldr r0, [sp, #0x6c]
	movs r1, #4
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #4
	b _0801C5C4
_0801C5B6:
	ldr r0, [sp, #0x6c]
	movs r1, #3
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #3
_0801C5C4:
	bl sub_0801E0AC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xf
	adds r1, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801C5E4:
	ldr r2, [sp, #0x1c]
	adds r0, r2, r5
_0801C5E8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	mov r3, sl
	cmp r3, #0
	beq _0801C602
	ldrh r0, [r3, #0]
	cmp r0, #5
	bne _0801C602
	ldrb r0, [r3, #6]
	ldr r4, [sp, #0x1c]
	adds r0, r4, r0
	b _0801C612
_0801C602:
	ldr r0, _0801C6A8
	ldr r0, [r0, #0]
	movs r1, #0x93
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
_0801C612:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
_0801C618:
	ldrh r0, [r6, #2]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	strh r0, [r6, #2]
	mov r4, r8
	ldrh r0, [r4, #0x14]
	ldrh r1, [r6, #0x24]
	adds r0, r0, r1
	strh r0, [r6, #0x24]
	ldrh r0, [r4, #0x16]
	ldrh r2, [r6, #0x26]
	adds r0, r0, r2
	strh r0, [r6, #0x26]
	ldrh r0, [r4, #0x18]
	ldrh r3, [r6, #0x28]
	adds r0, r0, r3
	strh r0, [r6, #0x28]
	ldrh r0, [r4, #0x1a]
	ldrh r4, [r6, #0x2a]
	adds r0, r0, r4
	strh r0, [r6, #0x2a]
	mov r1, r8
	ldrh r0, [r1, #0x1c]
	ldrh r2, [r6, #0x2c]
	adds r0, r0, r2
	strh r0, [r6, #0x2c]
	ldrh r0, [r1, #0x1e]
	ldrh r3, [r6, #0x2e]
	adds r0, r0, r3
	strh r0, [r6, #0x2e]
	movs r4, #6
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bgt _0801C660
	movs r0, #1
	strh r0, [r1, #6]
_0801C660:
	mov r1, r8
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _0801C66E
	movs r0, #0
	strh r0, [r1, #4]
_0801C66E:
	mov r3, r8
	movs r4, #6
	ldrsh r1, [r3, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrh r1, [r6, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0xa]
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrh r3, [r6, #8]
	adds r0, r0, r3
	strh r0, [r6, #8]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0801C748
	lsls r0, r0, #2
	ldr r1, _0801C6AC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801C6A8: .4byte gUnk_030034E0
_0801C6AC: .4byte _0801C6B0
_0801C6B0:
	.4byte _0801C6D0
_0801C6B4: .4byte _0801C748
_0801C6B8: .4byte _0801C6FC
_0801C6BC: .4byte _0801C70E
_0801C6C0: .4byte _0801C748
_0801C6C4: .4byte _0801C724
_0801C6C8: .4byte _0801C748
_0801C6CC: .4byte _0801C736
_0801C6D0:
	ldr r0, [sp, #0x6c]
	movs r1, #7
	bl sub_0801E0AC
	adds r4, r0, #0
	ldr r0, [sp, #0x6c]
	movs r1, #7
	bl sub_0801E0AC
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xf
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x14
	muls r0, r4, r0
	movs r1, #0x14
	bl sub_080B9394
	ldrh r1, [r6, #0]
	adds r1, r1, r0
	strh r1, [r6, #0]
	b _0801C748
_0801C6FC:
	ldr r0, [sp, #0x6c]
	movs r1, #6
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldrh r4, [r6, #4]
	adds r0, r0, r4
	b _0801C746
_0801C70E:
	ldr r0, [sp, #0x6c]
	movs r1, #7
	bl sub_0801E0AC
	adds r1, r0, #0
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x40]
	bl sub_0801B6F4
	b _0801C748
_0801C724:
	ldr r0, [sp, #0x6c]
	movs r1, #3
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldrh r1, [r6, #4]
	adds r0, r0, r1
	b _0801C746
_0801C736:
	ldr r0, [sp, #0x6c]
	movs r1, #2
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldrh r2, [r6, #4]
	adds r0, r0, r2
_0801C746:
	strh r0, [r6, #4]
_0801C748:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	beq _0801C772
	mov r4, r8
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r1, #0x14
	bl sub_080B9394
	ldrh r1, [r6, #6]
	subs r1, r1, r0
	strh r1, [r6, #6]
	movs r2, #6
	ldrsh r1, [r6, r2]
	ldr r0, [sp, #0x20]
	adds r0, #0xa4
	ldrb r0, [r0, #0]
	lsrs r0, r0, #1
	cmp r1, r0
	bge _0801C772
	strh r0, [r6, #6]
_0801C772:
	movs r0, #1
	ldr r3, [sp, #0x38]
	ands r0, r3
	cmp r0, #0
	beq _0801C78E
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r6, #2]
	mov r4, r8
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #8]
_0801C78E:
	movs r0, #2
	ldr r1, [sp, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _0801C7A2
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r2, #2]
_0801C7A2:
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0801C7AE
	movs r0, #0
	strh r0, [r6, #0]
_0801C7AE:
	movs r4, #2
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _0801C7BA
	movs r0, #0
	strh r0, [r6, #2]
_0801C7BA:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0801C7C6
	movs r0, #0
	strh r0, [r6, #4]
_0801C7C6:
	mov r2, sl
	cmp r2, #0
	beq _0801C7D2
	ldrh r0, [r2, #0]
	cmp r0, #6
	beq _0801C7EA
_0801C7D2:
	ldrb r1, [r6, #0x1f]
	ldr r0, _0801C8E8
	ldr r0, [r0, #0]
	adds r4, r0, #0
	adds r4, #0x68
	ldrh r3, [r4, #0]
	cmp r1, r3
	bhi _0801C7EA
	ldrh r0, [r4, #0]
	bl sub_080B942C
	strh r0, [r4, #0]
_0801C7EA:
	mov r4, sl
	cmp r4, #0
	beq _0801C7F6
	ldrh r0, [r4, #0]
	cmp r0, #6
	beq _0801C810
_0801C7F6:
	ldr r0, [sp, #0x3c]
	ldrb r1, [r0, #0]
	ldr r0, _0801C8E8
	ldr r0, [r0, #0]
	adds r4, r0, #0
	adds r4, #0x54
	ldrh r2, [r4, #0]
	cmp r1, r2
	bhi _0801C810
	ldrh r0, [r4, #0]
	bl sub_080B942C
	strh r0, [r4, #0]
_0801C810:
	bl sub_0801DF8C
	cmp r0, #0
	beq _0801C82A
	ldr r1, _0801C8EC
	ldr r0, _0801C8E8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	mov r3, r8
	strh r0, [r3, #8]
_0801C82A:
	movs r4, #0x24
	ldrsh r0, [r6, r4]
	cmp r0, #0xc8
	ble _0801C836
	movs r0, #0xc8
	strh r0, [r6, #0x24]
_0801C836:
	movs r1, #0x26
	ldrsh r0, [r6, r1]
	cmp r0, #0xc8
	ble _0801C842
	movs r0, #0xc8
	strh r0, [r6, #0x26]
_0801C842:
	movs r2, #0x28
	ldrsh r0, [r6, r2]
	cmp r0, #0xc8
	ble _0801C84E
	movs r0, #0xc8
	strh r0, [r6, #0x28]
_0801C84E:
	movs r3, #0x2a
	ldrsh r0, [r6, r3]
	cmp r0, #0xc8
	ble _0801C85A
	movs r0, #0xc8
	strh r0, [r6, #0x2a]
_0801C85A:
	movs r4, #0x2c
	ldrsh r0, [r6, r4]
	cmp r0, #0xc8
	ble _0801C866
	movs r0, #0xc8
	strh r0, [r6, #0x2c]
_0801C866:
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	cmp r0, #0xc8
	ble _0801C872
	movs r0, #0xc8
	strh r0, [r6, #0x2e]
_0801C872:
	movs r2, #0x24
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0801C87E
	movs r0, #0
	strh r0, [r6, #0x24]
_0801C87E:
	movs r3, #0x26
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0801C88A
	movs r0, #0
	strh r0, [r6, #0x26]
_0801C88A:
	movs r4, #0x28
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _0801C896
	movs r0, #0
	strh r0, [r6, #0x28]
_0801C896:
	movs r1, #0x2a
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _0801C8A2
	movs r0, #0
	strh r0, [r6, #0x2a]
_0801C8A2:
	movs r2, #0x2c
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0801C8AE
	movs r0, #0
	strh r0, [r6, #0x2c]
_0801C8AE:
	movs r3, #0x2e
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _0801C8BA
	movs r0, #0
	strh r0, [r6, #0x2e]
_0801C8BA:
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0801C8C8
	movs r0, #0
	strh r0, [r4, #0]
_0801C8C8:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0801C8D6
	movs r0, #0
	strh r0, [r2, #2]
_0801C8D6:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801C8E8: .4byte gUnk_030034E0
_0801C8EC: .4byte gUnk_0848FA48
	thumb_func_end sub_0801BA74

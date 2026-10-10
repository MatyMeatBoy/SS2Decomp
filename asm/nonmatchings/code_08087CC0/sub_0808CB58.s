	thumb_func_start sub_0808CB58
sub_0808CB58: @ 0x0808CB58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	ldr r0, _0808CB78
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0808CBD6
	lsls r0, r0, #2
	ldr r1, _0808CB7C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0808CB78: .4byte gUnk_03003470
_0808CB7C: .4byte _0808CB80
_0808CB80:
	.4byte _0808CB94
_0808CB84: .4byte _0808CB9C
_0808CB88: .4byte _0808CBA4
_0808CB8C: .4byte _0808CBAC
_0808CB90: .4byte _0808CBC4
_0808CB94:
	ldr r1, _0808CB98
	b _0808CBAE
_0808CB98: .4byte 0x00050006
_0808CB9C:
	ldr r1, _0808CBA0
	b _0808CBAE
_0808CBA0: .4byte 0x00050007
_0808CBA4:
	ldr r1, _0808CBA8
	b _0808CBAE
_0808CBA8: .4byte 0x00050008
_0808CBAC:
	ldr r1, _0808CBC0
_0808CBAE:
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #0
	bl sub_08065158
	b _0808CBD6
_0808CBC0: .4byte 0x00050009
_0808CBC4:
	ldr r1, _0808CBFC
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #0
	bl sub_08065158
_0808CBD6:
	bl sub_0800CF58
	movs r2, #0xdf
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x79
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	mov r0, sp
	adds r0, #0x4c
	str r0, [sp, #0x5c]
	add r1, sp, #0x3c
	mov r8, r1
	b _0808CC04
_0808CBFC: .4byte 0x0005000A
_0808CC00:
	bl sub_080003F0
_0808CC04:
	bl sub_08067C18
	cmp r0, #0
	beq _0808CC00
	b _0808CC12
_0808CC0E:
	bl sub_080003F0
_0808CC12:
	bl sub_08067C08
	cmp r0, #0
	beq _0808CC0E
	bl sub_08067BF8
	movs r6, #0
	movs r4, #0
	ldr r7, _0808CC30
	movs r2, #0xa6
	lsls r2, r2, #1
	mov r9, r2
	adds r5, r7, #0
	adds r5, #0x68
	b _0808CC54
_0808CC30: .4byte gUnk_03003CE0
_0808CC34:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	ldrb r2, [r5, #0]
	cmp r0, r2
	bne _0808CC4C
	adds r6, #1
_0808CC4C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r5, r0
	adds r4, #1
_0808CC54:
	bl sub_08002164
	cmp r4, r0
	bhs _0808CC64
	bl sub_080020F4
	cmp r0, r4
	bne _0808CC34
_0808CC64:
	ldr r1, _0808CCEC
	mov r9, r1
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	add r0, r9
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0808CCF4
	ldr r4, _0808CCF0
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r9
	adds r0, #0x68
	ldrb r1, [r0, #0]
	subs r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r5, [r0, #0]
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r9
	adds r0, #0x68
	ldrb r0, [r0, #0]
	subs r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r4, #2
	adds r1, r1, r0
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r2, r2, #1
	ldrh r1, [r1, #0]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r9
	adds r0, #0x68
	ldrb r1, [r0, #0]
	subs r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #4
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	bl sub_080290E4
	b _0808CD14
	.2byte 0x0000
_0808CCEC: .4byte gUnk_03003CE0
_0808CCF0: .4byte gUnk_084F0C8A
_0808CCF4:
	ldr r4, _0808CD20
	lsls r1, r6, #5
	ldrh r0, [r4, #0x18]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1a]
	movs r0, #0
	movs r3, #0
	bl sub_08028AAC
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	movs r0, #0
	bl sub_080290E4
_0808CD14:
	movs r4, #0
	ldr r0, _0808CD24
	ldr r6, [sp, #0x5c]
	adds r5, r0, #0
	adds r5, #0x68
	b _0808CD34
_0808CD20: .4byte gUnk_084F0C8A
_0808CD24: .4byte gUnk_03003CE0
_0808CD28:
	ldrb r0, [r5, #0]
	stm r6!, {r0}
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r5, r5, r0
	adds r4, #1
_0808CD34:
	bl sub_08002164
	cmp r4, r0
	blo _0808CD28
	ldr r1, _0808CD88
	movs r0, #0
	bl sub_08057328
	ldr r0, _0808CD8C
	ldr r0, [r0, #0]
	adds r0, #0x5a
	movs r1, #0
	strh r1, [r0, #0]
	bl sub_08057934
	ldr r0, _0808CD90
	bl sub_080003F4
	movs r5, #0
_0808CD5A:
	bl sub_080020F4
	lsls r0, r0, #2
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0808CD6E
	bl sub_08015C14
_0808CD6E:
	ldr r0, _0808CD8C
	ldr r0, [r0, #0]
	adds r0, #0x5a
	movs r1, #0
	strh r1, [r0, #0]
	movs r4, #0
	mov r0, r8
_0808CD7C:
	stm r0!, {r1}
	adds r4, #1
	cmp r4, #3
	bls _0808CD7C
	movs r4, #0
	b _0808CDDE
_0808CD88: .4byte sub_0802F208
_0808CD8C: .4byte gUnk_03005CF4
_0808CD90: .4byte 0x09999000
_0808CD94:
	ldr r3, _0808CE14
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, #0
	muls r2, r0, r2
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r2, r0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _0808CDDC
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r2, r0
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0808CDDC
	adds r0, r2, r3
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0808CDDC
	subs r0, #3
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
_0808CDDC:
	adds r4, #1
_0808CDDE:
	bl sub_08002164
	cmp r4, r0
	blo _0808CD94
	movs r2, #0
	movs r4, #0
	ldr r3, _0808CE18
	mov r1, r8
_0808CDEE:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _0808CDFC
	adds r2, #1
	ldr r0, [r3, #0]
	adds r0, #0x5a
	strh r4, [r0, #0]
_0808CDFC:
	adds r1, #4
	adds r4, #1
	cmp r4, #3
	bls _0808CDEE
	cmp r2, #1
	bhi _0808CE1C
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #2
	bhi _0808CE26
	b _0808CE1E
	.2byte 0x0000
_0808CE14: .4byte gUnk_03003CE0
_0808CE18: .4byte gUnk_03005CF4
_0808CE1C:
	movs r5, #0
_0808CE1E:
	movs r0, #1
	bl sub_08057624
	b _0808CD5A
_0808CE26:
	cmp r2, #1
	beq _0808CE2C
	b _0808CF96
_0808CE2C:
	movs r6, #0
	movs r4, #0
	ldr r5, [sp, #0x5c]
	b _0808CE4E
_0808CE34:
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _0808CE4A
	subs r1, #3
	ldr r0, _0808CE58
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r1, r0
	bne _0808CE4A
	adds r6, #1
_0808CE4A:
	adds r5, #4
	adds r4, #1
_0808CE4E:
	bl sub_08002164
	cmp r4, r0
	blo _0808CE34
	b _0808CE60
_0808CE58: .4byte gUnk_03005CF4
_0808CE5C:
	bl sub_080003F0
_0808CE60:
	bl sub_0805EF90
	cmp r0, #0
	bne _0808CE5C
	cmp r6, #1
	bhi _0808CEF8
	movs r4, #0
	b _0808CE72
_0808CE70:
	adds r4, #1
_0808CE72:
	bl sub_08002164
	cmp r4, r0
	bhs _0808CEA0
	ldr r3, _0808CEB4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r2, r0
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0808CE70
	adds r0, r2, r3
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0808CE70
_0808CEA0:
	cmp r4, #1
	beq _0808CEC8
	cmp r4, #1
	blo _0808CEB8
	cmp r4, #2
	beq _0808CED8
	cmp r4, #3
	beq _0808CEE8
	b _0808CF64
	.2byte 0x0000
_0808CEB4: .4byte gUnk_03003CE0
_0808CEB8:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CEC4
	b _0808CF54
	.2byte 0x0000
_0808CEC4: .4byte 0x001401FB
_0808CEC8:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CED4
	b _0808CF54
	.2byte 0x0000
_0808CED4: .4byte 0x001401FC
_0808CED8:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CEE4
	b _0808CF54
	.2byte 0x0000
_0808CEE4: .4byte 0x001401FD
_0808CEE8:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CEF4
	b _0808CF54
	.2byte 0x0000
_0808CEF4: .4byte 0x001401FE
_0808CEF8:
	ldr r0, _0808CF10
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0808CF2C
	cmp r0, #1
	bgt _0808CF14
	cmp r0, #0
	beq _0808CF1E
	b _0808CF64
	.2byte 0x0000
_0808CF10: .4byte gUnk_03005CF4
_0808CF14:
	cmp r0, #2
	beq _0808CF3C
	cmp r0, #3
	beq _0808CF4C
	b _0808CF64
_0808CF1E:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CF28
	b _0808CF54
_0808CF28: .4byte 0x001401FF
_0808CF2C:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CF38
	b _0808CF54
	.2byte 0x0000
_0808CF38: .4byte 0x00140200
_0808CF3C:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CF48
	b _0808CF54
	.2byte 0x0000
_0808CF48: .4byte 0x00140201
_0808CF4C:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0808CF80
_0808CF54:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	mov sl, r0
_0808CF64:
	bl sub_080020F4
	ldr r2, _0808CF84
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x68
	movs r1, #0
	strb r1, [r0, #0]
	bl sub_0806617C
	b _0808CF8C
	.2byte 0x0000
_0808CF80: .4byte 0x00140202
_0808CF84: .4byte gUnk_03003CE0
_0808CF88:
	bl sub_080003F0
_0808CF8C:
	mov r0, sl
	bl sub_0805EEFC
	cmp r0, #0
	beq _0808CF88
_0808CF96:
	ldr r0, _0808CFD4
	movs r1, #0
	bl sub_080257D4
	bl sub_08056E24
	bl sub_080020F4
	lsls r0, r0, #2
	ldr r2, [sp, #0x5c]
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0808CFE2
	bl sub_080020F4
	ldr r1, _0808CFD8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_08067D74
	b _0808CFE2
	.2byte 0x0000
_0808CFD4: .4byte gUnk_084F0C28
_0808CFD8: .4byte gUnk_03003CE0
_0808CFDC:
	movs r0, #1
	bl sub_08057624
_0808CFE2:
	bl sub_08056E90
	cmp r0, #0
	beq _0808CFDC
	bl sub_080020F4
	lsls r0, r0, #2
	ldr r1, [sp, #0x5c]
	adds r0, r1, r0
	ldr r0, [r0, #0]
	subs r0, #3
	ldr r4, _0808D010
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x5a
	ldrh r2, [r2, #0]
	cmp r0, r2
	bne _0808D014
	adds r1, #0x58
	movs r0, #0
	strh r0, [r1, #0]
	b _0808D032
	.2byte 0x0000
_0808D010: .4byte gUnk_03005CF4
_0808D014:
	bl sub_080020F4
	lsls r0, r0, #2
	ldr r2, [sp, #0x5c]
	adds r0, r2, r0
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0808D02A
	ldr r0, [r4, #0]
	adds r0, #0x58
	b _0808D030
_0808D02A:
	ldr r0, [r4, #0]
	adds r0, #0x58
	movs r1, #2
_0808D030:
	strh r1, [r0, #0]
_0808D032:
	ldr r0, _0808D058
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x40]
	movs r0, #1
	strh r0, [r1, #0x36]
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0808D058: .4byte gUnk_03005CF4
	thumb_func_end sub_0808CB58

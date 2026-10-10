	thumb_func_start sub_080698D4
sub_080698D4: @ 0x080698D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	ldrh r1, [r0, #0xa]
	str r1, [sp, #0x4c]
	ldrh r4, [r0, #4]
	ldrh r5, [r0, #0]
	ldrh r6, [r0, #2]
	ldr r1, _08069918
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	subs r0, r4, #1
	cmp r0, #0xd
	bhi _08069968
	lsls r0, r0, #2
	ldr r1, _0806991C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08069918: .4byte 0x0005008C
_0806991C: .4byte _08069920
_08069920:
	.4byte _0806995C
_08069924: .4byte _08069958
_08069928: .4byte _08069968
_0806992C: .4byte _08069968
_08069930: .4byte _0806995C
_08069934: .4byte _08069960
_08069938: .4byte _08069968
_0806993C: .4byte _08069968
_08069940: .4byte _08069968
_08069944: .4byte _08069968
_08069948: .4byte _08069968
_0806994C: .4byte _08069968
_08069950: .4byte _08069968
_08069954: .4byte _08069964
_08069958:
	movs r4, #0x1d
	b _08069978
_0806995C:
	movs r4, #0x1c
	b _08069978
_08069960:
	movs r4, #0x20
	b _08069978
_08069964:
	movs r4, #0xd
	b _08069978
_08069968:
	ldr r2, _08069974
	movs r1, #1
	ldr r3, [sp, #0x4c]
	lsls r1, r3
	b _08069A14
	.2byte 0x0000
_08069974: .4byte gUnk_0300641C
_08069978:
	add r2, sp, #0x48
	movs r1, #0
	strh r1, [r2, #0]
	mov r0, sp
	adds r0, #0x4a
	strh r1, [r0, #0]
	lsls r5, r5, #0x10
	str r5, [sp, #0x50]
	lsls r6, r6, #0x10
	mov sl, r6
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0x54]
	mov r6, sp
	adds r6, #0x46
	mov r9, r1
	mov r8, r2
_0806999A:
	movs r0, #0x30
	str r0, [sp, #0]
	mov r0, r9
	str r0, [sp, #4]
	ldr r1, [sp, #0x50]
	asrs r0, r1, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	ldr r2, [sp, #0x54]
	adds r3, r6, #0
	bl sub_0800BC08
	mov r3, r9
	str r3, [sp, #0]
	add r0, sp, #0x10
	adds r1, r4, #0
	mov r2, r8
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0800CC98
	cmp r0, #0
	bne _08069A04
	bl sub_0800CD8C
	cmp r0, #0
	bne _08069A04
	bl sub_0800CCCC
	adds r2, r0, #0
	cmp r2, #0
	bne _08069A04
	ldr r7, [sp, #0x54]
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov r7, r8
	ldrh r3, [r7, #0]
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08007870
_08069A04:
	bl sub_080003F0
	cmp r5, #0
	beq _0806999A
	ldr r2, _08069A2C
	movs r1, #1
	ldr r0, [sp, #0x4c]
	lsls r1, r0
_08069A14:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08069A2C: .4byte gUnk_0300641C
	thumb_func_end sub_080698D4

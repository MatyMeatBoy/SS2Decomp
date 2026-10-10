	thumb_func_start sub_0805AE94
sub_0805AE94: @ 0x0805AE94
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r2, #0xa
	mov r9, r2
	ldrh r0, [r4, #0]
	subs r0, #1
	cmp r0, #9
	bls _0805AEB6
	b _0805B016
_0805AEB6:
	lsls r0, r0, #2
	ldr r1, _0805AEC0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0805AEC0: .4byte _0805AEC4
_0805AEC4:
	.4byte _0805AEEC
_0805AEC8: .4byte _0805AEFE
_0805AECC: .4byte _0805AF18
_0805AED0: .4byte _0805AF20
_0805AED4: .4byte _0805AF50
_0805AED8: .4byte _0805AF82
_0805AEDC: .4byte _0805AF3A
_0805AEE0: .4byte _0805B006
_0805AEE4: .4byte _0805AF9C
_0805AEE8: .4byte _0805B002
_0805AEEC:
	ldrh r0, [r4, #2]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldr r5, [r0, #0]
	b _0805B016
_0805AEFE:
	ldrh r0, [r4, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xa0
	ldr r5, [r0, #0]
	ldrb r6, [r4, #8]
	ldrb r7, [r4, #6]
	ldrb r0, [r4, #7]
	mov r8, r0
	b _0805AF68
_0805AF18:
	ldrh r0, [r4, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	b _0805AF56
_0805AF20:
	ldrh r0, [r4, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldr r5, [r0, #0]
	ldrb r6, [r4, #8]
	ldrb r7, [r4, #6]
	ldrb r0, [r4, #7]
	mov r8, r0
	b _0805AF68
_0805AF3A:
	ldrh r0, [r4, #2]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldr r5, [r0, #0]
	movs r6, #0
	movs r7, #0
	b _0805B016
_0805AF50:
	ldrh r0, [r4, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
_0805AF56:
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldr r5, [r0, #0]
	ldrb r6, [r4, #8]
	ldrb r7, [r4, #6]
	ldrb r2, [r4, #7]
	mov r8, r2
_0805AF68:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0805B016
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldrh r0, [r0, #0]
	mov r9, r0
	b _0805B016
_0805AF82:
	ldrh r0, [r4, #2]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldr r5, [r0, #0]
	movs r6, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	b _0805B016
_0805AF9C:
	ldrh r0, [r4, #2]
	movs r1, #0xa8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	ldrh r0, [r4, #2]
	cmp r0, #4
	bhi _0805B016
	lsls r0, r0, #2
	ldr r1, _0805AFB8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0805AFB8: .4byte _0805AFBC
_0805AFBC:
	.4byte _0805AFD0
_0805AFC0: .4byte _0805AFDA
_0805AFC4: .4byte _0805AFE4
_0805AFC8: .4byte _0805AFEE
_0805AFCC: .4byte _0805AFF8
_0805AFD0:
	ldrh r1, [r4, #4]
	movs r0, #0x64
	adds r5, r1, #0
	muls r5, r0, r5
	b _0805B016
_0805AFDA:
	ldrh r1, [r4, #4]
	movs r0, #0xfa
	adds r5, r1, #0
	muls r5, r0, r5
	b _0805B016
_0805AFE4:
	ldrh r1, [r4, #4]
	movs r0, #0xc8
	adds r5, r1, #0
	muls r5, r0, r5
	b _0805B016
_0805AFEE:
	ldrh r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r5, r0, #1
	b _0805B016
_0805AFF8:
	ldrh r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r5, r0, #2
	b _0805B016
_0805B002:
	ldr r5, [r4, #4]
	b _0805B016
_0805B006:
	ldrh r0, [r4, #2]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9c
	ldrh r5, [r0, #0]
_0805B016:
	cmp r6, #0
	bne _0805B058
	mov r0, r9
	muls r0, r5, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	ldr r1, _0805B050
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	ldr r1, _0805B054
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	muls r0, r5, r0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	b _0805B05A
	.2byte 0x0000
_0805B050: .4byte gUnk_084B24B0
_0805B054: .4byte gUnk_084B2504
_0805B058:
	movs r0, #1
_0805B05A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805AE94

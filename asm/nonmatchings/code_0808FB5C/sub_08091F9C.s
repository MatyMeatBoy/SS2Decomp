	thumb_func_start sub_08091F9C
sub_08091F9C: @ 0x08091F9C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08091FB0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08091FAC
	cmp r0, #4
	bls _08092014
_08091FAC:
	movs r4, #0
	b _08092004
_08091FB0: .4byte gUnk_03003470
_08091FB4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bne _08091FC0
	movs r0, #0x51
	b _08091FF4
_08091FC0:
	adds r0, r2, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08091FD2
	adds r0, r2, #0
	subs r0, #0x40
	b _08091FF4
_08091FD2:
	adds r0, r2, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08091FE4
	adds r0, r2, #0
	subs r0, #0x40
	b _08091FF4
_08091FE4:
	adds r0, r2, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0809200C
	adds r0, r2, #0
	adds r0, #0x10
_08091FF4:
	strb r0, [r1, #0]
	adds r3, #1
	adds r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xfe
	bhi _08092074
_08092004:
	ldrb r0, [r3, #0]
	adds r2, r0, #0
	cmp r2, #0
	bne _08091FB4
_0809200C:
	movs r0, #0xfd
	b _08092072
_08092010:
	movs r0, #0xfd
	b _08092072
_08092014:
	movs r4, #0
	b _08092066
_08092018:
	cmp r0, #0x20
	bne _08092022
	movs r0, #0x51
	strb r0, [r1, #0]
	b _08092058
_08092022:
	adds r0, r2, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bls _0809203A
	adds r0, r2, #0
	subs r0, #0x61
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08092042
_0809203A:
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r1, #0]
	b _08092058
_08092042:
	adds r0, r2, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08092056
	adds r0, r2, #0
	adds r0, #0xf
	strb r0, [r1, #0]
	b _08092058
_08092056:
	strb r2, [r1, #0]
_08092058:
	adds r3, #1
	adds r1, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xfe
	bhi _08092074
_08092066:
	ldrb r2, [r3, #0]
	adds r0, r2, #0
	cmp r0, #0
	beq _08092010
	cmp r0, #0xfd
	bne _08092018
_08092072:
	strb r0, [r1, #0]
_08092074:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08091F9C

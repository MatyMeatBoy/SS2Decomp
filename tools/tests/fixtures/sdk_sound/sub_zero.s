.syntax unified
.thumb
.text
.global zero_original
.type zero_original,%function
.thumb_func
zero_original:
    subs r0,r1,#0
    cmp r1,#0
    bx lr
.size zero_original,.-zero_original
.global zero_fused
.type zero_fused,%function
.thumb_func
zero_fused:
    subs r0,r1,#0
    bx lr
.size zero_fused,.-zero_fused

register unsigned int base asm("r0");
register unsigned int count asm("r1");
register unsigned int aux asm("r2");
void callback(void);
void byte_gt(void) __attribute__((naked));
void byte_gt(void){count=*(unsigned char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=*(unsigned char *)(base+11);done:;}
asm("bx lr");
void byte_le(void) __attribute__((naked));
void byte_le(void){count=*(unsigned char *)(base+4);count-=1;if((int)count<=0)goto done;*(unsigned char *)(base+4)=*(unsigned char *)(base+11);done:;}
asm("bx lr");
void unproved(void) __attribute__((naked));
void unproved(void){count=*(unsigned int *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void signed_byte(void) __attribute__((naked));
void signed_byte(void){count=*(signed char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void halfword(void) __attribute__((naked));
void halfword(void){count=*(unsigned short *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void overflow(void) __attribute__((naked));
void overflow(void){count=*(unsigned int *)(base+4);count+=0x80000000u;count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void opaque_between(void) __attribute__((naked));
void opaque_between(void){count=*(unsigned char *)(base+4);asm volatile("nop" :::"memory");count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void carry_condition(void) __attribute__((naked));
void carry_condition(void){count=*(unsigned char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if(count>1)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void opaque_after(void) __attribute__((naked));
void opaque_after(void){count=*(unsigned char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;asm volatile("nop" :::"memory");}
asm("bx lr");
void copied_reg(void) __attribute__((naked));
void copied_reg(void){aux=*(unsigned char *)(base+4);count=aux;count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void redefined(void) __attribute__((naked));
void redefined(void){count=*(unsigned char *)(base+4);count+=*(unsigned int *)(base+12);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void flow(void) __attribute__((naked));
void flow(void){count=*(unsigned char *)(base+4);if(aux&1)count+=2;count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("bx lr");
void carry_after(void) __attribute__((naked));
void carry_after(void){count=*(unsigned char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;asm volatile("bcs 1f\nmov r2,#99\n1:" :::"r2");}
asm("bx lr");
void overflow_after(void) __attribute__((naked));
void overflow_after(void){count=*(unsigned char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;asm volatile("bvs 1f\nmov r2,#99\n1:" :::"r2");}
asm("bx lr");
void mixed_after(void) __attribute__((naked));
void mixed_after(void){count=*(unsigned char *)(base+4);count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;asm volatile("bcs 1f\nmov r2,#99\n1:" :::"r2");}
asm("bx lr");
void volatile_store(void) __attribute__((naked));
void volatile_store(void){count=*(unsigned char *)(base+4);count-=1;*(volatile unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=*(unsigned char *)(base+11);done:;}
asm("bx lr");
void callback(void) __attribute__((naked));
void callback(void){;}
asm("bx lr");
void call_between(void) __attribute__((naked));
void call_between(void){asm("push {lr}");count=*(unsigned char *)(base+4);callback();count-=1;*(unsigned char *)(base+4)=count;if((int)count>0)goto done;*(unsigned char *)(base+4)=7;done:;}
asm("pop {r3}\nmov lr,r3\nbx lr");

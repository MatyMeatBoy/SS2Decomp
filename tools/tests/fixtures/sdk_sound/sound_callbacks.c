typedef unsigned int u32;
typedef void (*Fn)(void);
extern void SoundMain(void);
#define INFO (*(volatile u32 **)0x03007FF0)
#define MON ((volatile u32 *)0x02004020)
void head_plain(volatile u32 *p) { p[0]++; p[1] = INFO[0]; }
void head_reenter(volatile u32 *p) { p[0]++; p[1] = INFO[0]; SoundMain(); p[2] = INFO[0]; }
void cgb_callback(void) { MON[0]++; MON[1] = INFO[0]; }

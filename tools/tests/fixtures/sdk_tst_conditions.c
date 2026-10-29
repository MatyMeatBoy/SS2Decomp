int and_eq(int a, int b) {return (a&b)==0;}
int and_ne(int a, int b) {return (a&b)!=0;}
int and_gt(int a, int b) {return (a&b)>0;}
int and_ge(int a, int b) {return (a&b)>=0;}
int and_lt(int a, int b) {return (a&b)<0;}
int and_le(int a, int b) {return (a&b)<=0;}
int and_live(int a, int b, int *out) {a&=b; *out=a; if(a>0) return 5; return 7;}
int and_live_eq(int a,int b,int *out){a&=b;*out=a;if(a==0)return 5;return 7;}
int and_two(int a,int b){int x=a&b;int v=0;if(x==0)v|=1;if(x<0)v|=2;if(x>0)v|=4;return v;}
int and_live_two(int a,int b,int *out){int x=a&b;*out=x;if(x==0)return 11;if(x<0)return 13;return 17;}
int negative_spin(int expected){for(;;){}}

extern unsigned half_literal(unsigned x);
extern const unsigned shared_words[2];
unsigned pad_a0(unsigned x){return x;}
unsigned half_call(unsigned x){unsigned v=half_literal(x);if(x&1)return v^shared_words[0];return v+shared_words[1];}
unsigned pad_a1(unsigned x){return x;}
unsigned half_branch(unsigned x){if(x<128)return half_literal(x);return half_literal(x+1);}

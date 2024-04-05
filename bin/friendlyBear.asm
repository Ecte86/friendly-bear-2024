; Compiled with 1.27.239
--------------------------------------------------------------------
startup: ; startup
0801 : 0b __ __ INV
0802 : 08 __ __ PHP
0803 : 0a __ __ ASL
0804 : 00 __ __ BRK
0805 : 9e __ __ INV
0806 : 32 __ __ INV
0807 : 30 36 __ BMI $083f ; (startup + 62)
0809 : 31 00 __ AND ($00),y 
080b : 00 __ __ BRK
080c : 00 __ __ BRK
080d : ba __ __ TSX
080e : 8e 2c 0b STX $0b2c ; (spentry + 0)
0811 : a9 e5 __ LDA #$e5
0813 : 85 19 __ STA IP + 0 
0815 : a9 0b __ LDA #$0b
0817 : 85 1a __ STA IP + 1 
0819 : 38 __ __ SEC
081a : a9 0b __ LDA #$0b
081c : e9 0b __ SBC #$0b
081e : f0 0f __ BEQ $082f ; (startup + 46)
0820 : aa __ __ TAX
0821 : a9 00 __ LDA #$00
0823 : a0 00 __ LDY #$00
0825 : 91 19 __ STA (IP + 0),y 
0827 : c8 __ __ INY
0828 : d0 fb __ BNE $0825 ; (startup + 36)
082a : e6 1a __ INC IP + 1 
082c : ca __ __ DEX
082d : d0 f6 __ BNE $0825 ; (startup + 36)
082f : 38 __ __ SEC
0830 : a9 eb __ LDA #$eb
0832 : e9 e5 __ SBC #$e5
0834 : f0 08 __ BEQ $083e ; (startup + 61)
0836 : a8 __ __ TAY
0837 : a9 00 __ LDA #$00
0839 : 88 __ __ DEY
083a : 91 19 __ STA (IP + 0),y 
083c : d0 fb __ BNE $0839 ; (startup + 56)
083e : a2 f7 __ LDX #$f7
0840 : e0 f7 __ CPX #$f7
0842 : f0 07 __ BEQ $084b ; (startup + 74)
0844 : 95 00 __ STA $00,x 
0846 : e8 __ __ INX
0847 : e0 f7 __ CPX #$f7
0849 : d0 f9 __ BNE $0844 ; (startup + 67)
084b : a9 f2 __ LDA #$f2
084d : 85 23 __ STA SP + 0 
084f : a9 9f __ LDA #$9f
0851 : 85 24 __ STA SP + 1 
0853 : 20 80 08 JSR $0880 ; (main.s0 + 0)
0856 : a9 4c __ LDA #$4c
0858 : 85 54 __ STA $54 
085a : a9 00 __ LDA #$00
085c : 85 13 __ STA P6 
085e : a9 19 __ LDA #$19
0860 : 85 16 __ STA P9 
0862 : 60 __ __ RTS
--------------------------------------------------------------------
main: ; main()->i16
.s0:
0880 : a9 f4 __ LDA #$f4
0882 : 85 13 __ STA P6 
0884 : a9 9f __ LDA #$9f
0886 : 85 14 __ STA P7 
0888 : 20 9f 08 JSR $089f ; (BearSprite::+BearSprite.s0 + 0)
088b : a9 f4 __ LDA #$f4
088d : 8d fe 9f STA $9ffe ; (sstack + 0)
0890 : a9 9f __ LDA #$9f
0892 : 8d ff 9f STA $9fff ; (sstack + 1)
0895 : 20 f8 08 JSR $08f8 ; (BearSprite::setupSprite.s0 + 0)
0898 : a9 00 __ LDA #$00
089a : 85 1b __ STA ACCU + 0 
089c : 85 1c __ STA ACCU + 1 
.s1001:
089e : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::+BearSprite: ; BearSprite::+BearSprite(const struct BearSprite*)->void
.s0:
089f : a9 2d __ LDA #$2d
08a1 : a0 00 __ LDY #$00
08a3 : 84 1c __ STY ACCU + 1 
08a5 : 91 13 __ STA (P6),y ; (this + 0)
08a7 : a9 0b __ LDA #$0b
08a9 : c8 __ __ INY
08aa : 91 13 __ STA (P6),y ; (this + 0)
08ac : a9 04 __ LDA #$04
08ae : 85 1b __ STA ACCU + 0 
08b0 : 20 6d 0a JSR $0a6d ; (malloc + 0)
08b3 : a5 1b __ LDA ACCU + 0 
08b5 : a0 08 __ LDY #$08
08b7 : 91 13 __ STA (P6),y ; (this + 0)
08b9 : a5 1c __ LDA ACCU + 1 
08bb : c8 __ __ INY
08bc : 91 13 __ STA (P6),y ; (this + 0)
08be : a9 80 __ LDA #$80
08c0 : a0 02 __ LDY #$02
08c2 : 91 13 __ STA (P6),y ; (this + 0)
08c4 : a9 03 __ LDA #$03
08c6 : a8 __ __ TAY
08c7 : 91 13 __ STA (P6),y ; (this + 0)
08c9 : a9 c0 __ LDA #$c0
08cb : c8 __ __ INY
08cc : 91 13 __ STA (P6),y ; (this + 0)
08ce : a9 03 __ LDA #$03
08d0 : c8 __ __ INY
08d1 : 91 13 __ STA (P6),y ; (this + 0)
08d3 : a9 00 __ LDA #$00
08d5 : c8 __ __ INY
08d6 : 91 13 __ STA (P6),y ; (this + 0)
08d8 : a9 04 __ LDA #$04
08da : c8 __ __ INY
08db : 91 13 __ STA (P6),y ; (this + 0)
08dd : a5 1b __ LDA ACCU + 0 
08df : 05 1c __ ORA ACCU + 1 
08e1 : f0 14 __ BEQ $08f7 ; (BearSprite::+BearSprite.s1001 + 0)
.s2:
08e3 : a9 a0 __ LDA #$a0
08e5 : a0 00 __ LDY #$00
08e7 : 91 1b __ STA (ACCU + 0),y 
08e9 : 98 __ __ TYA
08ea : c8 __ __ INY
08eb : 91 1b __ STA (ACCU + 0),y 
08ed : a9 64 __ LDA #$64
08ef : c8 __ __ INY
08f0 : 91 1b __ STA (ACCU + 0),y 
08f2 : a9 00 __ LDA #$00
08f4 : c8 __ __ INY
08f5 : 91 1b __ STA (ACCU + 0),y 
.s1001:
08f7 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::setupSprite: ; BearSprite::setupSprite(const struct BearSprite*)->void
.s0:
08f8 : ad fe 9f LDA $9ffe ; (sstack + 0)
08fb : 85 43 __ STA T0 + 0 
08fd : ad ff 9f LDA $9fff ; (sstack + 1)
0900 : 85 44 __ STA T0 + 1 
0902 : a0 00 __ LDY #$00
0904 : b1 43 __ LDA (T0 + 0),y 
0906 : 85 1b __ STA ACCU + 0 
0908 : c8 __ __ INY
0909 : b1 43 __ LDA (T0 + 0),y 
090b : 85 1c __ STA ACCU + 1 
090d : c8 __ __ INY
090e : b1 43 __ LDA (T0 + 0),y 
0910 : 85 45 __ STA T2 + 0 
0912 : c8 __ __ INY
0913 : b1 43 __ LDA (T0 + 0),y 
0915 : 85 46 __ STA T2 + 1 
0917 : a0 7f __ LDY #$7f
.l1002:
0919 : b1 1b __ LDA (ACCU + 0),y 
091b : 91 45 __ STA (T2 + 0),y 
091d : 88 __ __ DEY
091e : d0 f9 __ BNE $0919 ; (BearSprite::setupSprite.l1002 + 0)
.s1003:
0920 : b1 1b __ LDA (ACCU + 0),y 
0922 : 91 45 __ STA (T2 + 0),y 
0924 : a0 06 __ LDY #$06
0926 : b1 43 __ LDA (T0 + 0),y 
0928 : 18 __ __ CLC
0929 : 69 f8 __ ADC #$f8
092b : 8d e5 0b STA $0be5 ; (vspriteScreen + 0)
092e : c8 __ __ INY
092f : b1 43 __ LDA (T0 + 0),y 
0931 : 69 03 __ ADC #$03
0933 : 8d e6 0b STA $0be6 ; (vspriteScreen + 1)
0936 : a9 04 __ LDA #$04
0938 : 85 1b __ STA ACCU + 0 
093a : a9 00 __ LDA #$00
093c : 85 1c __ STA ACCU + 1 
093e : 20 6d 0a JSR $0a6d ; (malloc + 0)
0941 : a5 1b __ LDA ACCU + 0 
0943 : 85 0d __ STA P0 
0945 : a0 08 __ LDY #$08
0947 : 91 43 __ STA (T0 + 0),y 
0949 : a5 1c __ LDA ACCU + 1 
094b : 85 0e __ STA P1 
094d : c8 __ __ INY
094e : 91 43 __ STA (T0 + 0),y 
0950 : 05 0d __ ORA P0 
0952 : f0 14 __ BEQ $0968 ; (BearSprite::setupSprite.s3 + 0)
.s2:
0954 : a9 a0 __ LDA #$a0
0956 : a0 00 __ LDY #$00
0958 : 91 0d __ STA (P0),y 
095a : 98 __ __ TYA
095b : c8 __ __ INY
095c : 91 0d __ STA (P0),y 
095e : a9 64 __ LDA #$64
0960 : c8 __ __ INY
0961 : 91 0d __ STA (P0),y 
0963 : a9 00 __ LDA #$00
0965 : c8 __ __ INY
0966 : 91 0d __ STA (P0),y 
.s3:
0968 : 20 b9 09 JSR $09b9 ; (SpritePosition::getX.s0 + 0)
096b : a5 1b __ LDA ACCU + 0 
096d : 85 43 __ STA T0 + 0 
096f : a5 1c __ LDA ACCU + 1 
0971 : 85 44 __ STA T0 + 1 
0973 : 20 c5 09 JSR $09c5 ; (SpritePosition::getY.s0 + 0)
0976 : a5 1b __ LDA ACCU + 0 
0978 : 85 11 __ STA P4 
097a : a5 1c __ LDA ACCU + 1 
097c : 85 12 __ STA P5 
097e : a9 00 __ LDA #$00
0980 : 85 0d __ STA P0 
0982 : 85 14 __ STA P7 
0984 : 85 15 __ STA P8 
0986 : 85 16 __ STA P9 
0988 : 85 17 __ STA P10 
098a : a9 01 __ LDA #$01
098c : 85 0e __ STA P1 
098e : a5 43 __ LDA T0 + 0 
0990 : 85 0f __ STA P2 
0992 : a5 44 __ LDA T0 + 1 
0994 : 85 10 __ STA P3 
0996 : a9 0f __ LDA #$0f
0998 : 85 13 __ STA P6 
099a : 20 d1 09 JSR $09d1 ; (spr_set.s0 + 0)
099d : e6 0d __ INC P0 
099f : e6 15 __ INC P8 
09a1 : a5 44 __ LDA T0 + 1 
09a3 : 85 10 __ STA P3 
09a5 : c6 13 __ DEC P6 
09a7 : a9 08 __ LDA #$08
09a9 : 85 14 __ STA P7 
09ab : 20 d1 09 JSR $09d1 ; (spr_set.s0 + 0)
09ae : a9 09 __ LDA #$09
09b0 : 8d 25 d0 STA $d025 
09b3 : a9 01 __ LDA #$01
09b5 : 8d 26 d0 STA $d026 
.s1001:
09b8 : 60 __ __ RTS
--------------------------------------------------------------------
SpritePosition::getX: ; SpritePosition::getX(const struct SpritePosition*)->i16
.s0:
09b9 : a0 00 __ LDY #$00
09bb : b1 0d __ LDA (P0),y ; (this + 0)
09bd : 85 1b __ STA ACCU + 0 
09bf : c8 __ __ INY
09c0 : b1 0d __ LDA (P0),y ; (this + 0)
09c2 : 85 1c __ STA ACCU + 1 
.s1001:
09c4 : 60 __ __ RTS
--------------------------------------------------------------------
SpritePosition::getY: ; SpritePosition::getY(const struct SpritePosition*)->i16
.s0:
09c5 : a0 02 __ LDY #$02
09c7 : b1 0d __ LDA (P0),y ; (this + 0)
09c9 : 85 1b __ STA ACCU + 0 
09cb : c8 __ __ INY
09cc : b1 0d __ LDA (P0),y ; (this + 0)
09ce : 85 1c __ STA ACCU + 1 
.s1001:
09d0 : 60 __ __ RTS
--------------------------------------------------------------------
spr_set: ; spr_set(u8,bool,i16,i16,u8,u8,bool,bool,bool)->void
.s0:
09d1 : a6 0d __ LDX P0 ; (sp + 0)
09d3 : bd b5 0b LDA $0bb5,x ; (bitshift + 8)
09d6 : 85 1b __ STA ACCU + 0 
09d8 : a5 0e __ LDA P1 ; (show + 0)
09da : d0 0a __ BNE $09e6 ; (spr_set.s3 + 0)
.s4:
09dc : a9 ff __ LDA #$ff
09de : 45 1b __ EOR ACCU + 0 
09e0 : 2d 15 d0 AND $d015 
09e3 : 4c eb 09 JMP $09eb ; (spr_set.s19 + 0)
.s3:
09e6 : a5 1b __ LDA ACCU + 0 
09e8 : 0d 15 d0 ORA $d015 
.s19:
09eb : 8d 15 d0 STA $d015 
09ee : a5 15 __ LDA P8 ; (multi + 0)
09f0 : d0 0a __ BNE $09fc ; (spr_set.s6 + 0)
.s7:
09f2 : a9 ff __ LDA #$ff
09f4 : 45 1b __ EOR ACCU + 0 
09f6 : 2d 1c d0 AND $d01c 
09f9 : 4c 01 0a JMP $0a01 ; (spr_set.s20 + 0)
.s6:
09fc : ad 1c d0 LDA $d01c 
09ff : 05 1b __ ORA ACCU + 0 
.s20:
0a01 : 8d 1c d0 STA $d01c 
0a04 : a5 16 __ LDA P9 ; (xexpand + 0)
0a06 : d0 0a __ BNE $0a12 ; (spr_set.s9 + 0)
.s10:
0a08 : a9 ff __ LDA #$ff
0a0a : 45 1b __ EOR ACCU + 0 
0a0c : 2d 1d d0 AND $d01d 
0a0f : 4c 17 0a JMP $0a17 ; (spr_set.s21 + 0)
.s9:
0a12 : ad 1d d0 LDA $d01d 
0a15 : 05 1b __ ORA ACCU + 0 
.s21:
0a17 : 8d 1d d0 STA $d01d 
0a1a : a5 17 __ LDA P10 ; (yexpand + 0)
0a1c : d0 0a __ BNE $0a28 ; (spr_set.s12 + 0)
.s13:
0a1e : a9 ff __ LDA #$ff
0a20 : 45 1b __ EOR ACCU + 0 
0a22 : 2d 17 d0 AND $d017 
0a25 : 4c 2d 0a JMP $0a2d ; (spr_set.s14 + 0)
.s12:
0a28 : ad 17 d0 LDA $d017 
0a2b : 05 1b __ ORA ACCU + 0 
.s14:
0a2d : 8d 17 d0 STA $d017 
0a30 : 8a __ __ TXA
0a31 : 0a __ __ ASL
0a32 : a8 __ __ TAY
0a33 : a5 11 __ LDA P4 ; (ypos + 0)
0a35 : 99 01 d0 STA $d001,y 
0a38 : a5 0f __ LDA P2 ; (xpos + 0)
0a3a : 99 00 d0 STA $d000,y 
0a3d : 46 10 __ LSR P3 ; (xpos + 1)
0a3f : 90 07 __ BCC $0a48 ; (spr_set.s16 + 0)
.s15:
0a41 : a5 1b __ LDA ACCU + 0 
0a43 : 0d 10 d0 ORA $d010 
0a46 : b0 07 __ BCS $0a4f ; (spr_set.s17 + 0)
.s16:
0a48 : a9 ff __ LDA #$ff
0a4a : 45 1b __ EOR ACCU + 0 
0a4c : 2d 10 d0 AND $d010 
.s17:
0a4f : 8d 10 d0 STA $d010 
0a52 : ad e5 0b LDA $0be5 ; (vspriteScreen + 0)
0a55 : 18 __ __ CLC
0a56 : 65 0d __ ADC P0 ; (sp + 0)
0a58 : 85 1b __ STA ACCU + 0 
0a5a : ad e6 0b LDA $0be6 ; (vspriteScreen + 1)
0a5d : 69 00 __ ADC #$00
0a5f : 85 1c __ STA ACCU + 1 
0a61 : a5 13 __ LDA P6 ; (image + 0)
0a63 : a0 00 __ LDY #$00
0a65 : 91 1b __ STA (ACCU + 0),y 
0a67 : a5 14 __ LDA P7 ; (color + 0)
0a69 : 9d 27 d0 STA $d027,x 
.s1001:
0a6c : 60 __ __ RTS
--------------------------------------------------------------------
malloc: ; malloc
0a6d : 18 __ __ CLC
0a6e : a5 1b __ LDA ACCU + 0 
0a70 : 69 02 __ ADC #$02
0a72 : 85 03 __ STA WORK + 0 
0a74 : a5 1c __ LDA ACCU + 1 
0a76 : 69 00 __ ADC #$00
0a78 : 85 04 __ STA WORK + 1 
0a7a : ad e9 0b LDA $0be9 ; (HeapNode + 2)
0a7d : d0 1f __ BNE $0a9e ; (malloc + 49)
0a7f : a9 00 __ LDA #$00
0a81 : 8d f0 0b STA $0bf0 
0a84 : 8d f1 0b STA $0bf1 
0a87 : ee e9 0b INC $0be9 ; (HeapNode + 2)
0a8a : a9 f0 __ LDA #$f0
0a8c : 8d e7 0b STA $0be7 ; (HeapNode + 0)
0a8f : a9 0b __ LDA #$0b
0a91 : 8d e8 0b STA $0be8 ; (HeapNode + 1)
0a94 : a9 00 __ LDA #$00
0a96 : 8d f2 0b STA $0bf2 
0a99 : a9 90 __ LDA #$90
0a9b : 8d f3 0b STA $0bf3 
0a9e : a9 e7 __ LDA #$e7
0aa0 : a2 0b __ LDX #$0b
0aa2 : 85 1d __ STA ACCU + 2 
0aa4 : 86 1e __ STX ACCU + 3 
0aa6 : 18 __ __ CLC
0aa7 : a0 00 __ LDY #$00
0aa9 : b1 1d __ LDA (ACCU + 2),y 
0aab : 85 1b __ STA ACCU + 0 
0aad : 65 03 __ ADC WORK + 0 
0aaf : 85 05 __ STA WORK + 2 
0ab1 : c8 __ __ INY
0ab2 : b1 1d __ LDA (ACCU + 2),y 
0ab4 : 85 1c __ STA ACCU + 1 
0ab6 : f0 18 __ BEQ $0ad0 ; (malloc + 99)
0ab8 : 65 04 __ ADC WORK + 1 
0aba : 85 06 __ STA WORK + 3 
0abc : a0 02 __ LDY #$02
0abe : b1 1b __ LDA (ACCU + 0),y 
0ac0 : c5 05 __ CMP WORK + 2 
0ac2 : c8 __ __ INY
0ac3 : b1 1b __ LDA (ACCU + 0),y 
0ac5 : e5 06 __ SBC WORK + 3 
0ac7 : b0 08 __ BCS $0ad1 ; (malloc + 100)
0ac9 : a5 1b __ LDA ACCU + 0 
0acb : a6 1c __ LDX ACCU + 1 
0acd : 4c a2 0a JMP $0aa2 ; (malloc + 53)
0ad0 : 60 __ __ RTS
0ad1 : 18 __ __ CLC
0ad2 : a5 05 __ LDA WORK + 2 
0ad4 : 69 03 __ ADC #$03
0ad6 : 29 fc __ AND #$fc
0ad8 : 85 07 __ STA WORK + 4 
0ada : a5 06 __ LDA WORK + 3 
0adc : 69 00 __ ADC #$00
0ade : 85 08 __ STA WORK + 5 
0ae0 : a0 02 __ LDY #$02
0ae2 : a5 07 __ LDA WORK + 4 
0ae4 : d1 1b __ CMP (ACCU + 0),y 
0ae6 : d0 15 __ BNE $0afd ; (malloc + 144)
0ae8 : c8 __ __ INY
0ae9 : a5 08 __ LDA WORK + 5 
0aeb : d1 1b __ CMP (ACCU + 0),y 
0aed : d0 0e __ BNE $0afd ; (malloc + 144)
0aef : a0 00 __ LDY #$00
0af1 : b1 1b __ LDA (ACCU + 0),y 
0af3 : 91 1d __ STA (ACCU + 2),y 
0af5 : c8 __ __ INY
0af6 : b1 1b __ LDA (ACCU + 0),y 
0af8 : 91 1d __ STA (ACCU + 2),y 
0afa : 4c 1a 0b JMP $0b1a ; (malloc + 173)
0afd : a0 00 __ LDY #$00
0aff : b1 1b __ LDA (ACCU + 0),y 
0b01 : 91 07 __ STA (WORK + 4),y 
0b03 : a5 07 __ LDA WORK + 4 
0b05 : 91 1d __ STA (ACCU + 2),y 
0b07 : c8 __ __ INY
0b08 : b1 1b __ LDA (ACCU + 0),y 
0b0a : 91 07 __ STA (WORK + 4),y 
0b0c : a5 08 __ LDA WORK + 5 
0b0e : 91 1d __ STA (ACCU + 2),y 
0b10 : c8 __ __ INY
0b11 : b1 1b __ LDA (ACCU + 0),y 
0b13 : 91 07 __ STA (WORK + 4),y 
0b15 : c8 __ __ INY
0b16 : b1 1b __ LDA (ACCU + 0),y 
0b18 : 91 07 __ STA (WORK + 4),y 
0b1a : a0 00 __ LDY #$00
0b1c : a5 05 __ LDA WORK + 2 
0b1e : 91 1b __ STA (ACCU + 0),y 
0b20 : c8 __ __ INY
0b21 : a5 06 __ LDA WORK + 3 
0b23 : 91 1b __ STA (ACCU + 0),y 
0b25 : a5 1b __ LDA ACCU + 0 
0b27 : 09 02 __ ORA #$02
0b29 : 85 1b __ STA ACCU + 0 
0b2b : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
0b2c : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
sp_data:
0b2d : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 28 a4 20 2a : ............(. *
0b3d : __ __ __ BYT a9 60 0a a5 60 0a a5 60 0a aa 60 02 ef 40 02 ef : .`..`..`..`..@..
0b4d : __ __ __ BYT 80 02 aa a0 0a 85 90 0a a5 50 0a a6 60 02 a9 40 : .........P..`..@
0b5d : __ __ __ BYT 01 55 40 00 55 00 00 28 00 00 00 00 00 00 00 98 : .U@.U..(........
0b6d : __ __ __ BYT 00 00 00 00 00 00 00 00 00 38 00 38 24 10 48 20 : .........8.8$.H 
0b7d : __ __ __ BYT 10 08 39 87 18 01 01 00 01 00 00 00 28 00 04 6c : ..9.........(..l
0b8d : __ __ __ BYT 20 04 00 20 08 38 10 08 10 10 08 92 10 04 7c 20 :  .. .8........| 
0b9d : __ __ __ BYT 04 00 20 03 81 c0 00 7e 00 00 00 00 00 00 00 10 : .. ....~........
--------------------------------------------------------------------
bitshift:
0bad : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
0bbd : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
0bcd : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
0bdd : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........
--------------------------------------------------------------------
vspriteScreen:
0be5 : __ __ __ BSS	2
--------------------------------------------------------------------
HeapNode:
0be7 : __ __ __ BSS	4

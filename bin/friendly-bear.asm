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
080e : 8e 04 0a STX $0a04 ; (spentry + 0)
0811 : a9 bd __ LDA #$bd
0813 : 85 19 __ STA IP + 0 
0815 : a9 0a __ LDA #$0a
0817 : 85 1a __ STA IP + 1 
0819 : 38 __ __ SEC
081a : a9 0a __ LDA #$0a
081c : e9 0a __ SBC #$0a
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
0830 : a9 bf __ LDA #$bf
0832 : e9 bd __ SBC #$bd
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
084b : a9 f0 __ LDA #$f0
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
0880 : a9 f2 __ LDA #$f2
0882 : 85 0d __ STA P0 
0884 : a9 9f __ LDA #$9f
0886 : 85 0e __ STA P1 
0888 : 20 9f 08 JSR $089f ; (BearSprite::+BearSprite.s0 + 0)
088b : a9 f2 __ LDA #$f2
088d : 8d fe 9f STA $9ffe ; (sstack + 0)
0890 : a9 9f __ LDA #$9f
0892 : 8d ff 9f STA $9fff ; (sstack + 1)
0895 : 20 d8 08 JSR $08d8 ; (BearSprite::setupSprite.s0 + 0)
0898 : a9 00 __ LDA #$00
089a : 85 1b __ STA ACCU + 0 
089c : 85 1c __ STA ACCU + 1 
.s1001:
089e : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::+BearSprite: ; BearSprite::+BearSprite(const struct BearSprite*)->void
.s0:
089f : a9 00 __ LDA #$00
08a1 : a0 08 __ LDY #$08
08a3 : 91 0d __ STA (P0),y ; (this + 0)
08a5 : c8 __ __ INY
08a6 : 91 0d __ STA (P0),y ; (this + 0)
08a8 : c8 __ __ INY
08a9 : 91 0d __ STA (P0),y ; (this + 0)
08ab : c8 __ __ INY
08ac : 91 0d __ STA (P0),y ; (this + 0)
08ae : a9 05 __ LDA #$05
08b0 : a0 00 __ LDY #$00
08b2 : 91 0d __ STA (P0),y ; (this + 0)
08b4 : a9 0a __ LDA #$0a
08b6 : c8 __ __ INY
08b7 : 91 0d __ STA (P0),y ; (this + 0)
08b9 : a9 80 __ LDA #$80
08bb : c8 __ __ INY
08bc : 91 0d __ STA (P0),y ; (this + 0)
08be : a9 03 __ LDA #$03
08c0 : a8 __ __ TAY
08c1 : 91 0d __ STA (P0),y ; (this + 0)
08c3 : a9 c0 __ LDA #$c0
08c5 : c8 __ __ INY
08c6 : 91 0d __ STA (P0),y ; (this + 0)
08c8 : a9 03 __ LDA #$03
08ca : c8 __ __ INY
08cb : 91 0d __ STA (P0),y ; (this + 0)
08cd : a9 00 __ LDA #$00
08cf : c8 __ __ INY
08d0 : 91 0d __ STA (P0),y ; (this + 0)
08d2 : a9 04 __ LDA #$04
08d4 : c8 __ __ INY
08d5 : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
08d7 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::setupSprite: ; BearSprite::setupSprite(const struct BearSprite*)->void
.s0:
08d8 : a9 00 __ LDA #$00
08da : 85 0d __ STA P0 
08dc : 85 10 __ STA P3 
08de : 85 12 __ STA P5 
08e0 : 85 14 __ STA P7 
08e2 : 85 15 __ STA P8 
08e4 : 85 16 __ STA P9 
08e6 : 85 17 __ STA P10 
08e8 : a9 a0 __ LDA #$a0
08ea : 85 0f __ STA P2 
08ec : a9 64 __ LDA #$64
08ee : 85 11 __ STA P4 
08f0 : a9 0f __ LDA #$0f
08f2 : 85 13 __ STA P6 
08f4 : ad fe 9f LDA $9ffe ; (sstack + 0)
08f7 : 85 43 __ STA T0 + 0 
08f9 : ad ff 9f LDA $9fff ; (sstack + 1)
08fc : 85 44 __ STA T0 + 1 
08fe : a0 00 __ LDY #$00
0900 : b1 43 __ LDA (T0 + 0),y 
0902 : 85 45 __ STA T1 + 0 
0904 : c8 __ __ INY
0905 : 84 0e __ STY P1 
0907 : b1 43 __ LDA (T0 + 0),y 
0909 : 85 46 __ STA T1 + 1 
090b : c8 __ __ INY
090c : b1 43 __ LDA (T0 + 0),y 
090e : 85 47 __ STA T2 + 0 
0910 : c8 __ __ INY
0911 : b1 43 __ LDA (T0 + 0),y 
0913 : 85 48 __ STA T2 + 1 
0915 : a0 7f __ LDY #$7f
.l1002:
0917 : b1 45 __ LDA (T1 + 0),y 
0919 : 91 47 __ STA (T2 + 0),y 
091b : 88 __ __ DEY
091c : d0 f9 __ BNE $0917 ; (BearSprite::setupSprite.l1002 + 0)
.s1003:
091e : b1 45 __ LDA (T1 + 0),y 
0920 : 91 47 __ STA (T2 + 0),y 
0922 : a9 a0 __ LDA #$a0
0924 : a0 08 __ LDY #$08
0926 : 91 43 __ STA (T0 + 0),y 
0928 : a9 00 __ LDA #$00
092a : c8 __ __ INY
092b : 91 43 __ STA (T0 + 0),y 
092d : a9 64 __ LDA #$64
092f : c8 __ __ INY
0930 : 91 43 __ STA (T0 + 0),y 
0932 : a9 00 __ LDA #$00
0934 : c8 __ __ INY
0935 : 91 43 __ STA (T0 + 0),y 
0937 : a0 06 __ LDY #$06
0939 : b1 43 __ LDA (T0 + 0),y 
093b : 18 __ __ CLC
093c : 69 f8 __ ADC #$f8
093e : 8d bd 0a STA $0abd ; (vspriteScreen + 0)
0941 : c8 __ __ INY
0942 : b1 43 __ LDA (T0 + 0),y 
0944 : 69 03 __ ADC #$03
0946 : 8d be 0a STA $0abe ; (vspriteScreen + 1)
0949 : 20 68 09 JSR $0968 ; (spr_set.s0 + 0)
094c : e6 0d __ INC P0 
094e : e6 15 __ INC P8 
0950 : a9 00 __ LDA #$00
0952 : 85 10 __ STA P3 
0954 : c6 13 __ DEC P6 
0956 : a9 08 __ LDA #$08
0958 : 85 14 __ STA P7 
095a : 20 68 09 JSR $0968 ; (spr_set.s0 + 0)
095d : a9 09 __ LDA #$09
095f : 8d 25 d0 STA $d025 
0962 : a9 01 __ LDA #$01
0964 : 8d 26 d0 STA $d026 
.s1001:
0967 : 60 __ __ RTS
--------------------------------------------------------------------
spr_set: ; spr_set(u8,bool,i16,i16,u8,u8,bool,bool,bool)->void
.s0:
0968 : a6 0d __ LDX P0 ; (sp + 0)
096a : bd 8d 0a LDA $0a8d,x ; (bitshift + 8)
096d : 85 1b __ STA ACCU + 0 
096f : a5 0e __ LDA P1 ; (show + 0)
0971 : d0 0a __ BNE $097d ; (spr_set.s3 + 0)
.s4:
0973 : a9 ff __ LDA #$ff
0975 : 45 1b __ EOR ACCU + 0 
0977 : 2d 15 d0 AND $d015 
097a : 4c 82 09 JMP $0982 ; (spr_set.s19 + 0)
.s3:
097d : a5 1b __ LDA ACCU + 0 
097f : 0d 15 d0 ORA $d015 
.s19:
0982 : 8d 15 d0 STA $d015 
0985 : a5 15 __ LDA P8 ; (multi + 0)
0987 : d0 0a __ BNE $0993 ; (spr_set.s6 + 0)
.s7:
0989 : a9 ff __ LDA #$ff
098b : 45 1b __ EOR ACCU + 0 
098d : 2d 1c d0 AND $d01c 
0990 : 4c 98 09 JMP $0998 ; (spr_set.s20 + 0)
.s6:
0993 : ad 1c d0 LDA $d01c 
0996 : 05 1b __ ORA ACCU + 0 
.s20:
0998 : 8d 1c d0 STA $d01c 
099b : a5 16 __ LDA P9 ; (xexpand + 0)
099d : d0 0a __ BNE $09a9 ; (spr_set.s9 + 0)
.s10:
099f : a9 ff __ LDA #$ff
09a1 : 45 1b __ EOR ACCU + 0 
09a3 : 2d 1d d0 AND $d01d 
09a6 : 4c ae 09 JMP $09ae ; (spr_set.s21 + 0)
.s9:
09a9 : ad 1d d0 LDA $d01d 
09ac : 05 1b __ ORA ACCU + 0 
.s21:
09ae : 8d 1d d0 STA $d01d 
09b1 : a5 17 __ LDA P10 ; (yexpand + 0)
09b3 : d0 0a __ BNE $09bf ; (spr_set.s12 + 0)
.s13:
09b5 : a9 ff __ LDA #$ff
09b7 : 45 1b __ EOR ACCU + 0 
09b9 : 2d 17 d0 AND $d017 
09bc : 4c c4 09 JMP $09c4 ; (spr_set.s14 + 0)
.s12:
09bf : ad 17 d0 LDA $d017 
09c2 : 05 1b __ ORA ACCU + 0 
.s14:
09c4 : 8d 17 d0 STA $d017 
09c7 : 8a __ __ TXA
09c8 : 0a __ __ ASL
09c9 : a8 __ __ TAY
09ca : a5 11 __ LDA P4 ; (ypos + 0)
09cc : 99 01 d0 STA $d001,y 
09cf : a5 0f __ LDA P2 ; (xpos + 0)
09d1 : 99 00 d0 STA $d000,y 
09d4 : 46 10 __ LSR P3 ; (xpos + 1)
09d6 : 90 07 __ BCC $09df ; (spr_set.s16 + 0)
.s15:
09d8 : a5 1b __ LDA ACCU + 0 
09da : 0d 10 d0 ORA $d010 
09dd : b0 07 __ BCS $09e6 ; (spr_set.s17 + 0)
.s16:
09df : a9 ff __ LDA #$ff
09e1 : 45 1b __ EOR ACCU + 0 
09e3 : 2d 10 d0 AND $d010 
.s17:
09e6 : 8d 10 d0 STA $d010 
09e9 : ad bd 0a LDA $0abd ; (vspriteScreen + 0)
09ec : 18 __ __ CLC
09ed : 65 0d __ ADC P0 ; (sp + 0)
09ef : 85 1b __ STA ACCU + 0 
09f1 : ad be 0a LDA $0abe ; (vspriteScreen + 1)
09f4 : 69 00 __ ADC #$00
09f6 : 85 1c __ STA ACCU + 1 
09f8 : a5 13 __ LDA P6 ; (image + 0)
09fa : a0 00 __ LDY #$00
09fc : 91 1b __ STA (ACCU + 0),y 
09fe : a5 14 __ LDA P7 ; (color + 0)
0a00 : 9d 27 d0 STA $d027,x 
.s1001:
0a03 : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
0a04 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
sp_data:
0a05 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 28 a4 20 2a : ............(. *
0a15 : __ __ __ BYT a9 60 0a a5 60 0a a5 60 0a aa 60 02 ef 40 02 ef : .`..`..`..`..@..
0a25 : __ __ __ BYT 80 02 aa a0 0a 85 90 0a a5 50 0a a6 60 02 a9 40 : .........P..`..@
0a35 : __ __ __ BYT 01 55 40 00 55 00 00 28 00 00 00 00 00 00 00 98 : .U@.U..(........
0a45 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 38 00 38 24 10 48 20 : .........8.8$.H 
0a55 : __ __ __ BYT 10 08 39 87 18 01 01 00 01 00 00 00 28 00 04 6c : ..9.........(..l
0a65 : __ __ __ BYT 20 04 00 20 08 38 10 08 10 10 08 92 10 04 7c 20 :  .. .8........| 
0a75 : __ __ __ BYT 04 00 20 03 81 c0 00 7e 00 00 00 00 00 00 00 10 : .. ....~........
--------------------------------------------------------------------
bitshift:
0a85 : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
0a95 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
0aa5 : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
0ab5 : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........
--------------------------------------------------------------------
vspriteScreen:
0abd : __ __ __ BSS	2

; Compiled with 1.27.242
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
080e : 8e 64 17 STX $1764 ; (spentry + 0)
0811 : a9 6a __ LDA #$6a
0813 : 85 19 __ STA IP + 0 
0815 : a9 18 __ LDA #$18
0817 : 85 1a __ STA IP + 1 
0819 : 38 __ __ SEC
081a : a9 18 __ LDA #$18
081c : e9 18 __ SBC #$18
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
0830 : a9 6a __ LDA #$6a
0832 : e9 6a __ SBC #$6a
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
084b : a9 cb __ LDA #$cb
084d : 85 23 __ STA SP + 0 
084f : a9 9f __ LDA #$9f
0851 : 85 24 __ STA SP + 1 
0853 : 20 80 08 JSR $0880 ; (main.s1000 + 0)
0856 : a9 4c __ LDA #$4c
0858 : 85 54 __ STA $54 
085a : a9 00 __ LDA #$00
085c : 85 13 __ STA P6 
085e : a9 19 __ LDA #$19
0860 : 85 16 __ STA P9 
0862 : 60 __ __ RTS
--------------------------------------------------------------------
main: ; main()->i16
.s1000:
0880 : a5 53 __ LDA T3 + 0 
0882 : 8d cd 9f STA $9fcd ; (main@stack + 0)
0885 : a5 54 __ LDA T3 + 1 
0887 : 8d ce 9f STA $9fce ; (main@stack + 1)
.s0:
088a : a9 e6 __ LDA #$e6
088c : 85 0d __ STA P0 
088e : a9 17 __ LDA #$17
0890 : 85 0e __ STA P1 
0892 : 20 a1 0f JSR $0fa1 ; (opp::ios::+ios.s0 + 0)
0895 : a9 03 __ LDA #$03
0897 : 8d e6 17 STA $17e6 ; (opp::cout + 0)
089a : a9 d1 __ LDA #$d1
089c : 8d f9 9f STA $9ff9 ; (sstack + 0)
089f : a9 9f __ LDA #$9f
08a1 : 8d fa 9f STA $9ffa ; (sstack + 1)
08a4 : 20 96 09 JSR $0996 ; (BearGame::+BearGame.s0 + 0)
08a7 : 20 44 0e JSR $0e44 ; (clrscr.s0 + 0)
08aa : a9 03 __ LDA #$03
08ac : 85 0e __ STA P1 
08ae : 20 48 0e JSR $0e48 ; (iocharmap.s0 + 0)
.l3:
08b1 : a9 d1 __ LDA #$d1
08b3 : 85 0d __ STA P0 
08b5 : a9 9f __ LDA #$9f
08b7 : 85 0e __ STA P1 
.l1008:
08b9 : 20 67 0e JSR $0e67 ; (BearGame::getGameState.s0 + 0)
08bc : c9 02 __ CMP #$02
08be : f0 f9 __ BEQ $08b9 ; (main.l1008 + 0)
.s15:
08c0 : b0 ef __ BCS $08b1 ; (main.l3 + 0)
.s17:
08c2 : 85 43 __ STA T1 + 0 
08c4 : a9 00 __ LDA #$00
08c6 : 85 0d __ STA P0 
08c8 : 85 0e __ STA P1 
08ca : 20 6c 0e JSR $0e6c ; (gotoxy.s0 + 0)
08cd : a9 e6 __ LDA #$e6
08cf : 85 11 __ STA P4 
08d1 : a9 17 __ LDA #$17
08d3 : 85 12 __ STA P5 
08d5 : a5 43 __ LDA T1 + 0 
08d7 : d0 2e __ BNE $0907 ; (main.s9 + 0)
.s6:
08d9 : a9 bd __ LDA #$bd
08db : 85 13 __ STA P6 
08dd : a9 0f __ LDA #$0f
08df : 85 14 __ STA P7 
08e1 : 20 75 0e JSR $0e75 ; (opp::ostream::operator<<.s0 + 0)
08e4 : a5 1b __ LDA ACCU + 0 
08e6 : 85 0e __ STA P1 
08e8 : a5 1c __ LDA ACCU + 1 
08ea : 85 0f __ STA P2 
08ec : a9 0a __ LDA #$0a
08ee : 85 10 __ STA P3 
08f0 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
08f3 : a9 d1 __ LDA #$d1
08f5 : 8d fb 9f STA $9ffb ; (sstack + 2)
08f8 : a9 9f __ LDA #$9f
08fa : 8d fc 9f STA $9ffc ; (sstack + 3)
08fd : 20 c3 0f JSR $0fc3 ; (BearGame::setup.s0 + 0)
0900 : a9 01 __ LDA #$01
0902 : 8d d2 9f STA $9fd2 ; (bearGame + 1)
0905 : d0 aa __ BNE $08b1 ; (main.l3 + 0)
.s9:
0907 : a9 ab __ LDA #$ab
0909 : 85 13 __ STA P6 
090b : a9 12 __ LDA #$12
090d : 85 14 __ STA P7 
090f : 20 75 0e JSR $0e75 ; (opp::ostream::operator<<.s0 + 0)
0912 : a5 1b __ LDA ACCU + 0 
0914 : 85 53 __ STA T3 + 0 
0916 : a5 1c __ LDA ACCU + 1 
0918 : 85 54 __ STA T3 + 1 
091a : a9 d1 __ LDA #$d1
091c : 85 0d __ STA P0 
091e : a9 9f __ LDA #$9f
0920 : 85 0e __ STA P1 
0922 : 20 b3 12 JSR $12b3 ; (BearGame::getLevel.s0 + 0)
0925 : a5 53 __ LDA T3 + 0 
0927 : 8d fc 9f STA $9ffc ; (sstack + 3)
092a : a5 54 __ LDA T3 + 1 
092c : 8d fd 9f STA $9ffd ; (sstack + 4)
092f : a5 1b __ LDA ACCU + 0 
0931 : 8d fe 9f STA $9ffe ; (sstack + 5)
0934 : a5 1c __ LDA ACCU + 1 
0936 : 8d ff 9f STA $9fff ; (sstack + 6)
0939 : 20 09 11 JSR $1109 ; (opp::ostream::operator<<.s0 + 0)
093c : a5 1b __ LDA ACCU + 0 
093e : 85 11 __ STA P4 
0940 : a5 1c __ LDA ACCU + 1 
0942 : 85 12 __ STA P5 
0944 : a9 bf __ LDA #$bf
0946 : 85 13 __ STA P6 
0948 : a9 12 __ LDA #$12
094a : 85 14 __ STA P7 
094c : 20 75 0e JSR $0e75 ; (opp::ostream::operator<<.s0 + 0)
094f : a5 1b __ LDA ACCU + 0 
0951 : 85 53 __ STA T3 + 0 
0953 : a5 1c __ LDA ACCU + 1 
0955 : 85 54 __ STA T3 + 1 
0957 : a9 d8 __ LDA #$d8
0959 : 85 0d __ STA P0 
095b : a9 9f __ LDA #$9f
095d : 85 0e __ STA P1 
095f : 20 c8 12 JSR $12c8 ; (Score::getScore.s0 + 0)
0962 : a5 53 __ LDA T3 + 0 
0964 : 8d fc 9f STA $9ffc ; (sstack + 3)
0967 : a5 54 __ LDA T3 + 1 
0969 : 8d fd 9f STA $9ffd ; (sstack + 4)
096c : a5 1b __ LDA ACCU + 0 
096e : 8d fe 9f STA $9ffe ; (sstack + 5)
0971 : a5 1c __ LDA ACCU + 1 
0973 : 8d ff 9f STA $9fff ; (sstack + 6)
0976 : 20 09 11 JSR $1109 ; (opp::ostream::operator<<.s0 + 0)
0979 : a5 1b __ LDA ACCU + 0 
097b : 85 0e __ STA P1 
097d : a5 1c __ LDA ACCU + 1 
097f : 85 0f __ STA P2 
0981 : a9 0a __ LDA #$0a
0983 : 85 10 __ STA P3 
0985 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
0988 : a9 d1 __ LDA #$d1
098a : 85 17 __ STA P10 
098c : a9 9f __ LDA #$9f
098e : 85 18 __ STA P11 
0990 : 20 d4 12 JSR $12d4 ; (BearGame::play.s0 + 0)
0993 : 4c b1 08 JMP $08b1 ; (main.l3 + 0)
--------------------------------------------------------------------
BearGame::+BearGame: ; BearGame::+BearGame(const struct BearGame*)->void
.s0:
0996 : ad f9 9f LDA $9ff9 ; (sstack + 0)
0999 : 85 4c __ STA T0 + 0 
099b : 18 __ __ CLC
099c : 69 07 __ ADC #$07
099e : 85 17 __ STA P10 
09a0 : ad fa 9f LDA $9ffa ; (sstack + 1)
09a3 : 85 4d __ STA T0 + 1 
09a5 : 69 00 __ ADC #$00
09a7 : 85 18 __ STA P11 
09a9 : 20 5c 0a JSR $0a5c ; (Score::+Score.s1000 + 0)
09ac : a9 00 __ LDA #$00
09ae : a8 __ __ TAY
09af : 91 4c __ STA (T0 + 0),y 
09b1 : a9 01 __ LDA #$01
09b3 : a0 05 __ LDY #$05
09b5 : 91 4c __ STA (T0 + 0),y 
09b7 : a9 00 __ LDA #$00
09b9 : c8 __ __ INY
09ba : 91 4c __ STA (T0 + 0),y 
09bc : a0 0b __ LDY #$0b
09be : 91 4c __ STA (T0 + 0),y 
09c0 : c8 __ __ INY
09c1 : 91 4c __ STA (T0 + 0),y 
09c3 : a9 e9 __ LDA #$e9
09c5 : 85 17 __ STA P10 
09c7 : a9 9f __ LDA #$9f
09c9 : 85 18 __ STA P11 
09cb : 20 5c 0a JSR $0a5c ; (Score::+Score.s1000 + 0)
09ce : ad e9 9f LDA $9fe9 
09d1 : a0 07 __ LDY #$07
09d3 : 91 4c __ STA (T0 + 0),y 
09d5 : ad ea 9f LDA $9fea 
09d8 : c8 __ __ INY
09d9 : 91 4c __ STA (T0 + 0),y 
09db : ad eb 9f LDA $9feb 
09de : c8 __ __ INY
09df : 91 4c __ STA (T0 + 0),y 
09e1 : ad ec 9f LDA $9fec 
09e4 : c8 __ __ INY
09e5 : 91 4c __ STA (T0 + 0),y 
09e7 : a9 0c __ LDA #$0c
09e9 : 85 1b __ STA ACCU + 0 
09eb : a9 00 __ LDA #$00
09ed : 85 1c __ STA ACCU + 1 
09ef : 20 0c 16 JSR $160c ; (malloc + 0)
09f2 : a5 1b __ LDA ACCU + 0 
09f4 : 85 4e __ STA T2 + 0 
09f6 : a5 1c __ LDA ACCU + 1 
09f8 : 85 4f __ STA T2 + 1 
09fa : 05 1b __ ORA ACCU + 0 
09fc : f0 0b __ BEQ $0a09 ; (BearGame::+BearGame.s3 + 0)
.s2:
09fe : a5 1b __ LDA ACCU + 0 
0a00 : 85 0d __ STA P0 
0a02 : a5 1c __ LDA ACCU + 1 
0a04 : 85 0e __ STA P1 
0a06 : 20 b5 0d JSR $0db5 ; (BearSprite::+BearSprite.s0 + 0)
.s3:
0a09 : a9 00 __ LDA #$00
0a0b : a0 01 __ LDY #$01
0a0d : 91 4c __ STA (T0 + 0),y 
0a0f : 98 __ __ TYA
0a10 : c8 __ __ INY
0a11 : 91 4c __ STA (T0 + 0),y 
0a13 : a5 4e __ LDA T2 + 0 
0a15 : c8 __ __ INY
0a16 : 91 4c __ STA (T0 + 0),y 
0a18 : a5 4f __ LDA T2 + 1 
0a1a : c8 __ __ INY
0a1b : 84 10 __ STY P3 
0a1d : 91 4c __ STA (T0 + 0),y 
0a1f : a9 00 __ LDA #$00
0a21 : 85 0f __ STA P2 
0a23 : 85 1c __ STA ACCU + 1 
0a25 : 8d e7 9f STA $9fe7 
0a28 : 8d e8 9f STA $9fe8 
0a2b : 85 11 __ STA P4 
0a2d : 85 12 __ STA P5 
0a2f : a9 28 __ LDA #$28
0a31 : 85 13 __ STA P6 
0a33 : a9 19 __ LDA #$19
0a35 : 85 14 __ STA P7 
0a37 : a9 00 __ LDA #$00
0a39 : a0 0b __ LDY #$0b
0a3b : 91 4c __ STA (T0 + 0),y 
0a3d : ad e8 9f LDA $9fe8 
0a40 : c8 __ __ INY
0a41 : 91 4c __ STA (T0 + 0),y 
0a43 : a9 0a __ LDA #$0a
0a45 : 85 1b __ STA ACCU + 0 
0a47 : 20 0c 16 JSR $160c ; (malloc + 0)
0a4a : a5 1b __ LDA ACCU + 0 
0a4c : 85 0d __ STA P0 
0a4e : a0 0d __ LDY #$0d
0a50 : 91 4c __ STA (T0 + 0),y 
0a52 : a5 1c __ LDA ACCU + 1 
0a54 : 85 0e __ STA P1 
0a56 : c8 __ __ INY
0a57 : 91 4c __ STA (T0 + 0),y 
0a59 : 4c ee 0d JMP $0dee ; (cwin_init.s0 + 0)
--------------------------------------------------------------------
Score::+Score: ; Score::+Score(const struct Score*)->void
.s1000:
0a5c : 38 __ __ SEC
0a5d : a5 23 __ LDA SP + 0 
0a5f : e9 0a __ SBC #$0a
0a61 : 85 23 __ STA SP + 0 
0a63 : b0 02 __ BCS $0a67 ; (Score::+Score.s0 + 0)
0a65 : c6 24 __ DEC SP + 1 
.s0:
0a67 : a9 00 __ LDA #$00
0a69 : 85 1c __ STA ACCU + 1 
0a6b : a0 02 __ LDY #$02
0a6d : 91 17 __ STA (P10),y ; (this + 0)
0a6f : c8 __ __ INY
0a70 : 91 17 __ STA (P10),y ; (this + 0)
0a72 : a9 06 __ LDA #$06
0a74 : 85 1b __ STA ACCU + 0 
0a76 : 20 0c 16 JSR $160c ; (malloc + 0)
0a79 : a5 1b __ LDA ACCU + 0 
0a7b : 85 4a __ STA T1 + 0 
0a7d : a5 1c __ LDA ACCU + 1 
0a7f : 85 4b __ STA T1 + 1 
0a81 : 05 1b __ ORA ACCU + 0 
0a83 : f0 1d __ BEQ $0aa2 ; (Score::+Score.s3 + 0)
.s2:
0a85 : a5 1b __ LDA ACCU + 0 
0a87 : 85 13 __ STA P6 
0a89 : 85 1f __ STA ADDR + 0 
0a8b : a5 1c __ LDA ACCU + 1 
0a8d : 85 14 __ STA P7 
0a8f : 18 __ __ CLC
0a90 : 69 ff __ ADC #$ff
0a92 : 85 20 __ STA ADDR + 1 
0a94 : a0 fe __ LDY #$fe
0a96 : b1 1f __ LDA (ADDR + 0),y 
0a98 : 85 15 __ STA P8 
0a9a : c8 __ __ INY
0a9b : b1 1f __ LDA (ADDR + 0),y 
0a9d : 85 16 __ STA P9 
0a9f : 20 32 0b JSR $0b32 ; (ScoreType::*ScoreType.s0 + 0)
.s3:
0aa2 : a5 4a __ LDA T1 + 0 
0aa4 : a0 00 __ LDY #$00
0aa6 : 91 17 __ STA (P10),y ; (this + 0)
0aa8 : a5 4b __ LDA T1 + 1 
0aaa : c8 __ __ INY
0aab : 91 17 __ STA (P10),y ; (this + 0)
0aad : 98 __ __ TYA
0aae : a0 04 __ LDY #$04
0ab0 : 91 23 __ STA (SP + 0),y 
0ab2 : a9 00 __ LDA #$00
0ab4 : c8 __ __ INY
0ab5 : 91 23 __ STA (SP + 0),y 
0ab7 : a9 64 __ LDA #$64
0ab9 : c8 __ __ INY
0aba : 91 23 __ STA (SP + 0),y 
0abc : a9 00 __ LDA #$00
0abe : c8 __ __ INY
0abf : 91 23 __ STA (SP + 0),y 
0ac1 : a9 ef __ LDA #$ef
0ac3 : a0 02 __ LDY #$02
0ac5 : 91 23 __ STA (SP + 0),y 
0ac7 : a9 9f __ LDA #$9f
0ac9 : c8 __ __ INY
0aca : 91 23 __ STA (SP + 0),y 
0acc : a9 ed __ LDA #$ed
0ace : 85 0d __ STA P0 
0ad0 : a9 9f __ LDA #$9f
0ad2 : 85 0e __ STA P1 
0ad4 : a9 1c __ LDA #$1c
0ad6 : 85 0f __ STA P2 
0ad8 : a9 0d __ LDA #$0d
0ada : 85 10 __ STA P3 
0adc : 20 c7 0c JSR $0cc7 ; (opp::string::+string.s0 + 0)
0adf : a9 ed __ LDA #$ed
0ae1 : 85 0f __ STA P2 
0ae3 : a9 9f __ LDA #$9f
0ae5 : 85 10 __ STA P3 
0ae7 : 18 __ __ CLC
0ae8 : a5 23 __ LDA SP + 0 
0aea : 69 08 __ ADC #$08
0aec : 85 0d __ STA P0 
0aee : a5 24 __ LDA SP + 1 
0af0 : 69 00 __ ADC #$00
0af2 : 85 0e __ STA P1 
0af4 : 20 2e 0d JSR $0d2e ; (opp::string::+string.s0 + 0)
0af7 : 20 f2 0b JSR $0bf2 ; (ScoreType::+ScoreType.s0 + 0)
0afa : a9 ef __ LDA #$ef
0afc : 85 13 __ STA P6 
0afe : a9 9f __ LDA #$9f
0b00 : 85 14 __ STA P7 
0b02 : a0 00 __ LDY #$00
0b04 : b1 17 __ LDA (P10),y ; (this + 0)
0b06 : 85 11 __ STA P4 
0b08 : c8 __ __ INY
0b09 : b1 17 __ LDA (P10),y ; (this + 0)
0b0b : 85 12 __ STA P5 
0b0d : 20 7a 0d JSR $0d7a ; (ScoreType::operator=.s0 + 0)
0b10 : a9 f3 __ LDA #$f3
0b12 : 85 0d __ STA P0 
0b14 : a9 9f __ LDA #$9f
0b16 : 85 0e __ STA P1 
0b18 : 20 b9 0c JSR $0cb9 ; (opp::string::~string.s0 + 0)
0b1b : a9 ed __ LDA #$ed
0b1d : 85 0d __ STA P0 
0b1f : a9 9f __ LDA #$9f
0b21 : 85 0e __ STA P1 
0b23 : 20 b9 0c JSR $0cb9 ; (opp::string::~string.s0 + 0)
.s1001:
0b26 : 18 __ __ CLC
0b27 : a5 23 __ LDA SP + 0 
0b29 : 69 0a __ ADC #$0a
0b2b : 85 23 __ STA SP + 0 
0b2d : 90 02 __ BCC $0b31 ; (Score::+Score.s1001 + 11)
0b2f : e6 24 __ INC SP + 1 
0b31 : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::*ScoreType: ; ScoreType::*ScoreType(struct ScoreType*,const struct ScoreType*)->void
.s0:
0b32 : a5 13 __ LDA P6 ; (this + 0)
0b34 : 85 44 __ STA T0 + 0 
0b36 : 4c 4f 0b JMP $0b4f ; (ScoreType::*ScoreType.l26 + 0)
.s2:
0b39 : a5 13 __ LDA P6 ; (this + 0)
0b3b : 85 11 __ STA P4 
0b3d : 18 __ __ CLC
0b3e : 69 06 __ ADC #$06
0b40 : 85 44 __ STA T0 + 0 
0b42 : 85 13 __ STA P6 ; (this + 0)
0b44 : a5 14 __ LDA P7 ; (this + 1)
0b46 : 85 12 __ STA P5 
0b48 : 69 00 __ ADC #$00
0b4a : 85 14 __ STA P7 ; (this + 1)
0b4c : 20 5c 0b JSR $0b5c ; (ScoreType::+ScoreType.s0 + 0)
.l26:
0b4f : a5 14 __ LDA P7 ; (this + 1)
0b51 : c5 16 __ CMP P9 ; (end + 1)
0b53 : d0 e4 __ BNE $0b39 ; (ScoreType::*ScoreType.s2 + 0)
.s1002:
0b55 : a5 44 __ LDA T0 + 0 
0b57 : c5 15 __ CMP P8 ; (end + 0)
0b59 : d0 de __ BNE $0b39 ; (ScoreType::*ScoreType.s2 + 0)
.s1001:
0b5b : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::+ScoreType: ; ScoreType::+ScoreType(const struct ScoreType*)->void
.s0:
0b5c : a9 00 __ LDA #$00
0b5e : a8 __ __ TAY
0b5f : 91 11 __ STA (P4),y ; (this + 0)
0b61 : c8 __ __ INY
0b62 : 91 11 __ STA (P4),y ; (this + 0)
0b64 : c8 __ __ INY
0b65 : 91 11 __ STA (P4),y ; (this + 0)
0b67 : c8 __ __ INY
0b68 : 91 11 __ STA (P4),y ; (this + 0)
0b6a : 18 __ __ CLC
0b6b : a5 11 __ LDA P4 ; (this + 0)
0b6d : 69 04 __ ADC #$04
0b6f : 85 0d __ STA P0 
0b71 : a5 12 __ LDA P5 ; (this + 1)
0b73 : 69 00 __ ADC #$00
0b75 : 85 0e __ STA P1 
0b77 : a9 00 __ LDA #$00
0b79 : c8 __ __ INY
0b7a : 91 11 __ STA (P4),y ; (this + 0)
0b7c : c8 __ __ INY
0b7d : 91 11 __ STA (P4),y ; (this + 0)
0b7f : a9 f1 __ LDA #$f1
0b81 : 85 0f __ STA P2 
0b83 : a9 0b __ LDA #$0b
0b85 : 85 10 __ STA P3 
0b87 : 4c 8a 0b JMP $0b8a ; (opp::string::operator=.s0 + 0)
--------------------------------------------------------------------
opp::string::operator=: ; opp::string::operator=(const struct opp::string*,const u8*)->struct opp::string&
.s0:
0b8a : a0 00 __ LDY #$00
0b8c : b1 0d __ LDA (P0),y ; (this + 0)
0b8e : 85 1b __ STA ACCU + 0 
0b90 : c8 __ __ INY
0b91 : b1 0d __ LDA (P0),y ; (this + 0)
0b93 : 85 1c __ STA ACCU + 1 
0b95 : 20 cb 16 JSR $16cb ; (free + 0)
0b98 : a5 10 __ LDA P3 ; (s + 1)
0b9a : 05 0f __ ORA P2 ; (s + 0)
0b9c : f0 0e __ BEQ $0bac ; (opp::string::operator=.s1006 + 0)
.s1:
0b9e : a0 00 __ LDY #$00
0ba0 : f0 01 __ BEQ $0ba3 ; (opp::string::operator=.l5 + 0)
.s6:
0ba2 : c8 __ __ INY
.l5:
0ba3 : b1 0f __ LDA (P2),y ; (s + 0)
0ba5 : d0 fb __ BNE $0ba2 ; (opp::string::operator=.s6 + 0)
.s7:
0ba7 : 98 __ __ TYA
0ba8 : d0 12 __ BNE $0bbc ; (opp::string::operator=.s9 + 0)
.s10:
0baa : a9 00 __ LDA #$00
.s1006:
0bac : a8 __ __ TAY
0bad : 91 0d __ STA (P0),y ; (this + 0)
0baf : a0 01 __ LDY #$01
0bb1 : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0bb3 : a5 0d __ LDA P0 ; (this + 0)
0bb5 : 85 1b __ STA ACCU + 0 
0bb7 : a5 0e __ LDA P1 ; (this + 1)
0bb9 : 85 1c __ STA ACCU + 1 
0bbb : 60 __ __ RTS
.s9:
0bbc : 85 43 __ STA T0 + 0 
0bbe : 18 __ __ CLC
0bbf : 69 02 __ ADC #$02
0bc1 : 85 1b __ STA ACCU + 0 
0bc3 : a9 00 __ LDA #$00
0bc5 : 2a __ __ ROL
0bc6 : 85 1c __ STA ACCU + 1 
0bc8 : 20 0c 16 JSR $160c ; (malloc + 0)
0bcb : a5 43 __ LDA T0 + 0 
0bcd : a0 00 __ LDY #$00
0bcf : 91 1b __ STA (ACCU + 0),y 
0bd1 : a5 1b __ LDA ACCU + 0 
0bd3 : 91 0d __ STA (P0),y ; (this + 0)
0bd5 : a5 1c __ LDA ACCU + 1 
0bd7 : c8 __ __ INY
0bd8 : 91 0d __ STA (P0),y ; (this + 0)
0bda : e6 43 __ INC T0 + 0 
0bdc : f0 d5 __ BEQ $0bb3 ; (opp::string::operator=.s1001 + 0)
.s18:
0bde : e6 1b __ INC ACCU + 0 
0be0 : d0 02 __ BNE $0be4 ; (opp::string::operator=.s18 + 6)
0be2 : e6 1c __ INC ACCU + 1 
0be4 : 88 __ __ DEY
.l1004:
0be5 : b1 0f __ LDA (P2),y ; (s + 0)
0be7 : 91 1b __ STA (ACCU + 0),y 
0be9 : c8 __ __ INY
0bea : c4 43 __ CPY T0 + 0 
0bec : 90 f7 __ BCC $0be5 ; (opp::string::operator=.l1004 + 0)
0bee : 4c b3 0b JMP $0bb3 ; (opp::string::operator=.s1001 + 0)
--------------------------------------------------------------------
0bf1 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
ScoreType::+ScoreType: ; ScoreType::+ScoreType(const struct ScoreType*,bool,bool,i16,struct opp::string)->void
.s0:
0bf2 : a0 02 __ LDY #$02
0bf4 : b1 23 __ LDA (SP + 0),y 
0bf6 : 85 48 __ STA T0 + 0 
0bf8 : 18 __ __ CLC
0bf9 : 69 04 __ ADC #$04
0bfb : 85 0d __ STA P0 ; (this + 0)
0bfd : c8 __ __ INY
0bfe : b1 23 __ LDA (SP + 0),y 
0c00 : 85 49 __ STA T0 + 1 
0c02 : 69 00 __ ADC #$00
0c04 : 85 0e __ STA P1 ; (this + 1)
0c06 : a9 00 __ LDA #$00
0c08 : c8 __ __ INY
0c09 : 91 48 __ STA (T0 + 0),y 
0c0b : c8 __ __ INY
0c0c : 91 48 __ STA (T0 + 0),y 
0c0e : 88 __ __ DEY
0c0f : b1 23 __ LDA (SP + 0),y 
0c11 : a0 00 __ LDY #$00
0c13 : 91 48 __ STA (T0 + 0),y 
0c15 : a0 05 __ LDY #$05
0c17 : b1 23 __ LDA (SP + 0),y 
0c19 : a0 01 __ LDY #$01
0c1b : 91 48 __ STA (T0 + 0),y 
0c1d : a0 06 __ LDY #$06
0c1f : b1 23 __ LDA (SP + 0),y 
0c21 : a0 02 __ LDY #$02
0c23 : 91 48 __ STA (T0 + 0),y 
0c25 : a0 07 __ LDY #$07
0c27 : b1 23 __ LDA (SP + 0),y 
0c29 : a0 03 __ LDY #$03
0c2b : 91 48 __ STA (T0 + 0),y 
0c2d : 18 __ __ CLC
0c2e : a5 23 __ LDA SP + 0 
0c30 : 69 08 __ ADC #$08
0c32 : 85 0f __ STA P2 ; (isAchievement + 0)
0c34 : a5 24 __ LDA SP + 1 
0c36 : 69 00 __ ADC #$00
0c38 : 85 10 __ STA P3 ; (isAchieved + 0)
0c3a : 20 48 0c JSR $0c48 ; (opp::string::operator=.s0 + 0)
0c3d : a5 0f __ LDA P2 ; (isAchievement + 0)
0c3f : 85 0d __ STA P0 ; (this + 0)
0c41 : a5 10 __ LDA P3 ; (isAchieved + 0)
0c43 : 85 0e __ STA P1 ; (this + 1)
0c45 : 4c b9 0c JMP $0cb9 ; (opp::string::~string.s0 + 0)
--------------------------------------------------------------------
opp::string::operator=: ; opp::string::operator=(const struct opp::string*,const struct opp::string&)->struct opp::string&
.s0:
0c48 : a0 00 __ LDY #$00
0c4a : b1 0d __ LDA (P0),y ; (this + 0)
0c4c : aa __ __ TAX
0c4d : b1 0f __ LDA (P2),y ; (s + 0)
0c4f : 85 46 __ STA T3 + 0 
0c51 : c8 __ __ INY
0c52 : b1 0f __ LDA (P2),y ; (s + 0)
0c54 : 85 47 __ STA T3 + 1 
0c56 : d1 0d __ CMP (P0),y ; (this + 0)
0c58 : f0 04 __ BEQ $0c5e ; (opp::string::operator=.s1004 + 0)
.s1008:
0c5a : 8a __ __ TXA
0c5b : 4c 63 0c JMP $0c63 ; (opp::string::operator=.s1 + 0)
.s1004:
0c5e : 8a __ __ TXA
0c5f : e4 46 __ CPX T3 + 0 
0c61 : f0 4d __ BEQ $0cb0 ; (opp::string::operator=.s1001 + 0)
.s1:
0c63 : 85 1b __ STA ACCU + 0 
0c65 : b1 0d __ LDA (P0),y ; (this + 0)
0c67 : 85 1c __ STA ACCU + 1 
0c69 : 20 cb 16 JSR $16cb ; (free + 0)
0c6c : a5 46 __ LDA T3 + 0 
0c6e : 05 47 __ ORA T3 + 1 
0c70 : d0 09 __ BNE $0c7b ; (opp::string::operator=.s4 + 0)
.s5:
0c72 : a8 __ __ TAY
0c73 : 91 0d __ STA (P0),y ; (this + 0)
0c75 : a0 01 __ LDY #$01
0c77 : 91 0d __ STA (P0),y ; (this + 0)
0c79 : d0 35 __ BNE $0cb0 ; (opp::string::operator=.s1001 + 0)
.s4:
0c7b : a0 00 __ LDY #$00
0c7d : b1 46 __ LDA (T3 + 0),y 
0c7f : 18 __ __ CLC
0c80 : 69 02 __ ADC #$02
0c82 : 85 43 __ STA T1 + 0 
0c84 : 85 1b __ STA ACCU + 0 
0c86 : 98 __ __ TYA
0c87 : 2a __ __ ROL
0c88 : 85 1c __ STA ACCU + 1 
0c8a : 20 0c 16 JSR $160c ; (malloc + 0)
0c8d : a5 1b __ LDA ACCU + 0 
0c8f : a0 00 __ LDY #$00
0c91 : 91 0d __ STA (P0),y ; (this + 0)
0c93 : a5 1c __ LDA ACCU + 1 
0c95 : c8 __ __ INY
0c96 : 91 0d __ STA (P0),y ; (this + 0)
0c98 : a5 43 __ LDA T1 + 0 
0c9a : f0 14 __ BEQ $0cb0 ; (opp::string::operator=.s1001 + 0)
.s13:
0c9c : 88 __ __ DEY
0c9d : b1 0f __ LDA (P2),y ; (s + 0)
0c9f : 85 44 __ STA T2 + 0 
0ca1 : c8 __ __ INY
0ca2 : b1 0f __ LDA (P2),y ; (s + 0)
0ca4 : 85 45 __ STA T2 + 1 
0ca6 : 88 __ __ DEY
.l1006:
0ca7 : b1 44 __ LDA (T2 + 0),y 
0ca9 : 91 1b __ STA (ACCU + 0),y 
0cab : c8 __ __ INY
0cac : c4 43 __ CPY T1 + 0 
0cae : 90 f7 __ BCC $0ca7 ; (opp::string::operator=.l1006 + 0)
.s1001:
0cb0 : a5 0d __ LDA P0 ; (this + 0)
0cb2 : 85 1b __ STA ACCU + 0 
0cb4 : a5 0e __ LDA P1 ; (this + 1)
0cb6 : 85 1c __ STA ACCU + 1 
0cb8 : 60 __ __ RTS
--------------------------------------------------------------------
opp::string::~string: ; opp::string::~string(const struct opp::string*)->void
.s0:
0cb9 : a0 00 __ LDY #$00
0cbb : b1 0d __ LDA (P0),y ; (this + 0)
0cbd : 85 1b __ STA ACCU + 0 
0cbf : c8 __ __ INY
0cc0 : b1 0d __ LDA (P0),y ; (this + 0)
0cc2 : 85 1c __ STA ACCU + 1 
0cc4 : 4c cb 16 JMP $16cb ; (free + 0)
--------------------------------------------------------------------
opp::string::+string: ; opp::string::+string(const struct opp::string*,const u8*)->void
.s0:
0cc7 : a5 10 __ LDA P3 ; (s + 1)
0cc9 : 05 0f __ ORA P2 ; (s + 0)
0ccb : f0 0e __ BEQ $0cdb ; (opp::string::+string.s56 + 0)
.s1:
0ccd : a0 00 __ LDY #$00
0ccf : b1 0f __ LDA (P2),y ; (s + 0)
0cd1 : f0 05 __ BEQ $0cd8 ; (opp::string::+string.s7 + 0)
.l6:
0cd3 : c8 __ __ INY
0cd4 : b1 0f __ LDA (P2),y ; (s + 0)
0cd6 : d0 fb __ BNE $0cd3 ; (opp::string::+string.l6 + 0)
.s7:
0cd8 : 98 __ __ TYA
0cd9 : d0 09 __ BNE $0ce4 ; (opp::string::+string.s9 + 0)
.s56:
0cdb : a9 00 __ LDA #$00
0cdd : a8 __ __ TAY
0cde : 91 0d __ STA (P0),y ; (this + 0)
0ce0 : c8 __ __ INY
0ce1 : 91 0d __ STA (P0),y ; (this + 0)
0ce3 : 60 __ __ RTS
.s9:
0ce4 : 85 43 __ STA T1 + 0 
0ce6 : 18 __ __ CLC
0ce7 : 69 02 __ ADC #$02
0ce9 : 85 1b __ STA ACCU + 0 
0ceb : a9 00 __ LDA #$00
0ced : 2a __ __ ROL
0cee : 85 1c __ STA ACCU + 1 
0cf0 : 20 0c 16 JSR $160c ; (malloc + 0)
0cf3 : a5 43 __ LDA T1 + 0 
0cf5 : a0 00 __ LDY #$00
0cf7 : 91 1b __ STA (ACCU + 0),y 
0cf9 : a5 1b __ LDA ACCU + 0 
0cfb : 91 0d __ STA (P0),y ; (this + 0)
0cfd : a5 1c __ LDA ACCU + 1 
0cff : c8 __ __ INY
0d00 : 91 0d __ STA (P0),y ; (this + 0)
0d02 : 18 __ __ CLC
0d03 : a5 43 __ LDA T1 + 0 
0d05 : 69 01 __ ADC #$01
0d07 : f0 12 __ BEQ $0d1b ; (opp::string::+string.s1001 + 0)
.s17:
0d09 : 85 1d __ STA ACCU + 2 
0d0b : e6 1b __ INC ACCU + 0 
0d0d : d0 02 __ BNE $0d11 ; (opp::string::+string.s17 + 8)
0d0f : e6 1c __ INC ACCU + 1 
0d11 : 88 __ __ DEY
.l1004:
0d12 : b1 0f __ LDA (P2),y ; (s + 0)
0d14 : 91 1b __ STA (ACCU + 0),y 
0d16 : c8 __ __ INY
0d17 : c4 1d __ CPY ACCU + 2 
0d19 : 90 f7 __ BCC $0d12 ; (opp::string::+string.l1004 + 0)
.s1001:
0d1b : 60 __ __ RTS
--------------------------------------------------------------------
0d1c : __ __ __ BYT 47 6f 74 20 6f 66 66 20 73 63 72 65 65 6e 21 3f : Got off screen!?
0d2c : __ __ __ BYT 21 00                                           : !.
--------------------------------------------------------------------
opp::string::+string: ; opp::string::+string(const struct opp::string*,const struct opp::string&)->void
.s0:
0d2e : a0 00 __ LDY #$00
0d30 : b1 0f __ LDA (P2),y ; (s + 0)
0d32 : 85 45 __ STA T2 + 0 
0d34 : c8 __ __ INY
0d35 : b1 0f __ LDA (P2),y ; (s + 0)
0d37 : 85 46 __ STA T2 + 1 
0d39 : 05 45 __ ORA T2 + 0 
0d3b : d0 08 __ BNE $0d45 ; (opp::string::+string.s1 + 0)
.s2:
0d3d : a8 __ __ TAY
0d3e : 91 0d __ STA (P0),y ; (this + 0)
0d40 : a0 01 __ LDY #$01
0d42 : 91 0d __ STA (P0),y ; (this + 0)
0d44 : 60 __ __ RTS
.s1:
0d45 : 88 __ __ DEY
0d46 : b1 45 __ LDA (T2 + 0),y 
0d48 : 18 __ __ CLC
0d49 : 69 02 __ ADC #$02
0d4b : 85 45 __ STA T2 + 0 
0d4d : 85 1b __ STA ACCU + 0 
0d4f : 98 __ __ TYA
0d50 : 2a __ __ ROL
0d51 : 85 1c __ STA ACCU + 1 
0d53 : 20 0c 16 JSR $160c ; (malloc + 0)
0d56 : a5 1b __ LDA ACCU + 0 
0d58 : a0 00 __ LDY #$00
0d5a : 91 0d __ STA (P0),y ; (this + 0)
0d5c : a5 1c __ LDA ACCU + 1 
0d5e : c8 __ __ INY
0d5f : 91 0d __ STA (P0),y ; (this + 0)
0d61 : a5 45 __ LDA T2 + 0 
0d63 : f0 14 __ BEQ $0d79 ; (opp::string::+string.s1001 + 0)
.s9:
0d65 : 88 __ __ DEY
0d66 : b1 0f __ LDA (P2),y ; (s + 0)
0d68 : 85 43 __ STA T0 + 0 
0d6a : c8 __ __ INY
0d6b : b1 0f __ LDA (P2),y ; (s + 0)
0d6d : 85 44 __ STA T0 + 1 
0d6f : 88 __ __ DEY
.l1004:
0d70 : b1 43 __ LDA (T0 + 0),y 
0d72 : 91 1b __ STA (ACCU + 0),y 
0d74 : c8 __ __ INY
0d75 : c4 45 __ CPY T2 + 0 
0d77 : 90 f7 __ BCC $0d70 ; (opp::string::+string.l1004 + 0)
.s1001:
0d79 : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::operator=: ; ScoreType::operator=(const struct ScoreType*,const struct ScoreType&)->struct ScoreType&
.s0:
0d7a : a0 00 __ LDY #$00
0d7c : b1 13 __ LDA (P6),y ; (_ + 0)
0d7e : 91 11 __ STA (P4),y ; (this + 0)
0d80 : c8 __ __ INY
0d81 : b1 13 __ LDA (P6),y ; (_ + 0)
0d83 : 91 11 __ STA (P4),y ; (this + 0)
0d85 : c8 __ __ INY
0d86 : b1 13 __ LDA (P6),y ; (_ + 0)
0d88 : 91 11 __ STA (P4),y ; (this + 0)
0d8a : c8 __ __ INY
0d8b : b1 13 __ LDA (P6),y ; (_ + 0)
0d8d : 91 11 __ STA (P4),y ; (this + 0)
0d8f : 18 __ __ CLC
0d90 : a5 11 __ LDA P4 ; (this + 0)
0d92 : 69 04 __ ADC #$04
0d94 : 85 0d __ STA P0 
0d96 : a5 12 __ LDA P5 ; (this + 1)
0d98 : 69 00 __ ADC #$00
0d9a : 85 0e __ STA P1 
0d9c : 18 __ __ CLC
0d9d : a5 13 __ LDA P6 ; (_ + 0)
0d9f : 69 04 __ ADC #$04
0da1 : 85 0f __ STA P2 
0da3 : a5 14 __ LDA P7 ; (_ + 1)
0da5 : 69 00 __ ADC #$00
0da7 : 85 10 __ STA P3 
0da9 : 20 48 0c JSR $0c48 ; (opp::string::operator=.s0 + 0)
0dac : a5 11 __ LDA P4 ; (this + 0)
0dae : 85 1b __ STA ACCU + 0 
0db0 : a5 12 __ LDA P5 ; (this + 1)
0db2 : 85 1c __ STA ACCU + 1 
.s1001:
0db4 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::+BearSprite: ; BearSprite::+BearSprite(const struct BearSprite*)->void
.s0:
0db5 : a9 00 __ LDA #$00
0db7 : a0 08 __ LDY #$08
0db9 : 91 0d __ STA (P0),y ; (this + 0)
0dbb : c8 __ __ INY
0dbc : 91 0d __ STA (P0),y ; (this + 0)
0dbe : c8 __ __ INY
0dbf : 91 0d __ STA (P0),y ; (this + 0)
0dc1 : c8 __ __ INY
0dc2 : 91 0d __ STA (P0),y ; (this + 0)
0dc4 : a9 65 __ LDA #$65
0dc6 : a0 00 __ LDY #$00
0dc8 : 91 0d __ STA (P0),y ; (this + 0)
0dca : a9 17 __ LDA #$17
0dcc : c8 __ __ INY
0dcd : 91 0d __ STA (P0),y ; (this + 0)
0dcf : a9 80 __ LDA #$80
0dd1 : c8 __ __ INY
0dd2 : 91 0d __ STA (P0),y ; (this + 0)
0dd4 : a9 03 __ LDA #$03
0dd6 : a8 __ __ TAY
0dd7 : 91 0d __ STA (P0),y ; (this + 0)
0dd9 : a9 c0 __ LDA #$c0
0ddb : c8 __ __ INY
0ddc : 91 0d __ STA (P0),y ; (this + 0)
0dde : a9 03 __ LDA #$03
0de0 : c8 __ __ INY
0de1 : 91 0d __ STA (P0),y ; (this + 0)
0de3 : a9 00 __ LDA #$00
0de5 : c8 __ __ INY
0de6 : 91 0d __ STA (P0),y ; (this + 0)
0de8 : a9 04 __ LDA #$04
0dea : c8 __ __ INY
0deb : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0ded : 60 __ __ RTS
--------------------------------------------------------------------
cwin_init: ; cwin_init(struct CharWin*,u8*,u8,u8,u8,u8)->void
.s0:
0dee : a9 00 __ LDA #$00
0df0 : a0 04 __ LDY #$04
0df2 : 91 0d __ STA (P0),y ; (win + 0)
0df4 : c8 __ __ INY
0df5 : 91 0d __ STA (P0),y ; (win + 0)
0df7 : a5 11 __ LDA P4 ; (sx + 0)
0df9 : a0 00 __ LDY #$00
0dfb : 91 0d __ STA (P0),y ; (win + 0)
0dfd : a5 12 __ LDA P5 ; (sy + 0)
0dff : c8 __ __ INY
0e00 : 91 0d __ STA (P0),y ; (win + 0)
0e02 : a5 13 __ LDA P6 ; (wx + 0)
0e04 : c8 __ __ INY
0e05 : 91 0d __ STA (P0),y ; (win + 0)
0e07 : a5 14 __ LDA P7 ; (wy + 0)
0e09 : c8 __ __ INY
0e0a : 91 0d __ STA (P0),y ; (win + 0)
0e0c : a5 12 __ LDA P5 ; (sy + 0)
0e0e : 0a __ __ ASL
0e0f : a8 __ __ TAY
0e10 : b9 00 18 LDA $1800,y ; (mul40 + 0)
0e13 : 85 12 __ STA P5 ; (sy + 0)
0e15 : 18 __ __ CLC
0e16 : 65 11 __ ADC P4 ; (sx + 0)
0e18 : aa __ __ TAX
0e19 : b9 01 18 LDA $1801,y ; (mul40 + 1)
0e1c : 85 1c __ STA ACCU + 1 
0e1e : 69 d8 __ ADC #$d8
0e20 : a0 09 __ LDY #$09
0e22 : 91 0d __ STA (P0),y ; (win + 0)
0e24 : 8a __ __ TXA
0e25 : 88 __ __ DEY
0e26 : 91 0d __ STA (P0),y ; (win + 0)
0e28 : 18 __ __ CLC
0e29 : a5 0f __ LDA P2 ; (screen + 0)
0e2b : 65 12 __ ADC P5 ; (sy + 0)
0e2d : aa __ __ TAX
0e2e : a5 10 __ LDA P3 ; (screen + 1)
0e30 : 65 1c __ ADC ACCU + 1 
0e32 : 85 1c __ STA ACCU + 1 
0e34 : 8a __ __ TXA
0e35 : 18 __ __ CLC
0e36 : 65 11 __ ADC P4 ; (sx + 0)
0e38 : a0 06 __ LDY #$06
0e3a : 91 0d __ STA (P0),y ; (win + 0)
0e3c : a5 1c __ LDA ACCU + 1 
0e3e : 69 00 __ ADC #$00
0e40 : c8 __ __ INY
0e41 : 91 0d __ STA (P0),y ; (win + 0)
.s1001:
0e43 : 60 __ __ RTS
--------------------------------------------------------------------
clrscr: ; clrscr()->void
.s0:
0e44 : 20 81 ff JSR $ff81 
.s1001:
0e47 : 60 __ __ RTS
--------------------------------------------------------------------
iocharmap: ; iocharmap(enum IOCharMap)->void
.s0:
0e48 : a5 0e __ LDA P1 ; (chmap + 0)
0e4a : 8d e5 17 STA $17e5 ; (giocharmap + 0)
0e4d : c9 02 __ CMP #$02
0e4f : d0 04 __ BNE $0e55 ; (iocharmap.s2 + 0)
.s1:
0e51 : a9 8e __ LDA #$8e
0e53 : d0 07 __ BNE $0e5c ; (iocharmap.s1006 + 0)
.s2:
0e55 : c9 03 __ CMP #$03
0e57 : f0 01 __ BEQ $0e5a ; (iocharmap.s4 + 0)
.s1001:
0e59 : 60 __ __ RTS
.s4:
0e5a : a9 0e __ LDA #$0e
.s1006:
0e5c : 4c 5f 0e JMP $0e5f ; (putch.s1000 + 0)
--------------------------------------------------------------------
putch: ; putch(u8)->void
.s1000:
0e5f : 85 0d __ STA P0 
.s0:
0e61 : a5 0d __ LDA P0 
0e63 : 20 d2 ff JSR $ffd2 
.s1001:
0e66 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::getGameState: ; BearGame::getGameState(const struct BearGame*)->enum GameState
.s0:
0e67 : a0 01 __ LDY #$01
.s1001:
0e69 : b1 0d __ LDA (P0),y ; (this + 0)
0e6b : 60 __ __ RTS
--------------------------------------------------------------------
gotoxy: ; gotoxy(u8,u8)->void
.s0:
0e6c : a6 0e __ LDX P1 
0e6e : a4 0d __ LDY P0 
0e70 : 18 __ __ CLC
0e71 : 20 f0 ff JSR $fff0 
.s1001:
0e74 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::operator<<: ; opp::ostream::operator<<(const struct opp::ostream*,const u8*)->struct opp::ostream&
.s0:
0e75 : a9 00 __ LDA #$00
0e77 : 85 4a __ STA T0 + 0 
0e79 : f0 11 __ BEQ $0e8c ; (opp::ostream::operator<<.l1 + 0)
.s2:
0e7b : a5 11 __ LDA P4 ; (this + 0)
0e7d : 85 0e __ STA P1 
0e7f : a5 12 __ LDA P5 ; (this + 1)
0e81 : 85 0f __ STA P2 
0e83 : b1 13 __ LDA (P6),y ; (p + 0)
0e85 : 85 10 __ STA P3 
0e87 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
0e8a : e6 4a __ INC T0 + 0 
.l1:
0e8c : a4 4a __ LDY T0 + 0 
0e8e : b1 13 __ LDA (P6),y ; (p + 0)
0e90 : d0 e9 __ BNE $0e7b ; (opp::ostream::operator<<.s2 + 0)
.s3:
0e92 : a5 11 __ LDA P4 ; (this + 0)
0e94 : 85 1b __ STA ACCU + 0 
0e96 : a5 12 __ LDA P5 ; (this + 1)
0e98 : 85 1c __ STA ACCU + 1 
.s1001:
0e9a : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::bput$vcall: ; opp::ostream::bput$vcall(const struct opp::ostream*,u8)->void
.s0:
0e9b : a0 00 __ LDY #$00
0e9d : b1 0e __ LDA (P1),y ; (this + 0)
0e9f : aa __ __ TAX
0ea0 : bd ac 0e LDA $0eac,x ; (opp::ostream::bput$vcall.s0 + 17)
0ea3 : 85 1b __ STA ACCU + 0 
0ea5 : bd af 0e LDA $0eaf,x ; (opp::ostream::bput$vtable + 2)
0ea8 : 85 1c __ STA ACCU + 1 
0eaa : 6c 1b 00 JMP ($001b)
--------------------------------------------------------------------
opp::ostream::bput$vtable:
0ead : __ __ __ BYT b3 b4 51 0e 0e 0f                               : ..Q...
--------------------------------------------------------------------
opp::ostream::bput: ; opp::ostream::bput(const struct opp::ostream*,u8)->void
.s1001:
0eb3 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostringstream::bput: ; opp::ostringstream::bput(const struct opp::ostringstream*,u8)->void
.s0:
0eb4 : a5 0e __ LDA P1 ; (this + 0)
0eb6 : 85 43 __ STA T0 + 0 
0eb8 : a5 0f __ LDA P2 ; (this + 1)
0eba : 85 44 __ STA T0 + 1 
0ebc : a0 07 __ LDY #$07
0ebe : b1 0e __ LDA (P1),y ; (this + 0)
0ec0 : c8 __ __ INY
0ec1 : 11 0e __ ORA (P1),y ; (this + 0)
0ec3 : d0 1c __ BNE $0ee1 ; (opp::ostringstream::bput.s2 + 0)
.s1:
0ec5 : c8 __ __ INY
0ec6 : 91 0e __ STA (P1),y ; (this + 0)
0ec8 : a9 0f __ LDA #$0f
0eca : c8 __ __ INY
0ecb : 91 0e __ STA (P1),y ; (this + 0)
0ecd : 85 1b __ STA ACCU + 0 
0ecf : a9 00 __ LDA #$00
0ed1 : 85 1c __ STA ACCU + 1 
0ed3 : 20 0c 16 JSR $160c ; (malloc + 0)
0ed6 : a5 1b __ LDA ACCU + 0 
0ed8 : 85 45 __ STA T1 + 0 
0eda : a5 1c __ LDA ACCU + 1 
0edc : 85 46 __ STA T1 + 1 
0ede : 4c 24 0f JMP $0f24 ; (opp::ostringstream::bput.s26 + 0)
.s2:
0ee1 : c8 __ __ INY
0ee2 : b1 0e __ LDA (P1),y ; (this + 0)
0ee4 : c8 __ __ INY
0ee5 : d1 0e __ CMP (P1),y ; (this + 0)
0ee7 : d0 46 __ BNE $0f2f ; (opp::ostringstream::bput.s3 + 0)
.s4:
0ee9 : b1 0e __ LDA (P1),y ; (this + 0)
0eeb : 0a __ __ ASL
0eec : 91 0e __ STA (P1),y ; (this + 0)
0eee : 85 1b __ STA ACCU + 0 
0ef0 : a9 00 __ LDA #$00
0ef2 : 85 47 __ STA T2 + 0 
0ef4 : 85 1c __ STA ACCU + 1 
0ef6 : 20 0c 16 JSR $160c ; (malloc + 0)
0ef9 : a5 1b __ LDA ACCU + 0 
0efb : 85 45 __ STA T1 + 0 
0efd : a5 1c __ LDA ACCU + 1 
0eff : 85 46 __ STA T1 + 1 
0f01 : 4c 0b 0f JMP $0f0b ; (opp::ostringstream::bput.l7 + 0)
.s8:
0f04 : a8 __ __ TAY
0f05 : b1 48 __ LDA (T4 + 0),y 
0f07 : 91 45 __ STA (T1 + 0),y 
0f09 : e6 47 __ INC T2 + 0 
.l7:
0f0b : a0 07 __ LDY #$07
0f0d : b1 43 __ LDA (T0 + 0),y 
0f0f : 85 48 __ STA T4 + 0 
0f11 : 85 1b __ STA ACCU + 0 
0f13 : c8 __ __ INY
0f14 : b1 43 __ LDA (T0 + 0),y 
0f16 : 85 49 __ STA T4 + 1 
0f18 : 85 1c __ STA ACCU + 1 
0f1a : a5 47 __ LDA T2 + 0 
0f1c : c8 __ __ INY
0f1d : d1 43 __ CMP (T0 + 0),y 
0f1f : 90 e3 __ BCC $0f04 ; (opp::ostringstream::bput.s8 + 0)
.s10:
0f21 : 20 cb 16 JSR $16cb ; (free + 0)
.s26:
0f24 : a5 45 __ LDA T1 + 0 
0f26 : a0 07 __ LDY #$07
0f28 : 91 43 __ STA (T0 + 0),y 
0f2a : a5 46 __ LDA T1 + 1 
0f2c : c8 __ __ INY
0f2d : 91 43 __ STA (T0 + 0),y 
.s3:
0f2f : a0 09 __ LDY #$09
0f31 : b1 0e __ LDA (P1),y ; (this + 0)
0f33 : 85 47 __ STA T2 + 0 
0f35 : 18 __ __ CLC
0f36 : 69 01 __ ADC #$01
0f38 : 91 0e __ STA (P1),y ; (this + 0)
0f3a : a0 07 __ LDY #$07
0f3c : b1 0e __ LDA (P1),y ; (this + 0)
0f3e : 18 __ __ CLC
0f3f : 65 47 __ ADC T2 + 0 
0f41 : 85 43 __ STA T0 + 0 
0f43 : c8 __ __ INY
0f44 : b1 0e __ LDA (P1),y ; (this + 0)
0f46 : 69 00 __ ADC #$00
0f48 : 85 44 __ STA T0 + 1 
0f4a : a5 10 __ LDA P3 ; (ch + 0)
0f4c : a0 00 __ LDY #$00
0f4e : 91 43 __ STA (T0 + 0),y 
.s1001:
0f50 : 60 __ __ RTS
--------------------------------------------------------------------
opp::costream::bput: ; opp::costream::bput(const struct opp::costream*,u8)->void
.s0:
0f51 : a5 10 __ LDA P3 ; (ch + 0)
0f53 : 4c 56 0f JMP $0f56 ; (putchar.s1000 + 0)
--------------------------------------------------------------------
putchar: ; putchar(u8)->void
.s1000:
0f56 : 85 0d __ STA P0 
.s0:
0f58 : a5 0d __ LDA P0 
0f5a : 20 5e 0f JSR $0f5e ; (putpch + 0)
.s1001:
0f5d : 60 __ __ RTS
--------------------------------------------------------------------
putpch: ; putpch
0f5e : ae e5 17 LDX $17e5 ; (giocharmap + 0)
0f61 : e0 01 __ CPX #$01
0f63 : 90 26 __ BCC $0f8b ; (putpch + 45)
0f65 : c9 0a __ CMP #$0a
0f67 : d0 02 __ BNE $0f6b ; (putpch + 13)
0f69 : a9 0d __ LDA #$0d
0f6b : c9 09 __ CMP #$09
0f6d : f0 1f __ BEQ $0f8e ; (putpch + 48)
0f6f : e0 02 __ CPX #$02
0f71 : 90 18 __ BCC $0f8b ; (putpch + 45)
0f73 : c9 41 __ CMP #$41
0f75 : 90 14 __ BCC $0f8b ; (putpch + 45)
0f77 : c9 7b __ CMP #$7b
0f79 : b0 10 __ BCS $0f8b ; (putpch + 45)
0f7b : c9 61 __ CMP #$61
0f7d : b0 04 __ BCS $0f83 ; (putpch + 37)
0f7f : c9 5b __ CMP #$5b
0f81 : b0 08 __ BCS $0f8b ; (putpch + 45)
0f83 : 49 20 __ EOR #$20
0f85 : e0 03 __ CPX #$03
0f87 : f0 02 __ BEQ $0f8b ; (putpch + 45)
0f89 : 29 df __ AND #$df
0f8b : 4c d2 ff JMP $ffd2 
0f8e : 38 __ __ SEC
0f8f : 20 f0 ff JSR $fff0 
0f92 : 98 __ __ TYA
0f93 : 29 03 __ AND #$03
0f95 : 49 03 __ EOR #$03
0f97 : aa __ __ TAX
0f98 : a9 20 __ LDA #$20
0f9a : 20 d2 ff JSR $ffd2 
0f9d : ca __ __ DEX
0f9e : 10 fa __ BPL $0f9a ; (putpch + 60)
0fa0 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ios::+ios: ; opp::ios::+ios(const struct opp::ios*)->void
.s0:
0fa1 : a9 00 __ LDA #$00
0fa3 : a8 __ __ TAY
0fa4 : 91 0d __ STA (P0),y ; (this + 0)
0fa6 : c8 __ __ INY
0fa7 : 91 0d __ STA (P0),y ; (this + 0)
0fa9 : c8 __ __ INY
0faa : 91 0d __ STA (P0),y ; (this + 0)
0fac : c8 __ __ INY
0fad : 91 0d __ STA (P0),y ; (this + 0)
0faf : c8 __ __ INY
0fb0 : 91 0d __ STA (P0),y ; (this + 0)
0fb2 : a9 06 __ LDA #$06
0fb4 : c8 __ __ INY
0fb5 : 91 0d __ STA (P0),y ; (this + 0)
0fb7 : a9 20 __ LDA #$20
0fb9 : c8 __ __ INY
0fba : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0fbc : 60 __ __ RTS
--------------------------------------------------------------------
0fbd : __ __ __ BYT 53 45 54 55 50 00                               : SETUP.
--------------------------------------------------------------------
BearGame::setup: ; BearGame::setup(const struct BearGame*)->void
.s0:
0fc3 : ad fb 9f LDA $9ffb ; (sstack + 2)
0fc6 : 85 43 __ STA T0 + 0 
0fc8 : ad fc 9f LDA $9ffc ; (sstack + 3)
0fcb : 85 44 __ STA T0 + 1 
0fcd : a0 03 __ LDY #$03
0fcf : b1 43 __ LDA (T0 + 0),y 
0fd1 : 8d f9 9f STA $9ff9 ; (sstack + 0)
0fd4 : c8 __ __ INY
0fd5 : b1 43 __ LDA (T0 + 0),y 
0fd7 : 8d fa 9f STA $9ffa ; (sstack + 1)
0fda : 4c dd 0f JMP $0fdd ; (BearSprite::drawSprite.s0 + 0)
--------------------------------------------------------------------
BearSprite::drawSprite: ; BearSprite::drawSprite(const struct BearSprite*)->void
.s0:
0fdd : a9 00 __ LDA #$00
0fdf : 85 0d __ STA P0 
0fe1 : 85 10 __ STA P3 
0fe3 : 85 12 __ STA P5 
0fe5 : 85 14 __ STA P7 
0fe7 : 85 15 __ STA P8 
0fe9 : 85 16 __ STA P9 
0feb : 85 17 __ STA P10 
0fed : a9 a0 __ LDA #$a0
0fef : 85 0f __ STA P2 
0ff1 : a9 64 __ LDA #$64
0ff3 : 85 11 __ STA P4 
0ff5 : a9 0f __ LDA #$0f
0ff7 : 85 13 __ STA P6 
0ff9 : ad f9 9f LDA $9ff9 ; (sstack + 0)
0ffc : 85 43 __ STA T0 + 0 
0ffe : ad fa 9f LDA $9ffa ; (sstack + 1)
1001 : 85 44 __ STA T0 + 1 
1003 : a0 00 __ LDY #$00
1005 : b1 43 __ LDA (T0 + 0),y 
1007 : 85 45 __ STA T1 + 0 
1009 : c8 __ __ INY
100a : 84 0e __ STY P1 
100c : b1 43 __ LDA (T0 + 0),y 
100e : 85 46 __ STA T1 + 1 
1010 : c8 __ __ INY
1011 : b1 43 __ LDA (T0 + 0),y 
1013 : 85 47 __ STA T2 + 0 
1015 : c8 __ __ INY
1016 : b1 43 __ LDA (T0 + 0),y 
1018 : 85 48 __ STA T2 + 1 
101a : a0 7f __ LDY #$7f
.l1002:
101c : b1 45 __ LDA (T1 + 0),y 
101e : 91 47 __ STA (T2 + 0),y 
1020 : 88 __ __ DEY
1021 : d0 f9 __ BNE $101c ; (BearSprite::drawSprite.l1002 + 0)
.s1003:
1023 : b1 45 __ LDA (T1 + 0),y 
1025 : 91 47 __ STA (T2 + 0),y 
1027 : a9 a0 __ LDA #$a0
1029 : a0 08 __ LDY #$08
102b : 91 43 __ STA (T0 + 0),y 
102d : a9 00 __ LDA #$00
102f : c8 __ __ INY
1030 : 91 43 __ STA (T0 + 0),y 
1032 : a9 64 __ LDA #$64
1034 : c8 __ __ INY
1035 : 91 43 __ STA (T0 + 0),y 
1037 : a9 00 __ LDA #$00
1039 : c8 __ __ INY
103a : 91 43 __ STA (T0 + 0),y 
103c : a0 06 __ LDY #$06
103e : b1 43 __ LDA (T0 + 0),y 
1040 : 18 __ __ CLC
1041 : 69 f8 __ ADC #$f8
1043 : 8d ed 17 STA $17ed ; (vspriteScreen + 0)
1046 : c8 __ __ INY
1047 : b1 43 __ LDA (T0 + 0),y 
1049 : 69 03 __ ADC #$03
104b : 8d ee 17 STA $17ee ; (vspriteScreen + 1)
104e : 20 6d 10 JSR $106d ; (spr_set.s0 + 0)
1051 : e6 0d __ INC P0 
1053 : e6 15 __ INC P8 
1055 : a9 00 __ LDA #$00
1057 : 85 10 __ STA P3 
1059 : c6 13 __ DEC P6 
105b : a9 08 __ LDA #$08
105d : 85 14 __ STA P7 
105f : 20 6d 10 JSR $106d ; (spr_set.s0 + 0)
1062 : a9 09 __ LDA #$09
1064 : 8d 25 d0 STA $d025 
1067 : a9 01 __ LDA #$01
1069 : 8d 26 d0 STA $d026 
.s1001:
106c : 60 __ __ RTS
--------------------------------------------------------------------
spr_set: ; spr_set(u8,bool,i16,i16,u8,u8,bool,bool,bool)->void
.s0:
106d : a6 0d __ LDX P0 ; (sp + 0)
106f : bd 3a 18 LDA $183a,x ; (bitshift + 8)
1072 : 85 1b __ STA ACCU + 0 
1074 : a5 0e __ LDA P1 ; (show + 0)
1076 : d0 0a __ BNE $1082 ; (spr_set.s3 + 0)
.s4:
1078 : a9 ff __ LDA #$ff
107a : 45 1b __ EOR ACCU + 0 
107c : 2d 15 d0 AND $d015 
107f : 4c 87 10 JMP $1087 ; (spr_set.s19 + 0)
.s3:
1082 : a5 1b __ LDA ACCU + 0 
1084 : 0d 15 d0 ORA $d015 
.s19:
1087 : 8d 15 d0 STA $d015 
108a : a5 15 __ LDA P8 ; (multi + 0)
108c : d0 0a __ BNE $1098 ; (spr_set.s6 + 0)
.s7:
108e : a9 ff __ LDA #$ff
1090 : 45 1b __ EOR ACCU + 0 
1092 : 2d 1c d0 AND $d01c 
1095 : 4c 9d 10 JMP $109d ; (spr_set.s20 + 0)
.s6:
1098 : ad 1c d0 LDA $d01c 
109b : 05 1b __ ORA ACCU + 0 
.s20:
109d : 8d 1c d0 STA $d01c 
10a0 : a5 16 __ LDA P9 ; (xexpand + 0)
10a2 : d0 0a __ BNE $10ae ; (spr_set.s9 + 0)
.s10:
10a4 : a9 ff __ LDA #$ff
10a6 : 45 1b __ EOR ACCU + 0 
10a8 : 2d 1d d0 AND $d01d 
10ab : 4c b3 10 JMP $10b3 ; (spr_set.s21 + 0)
.s9:
10ae : ad 1d d0 LDA $d01d 
10b1 : 05 1b __ ORA ACCU + 0 
.s21:
10b3 : 8d 1d d0 STA $d01d 
10b6 : a5 17 __ LDA P10 ; (yexpand + 0)
10b8 : d0 0a __ BNE $10c4 ; (spr_set.s12 + 0)
.s13:
10ba : a9 ff __ LDA #$ff
10bc : 45 1b __ EOR ACCU + 0 
10be : 2d 17 d0 AND $d017 
10c1 : 4c c9 10 JMP $10c9 ; (spr_set.s14 + 0)
.s12:
10c4 : ad 17 d0 LDA $d017 
10c7 : 05 1b __ ORA ACCU + 0 
.s14:
10c9 : 8d 17 d0 STA $d017 
10cc : 8a __ __ TXA
10cd : 0a __ __ ASL
10ce : a8 __ __ TAY
10cf : a5 11 __ LDA P4 ; (ypos + 0)
10d1 : 99 01 d0 STA $d001,y 
10d4 : a5 0f __ LDA P2 ; (xpos + 0)
10d6 : 99 00 d0 STA $d000,y 
10d9 : 46 10 __ LSR P3 ; (xpos + 1)
10db : 90 07 __ BCC $10e4 ; (spr_set.s16 + 0)
.s15:
10dd : a5 1b __ LDA ACCU + 0 
10df : 0d 10 d0 ORA $d010 
10e2 : b0 07 __ BCS $10eb ; (spr_set.s17 + 0)
.s16:
10e4 : a9 ff __ LDA #$ff
10e6 : 45 1b __ EOR ACCU + 0 
10e8 : 2d 10 d0 AND $d010 
.s17:
10eb : 8d 10 d0 STA $d010 
10ee : ad ed 17 LDA $17ed ; (vspriteScreen + 0)
10f1 : 18 __ __ CLC
10f2 : 65 0d __ ADC P0 ; (sp + 0)
10f4 : 85 1b __ STA ACCU + 0 
10f6 : ad ee 17 LDA $17ee ; (vspriteScreen + 1)
10f9 : 69 00 __ ADC #$00
10fb : 85 1c __ STA ACCU + 1 
10fd : a5 13 __ LDA P6 ; (image + 0)
10ff : a0 00 __ LDY #$00
1101 : 91 1b __ STA (ACCU + 0),y 
1103 : a5 14 __ LDA P7 ; (color + 0)
1105 : 9d 27 d0 STA $d027,x 
.s1001:
1108 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::operator<<: ; opp::ostream::operator<<(const struct opp::ostream*,i16)->struct opp::ostream&
.s0:
1109 : ad fc 9f LDA $9ffc ; (sstack + 3)
110c : 85 4d __ STA T0 + 0 
110e : 85 17 __ STA P10 
1110 : ad fd 9f LDA $9ffd ; (sstack + 4)
1113 : 85 4e __ STA T0 + 1 
1115 : 85 18 __ STA P11 
1117 : 2c ff 9f BIT $9fff ; (sstack + 6)
111a : 10 19 __ BPL $1135 ; (opp::ostream::operator<<.s2 + 0)
.s1:
111c : a9 2d __ LDA #$2d
111e : 8d fb 9f STA $9ffb ; (sstack + 2)
1121 : 38 __ __ SEC
1122 : a9 00 __ LDA #$00
1124 : ed fe 9f SBC $9ffe ; (sstack + 5)
1127 : 8d f9 9f STA $9ff9 ; (sstack + 0)
112a : a9 00 __ LDA #$00
112c : ed ff 9f SBC $9fff ; (sstack + 6)
112f : 8d fa 9f STA $9ffa ; (sstack + 1)
1132 : 4c 4e 11 JMP $114e ; (opp::ostream::operator<<.s1001 + 0)
.s2:
1135 : ad fe 9f LDA $9ffe ; (sstack + 5)
1138 : 8d f9 9f STA $9ff9 ; (sstack + 0)
113b : ad ff 9f LDA $9fff ; (sstack + 6)
113e : 8d fa 9f STA $9ffa ; (sstack + 1)
1141 : a0 02 __ LDY #$02
1143 : b1 4d __ LDA (T0 + 0),y 
1145 : 29 08 __ AND #$08
1147 : f0 02 __ BEQ $114b ; (opp::ostream::operator<<.s1002 + 0)
.s4:
1149 : a9 2b __ LDA #$2b
.s1002:
114b : 8d fb 9f STA $9ffb ; (sstack + 2)
.s1001:
114e : 20 5a 11 JSR $115a ; (opp::ostream::numput.s0 + 0)
1151 : a5 4d __ LDA T0 + 0 
1153 : 85 1b __ STA ACCU + 0 
1155 : a5 4e __ LDA T0 + 1 
1157 : 85 1c __ STA ACCU + 1 ; (this + 0)
1159 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::numput: ; opp::ostream::numput(const struct opp::ostream*,u16,u8)->void
.s0:
115a : a0 01 __ LDY #$01
115c : b1 17 __ LDA (P10),y ; (this + 0)
115e : 85 43 __ STA T0 + 0 
1160 : c8 __ __ INY
1161 : 29 08 __ AND #$08
1163 : f0 04 __ BEQ $1169 ; (opp::ostream::numput.s2 + 0)
.s1:
1165 : a2 10 __ LDX #$10
1167 : d0 0a __ BNE $1173 ; (opp::ostream::numput.s3 + 0)
.s2:
1169 : 06 43 __ ASL T0 + 0 
116b : 10 04 __ BPL $1171 ; (opp::ostream::numput.s1004 + 0)
.s1005:
116d : a2 08 __ LDX #$08
116f : d0 02 __ BNE $1173 ; (opp::ostream::numput.s3 + 0)
.s1004:
1171 : a2 0a __ LDX #$0a
.s3:
1173 : a9 00 __ LDA #$00
1175 : 85 48 __ STA T3 + 0 
1177 : ad fa 9f LDA $9ffa ; (sstack + 1)
117a : 85 44 __ STA T0 + 1 
117c : b1 17 __ LDA (P10),y ; (this + 0)
117e : 29 30 __ AND #$30
1180 : d0 70 __ BNE $11f2 ; (opp::ostream::numput.s7 + 0)
.s9:
1182 : ad f9 9f LDA $9ff9 ; (sstack + 0)
1185 : a8 __ __ TAY
1186 : 05 44 __ ORA T0 + 1 
1188 : f0 36 __ BEQ $11c0 ; (opp::ostream::numput.s12 + 0)
.s39:
118a : a9 57 __ LDA #$57
.s28:
118c : 86 45 __ STX T1 + 0 
118e : 84 1b __ STY ACCU + 0 ; (sign + 0)
1190 : 85 49 __ STA T4 + 0 
.l11:
1192 : a5 44 __ LDA T0 + 1 
1194 : 85 1c __ STA ACCU + 1 
1196 : a5 45 __ LDA T1 + 0 
1198 : 85 03 __ STA WORK + 0 
119a : a9 00 __ LDA #$00
119c : 85 04 __ STA WORK + 1 
119e : 20 3c 15 JSR $153c ; (divmod + 0)
11a1 : a5 1c __ LDA ACCU + 1 
11a3 : 85 44 __ STA T0 + 1 
11a5 : a5 05 __ LDA WORK + 2 
11a7 : c9 0a __ CMP #$0a
11a9 : 90 06 __ BCC $11b1 ; (opp::ostream::numput.s13 + 0)
.s14:
11ab : 18 __ __ CLC
11ac : 65 49 __ ADC T4 + 0 
11ae : 4c b3 11 JMP $11b3 ; (opp::ostream::numput.s15 + 0)
.s13:
11b1 : 69 30 __ ADC #$30
.s15:
11b3 : a6 48 __ LDX T3 + 0 
11b5 : 9d ef 9f STA $9fef,x ; (achieve + 0)
11b8 : e6 48 __ INC T3 + 0 
11ba : a5 1b __ LDA ACCU + 0 ; (sign + 0)
11bc : 05 1c __ ORA ACCU + 1 
11be : d0 d2 __ BNE $1192 ; (opp::ostream::numput.l11 + 0)
.s12:
11c0 : a5 17 __ LDA P10 ; (this + 0)
11c2 : 85 11 __ STA P4 
11c4 : a5 18 __ LDA P11 ; (this + 1)
11c6 : 85 12 __ STA P5 
11c8 : a9 ef __ LDA #$ef
11ca : 85 13 __ STA P6 
11cc : a9 9f __ LDA #$9f
11ce : 85 14 __ STA P7 
11d0 : a5 48 __ LDA T3 + 0 
11d2 : d0 09 __ BNE $11dd ; (opp::ostream::numput.s55 + 0)
.s16:
11d4 : a9 30 __ LDA #$30
11d6 : 8d ef 9f STA $9fef ; (achieve + 0)
11d9 : e6 48 __ INC T3 + 0 
11db : a5 48 __ LDA T3 + 0 
.s55:
11dd : 85 15 __ STA P8 
11df : ad fb 9f LDA $9ffb ; (sstack + 2)
11e2 : f0 07 __ BEQ $11eb ; (opp::ostream::numput.s21 + 0)
.s19:
11e4 : a6 15 __ LDX P8 
11e6 : 9d ef 9f STA $9fef,x ; (achieve + 0)
11e9 : e6 48 __ INC T3 + 0 
.s21:
11eb : a5 48 __ LDA T3 + 0 
11ed : 85 16 __ STA P9 
11ef : 4c fe 11 JMP $11fe ; (opp::ostream::putnum.s0 + 0)
.s7:
11f2 : ad f9 9f LDA $9ff9 ; (sstack + 0)
11f5 : a8 __ __ TAY
11f6 : 05 44 __ ORA T0 + 1 
11f8 : f0 c6 __ BEQ $11c0 ; (opp::ostream::numput.s12 + 0)
.s38:
11fa : a9 37 __ LDA #$37
11fc : d0 8e __ BNE $118c ; (opp::ostream::numput.s28 + 0)
--------------------------------------------------------------------
opp::ostream::putnum: ; opp::ostream::putnum(const struct opp::ostream*,const u8*,u8,u8)->void
.s0:
11fe : a5 16 __ LDA P9 ; (size + 0)
1200 : a0 04 __ LDY #$04
1202 : d1 11 __ CMP (P4),y ; (this + 0)
1204 : 90 04 __ BCC $120a ; (opp::ostream::putnum.s1 + 0)
.s78:
1206 : a9 00 __ LDA #$00
1208 : b0 05 __ BCS $120f ; (opp::ostream::putnum.s3 + 0)
.s1:
120a : b1 11 __ LDA (P4),y ; (this + 0)
120c : 38 __ __ SEC
120d : e5 16 __ SBC P9 ; (size + 0)
.s3:
120f : 85 4a __ STA T4 + 0 
1211 : a0 01 __ LDY #$01
1213 : b1 11 __ LDA (P4),y ; (this + 0)
1215 : 29 b0 __ AND #$b0
1217 : 85 4b __ STA T5 + 0 
1219 : c9 10 __ CMP #$10
121b : d0 1f __ BNE $123c ; (opp::ostream::putnum.s6 + 0)
.s7:
121d : a5 15 __ LDA P8 ; (prefix + 0)
121f : c5 16 __ CMP P9 ; (size + 0)
1221 : b0 19 __ BCS $123c ; (opp::ostream::putnum.s6 + 0)
.l8:
1223 : a5 11 __ LDA P4 ; (this + 0)
1225 : 85 0e __ STA P1 
1227 : a5 12 __ LDA P5 ; (this + 1)
1229 : 85 0f __ STA P2 
122b : c6 16 __ DEC P9 ; (size + 0)
122d : a4 16 __ LDY P9 ; (size + 0)
122f : b1 13 __ LDA (P6),y ; (buffer + 0)
1231 : 85 10 __ STA P3 
1233 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
1236 : a5 15 __ LDA P8 ; (prefix + 0)
1238 : c5 16 __ CMP P9 ; (size + 0)
123a : 90 e7 __ BCC $1223 ; (opp::ostream::putnum.l8 + 0)
.s6:
123c : a5 4b __ LDA T5 + 0 
123e : c9 20 __ CMP #$20
1240 : f0 19 __ BEQ $125b ; (opp::ostream::putnum.s16 + 0)
.s13:
1242 : a5 4a __ LDA T4 + 0 
1244 : f0 15 __ BEQ $125b ; (opp::ostream::putnum.s16 + 0)
.l14:
1246 : a5 11 __ LDA P4 ; (this + 0)
1248 : 85 0e __ STA P1 
124a : a5 12 __ LDA P5 ; (this + 1)
124c : 85 0f __ STA P2 
124e : a0 06 __ LDY #$06
1250 : b1 11 __ LDA (P4),y ; (this + 0)
1252 : 85 10 __ STA P3 
1254 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
1257 : c6 4a __ DEC T4 + 0 
1259 : d0 eb __ BNE $1246 ; (opp::ostream::putnum.l14 + 0)
.s16:
125b : a5 16 __ LDA P9 ; (size + 0)
125d : f0 1f __ BEQ $127e ; (opp::ostream::putnum.s19 + 0)
.s23:
125f : a5 13 __ LDA P6 ; (buffer + 0)
1261 : 85 4b __ STA T5 + 0 
1263 : a5 14 __ LDA P7 ; (buffer + 1)
1265 : 85 4c __ STA T5 + 1 
.l17:
1267 : a5 11 __ LDA P4 ; (this + 0)
1269 : 85 0e __ STA P1 
126b : a5 12 __ LDA P5 ; (this + 1)
126d : 85 0f __ STA P2 
126f : c6 16 __ DEC P9 ; (size + 0)
1271 : a4 16 __ LDY P9 ; (size + 0)
1273 : b1 4b __ LDA (T5 + 0),y 
1275 : 85 10 __ STA P3 
1277 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
127a : a5 16 __ LDA P9 ; (size + 0)
127c : d0 e9 __ BNE $1267 ; (opp::ostream::putnum.l17 + 0)
.s19:
127e : a5 4a __ LDA T4 + 0 
1280 : f0 17 __ BEQ $1299 ; (opp::ostream::putnum.s21 + 0)
.l20:
1282 : a5 11 __ LDA P4 ; (this + 0)
1284 : 85 0e __ STA P1 
1286 : a5 12 __ LDA P5 ; (this + 1)
1288 : 85 0f __ STA P2 
128a : a0 06 __ LDY #$06
128c : b1 11 __ LDA (P4),y ; (this + 0)
128e : 85 10 __ STA P3 
1290 : 20 9b 0e JSR $0e9b ; (opp::ostream::bput$vcall.s0 + 0)
1293 : c6 4a __ DEC T4 + 0 
1295 : a5 4a __ LDA T4 + 0 
1297 : d0 e9 __ BNE $1282 ; (opp::ostream::putnum.l20 + 0)
.s21:
1299 : a0 01 __ LDY #$01
129b : 91 11 __ STA (P4),y ; (this + 0)
129d : c8 __ __ INY
129e : 91 11 __ STA (P4),y ; (this + 0)
12a0 : a0 04 __ LDY #$04
12a2 : 91 11 __ STA (P4),y ; (this + 0)
12a4 : a9 20 __ LDA #$20
12a6 : a0 06 __ LDY #$06
12a8 : 91 11 __ STA (P4),y ; (this + 0)
.s1001:
12aa : 60 __ __ RTS
--------------------------------------------------------------------
12ab : __ __ __ BYT 4c 65 76 65 6c 3a 20 00                         : Level: .
--------------------------------------------------------------------
BearGame::getLevel: ; BearGame::getLevel(const struct BearGame*)->i16
.s0:
12b3 : a0 05 __ LDY #$05
12b5 : b1 0d __ LDA (P0),y ; (this + 0)
12b7 : 85 1b __ STA ACCU + 0 
12b9 : c8 __ __ INY
12ba : b1 0d __ LDA (P0),y ; (this + 0)
12bc : 85 1c __ STA ACCU + 1 
.s1001:
12be : 60 __ __ RTS
--------------------------------------------------------------------
12bf : __ __ __ BYT 20 53 63 6f 72 65 3a 20 00                      :  Score: .
--------------------------------------------------------------------
Score::getScore: ; Score::getScore(const struct Score*)->i16
.s0:
12c8 : a0 02 __ LDY #$02
12ca : b1 0d __ LDA (P0),y ; (this + 0)
12cc : 85 1b __ STA ACCU + 0 
12ce : c8 __ __ INY
12cf : b1 0d __ LDA (P0),y ; (this + 0)
12d1 : 85 1c __ STA ACCU + 1 
.s1001:
12d3 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::play: ; BearGame::play(const struct BearGame*)->void
.s0:
12d4 : a0 02 __ LDY #$02
12d6 : b1 17 __ LDA (P10),y ; (this + 0)
12d8 : 85 44 __ STA T2 + 0 
12da : ad 12 d0 LDA $d012 
12dd : c9 fa __ CMP #$fa
12df : d0 1c __ BNE $12fd ; (BearGame::play.s3 + 0)
.s1:
12e1 : a0 00 __ LDY #$00
12e3 : 84 04 __ STY WORK + 1 
12e5 : b1 17 __ LDA (P10),y ; (this + 0)
12e7 : 18 __ __ CLC
12e8 : 69 01 __ ADC #$01
12ea : 85 1b __ STA ACCU + 0 
12ec : 98 __ __ TYA
12ed : 2a __ __ ROL
12ee : 85 1c __ STA ACCU + 1 
12f0 : a9 3c __ LDA #$3c
12f2 : 85 03 __ STA WORK + 0 
12f4 : 20 3c 15 JSR $153c ; (divmod + 0)
12f7 : a5 05 __ LDA WORK + 2 
12f9 : a0 00 __ LDY #$00
12fb : 91 17 __ STA (P10),y ; (this + 0)
.s3:
12fd : a5 44 __ LDA T2 + 0 
12ff : c9 03 __ CMP #$03
1301 : d0 0e __ BNE $1311 ; (BearGame::play.s13 + 0)
.s7:
1303 : a5 17 __ LDA P10 ; (this + 0)
1305 : 85 0f __ STA P2 
1307 : a5 18 __ LDA P11 ; (this + 1)
1309 : 85 10 __ STA P3 
130b : 20 07 15 JSR $1507 ; (BearGame::renderGame.s0 + 0)
130e : 4c 1b 13 JMP $131b ; (BearGame::play.s22 + 0)
.s13:
1311 : 90 0f __ BCC $1322 ; (BearGame::play.s15 + 0)
.s14:
1313 : c9 04 __ CMP #$04
1315 : f0 0a __ BEQ $1321 ; (BearGame::play.s1001 + 0)
.s18:
1317 : c9 05 __ CMP #$05
1319 : f0 06 __ BEQ $1321 ; (BearGame::play.s1001 + 0)
.s22:
131b : a9 01 __ LDA #$01
.s1016:
131d : a0 02 __ LDY #$02
131f : 91 17 __ STA (P10),y ; (this + 0)
.s1001:
1321 : 60 __ __ RTS
.s15:
1322 : c9 01 __ CMP #$01
1324 : d0 0f __ BNE $1335 ; (BearGame::play.s16 + 0)
.s5:
1326 : a5 17 __ LDA P10 ; (this + 0)
1328 : 85 11 __ STA P4 
132a : a5 18 __ LDA P11 ; (this + 1)
132c : 85 12 __ STA P5 
132e : 20 48 13 JSR $1348 ; (BearGame::getUserInput.s0 + 0)
1331 : a9 02 __ LDA #$02
1333 : d0 e8 __ BNE $131d ; (BearGame::play.s1016 + 0)
.s16:
1335 : c9 02 __ CMP #$02
1337 : d0 e2 __ BNE $131b ; (BearGame::play.s22 + 0)
.s6:
1339 : a5 17 __ LDA P10 ; (this + 0)
133b : 85 13 __ STA P6 
133d : a5 18 __ LDA P11 ; (this + 1)
133f : 85 14 __ STA P7 
1341 : 20 b1 13 JSR $13b1 ; (BearGame::updateBearSpritePosition.s0 + 0)
1344 : a9 03 __ LDA #$03
1346 : d0 d5 __ BNE $131d ; (BearGame::play.s1016 + 0)
--------------------------------------------------------------------
BearGame::getUserInput: ; BearGame::getUserInput(const struct BearGame*)->void
.s0:
1348 : a9 00 __ LDA #$00
134a : 20 71 13 JSR $1371 ; (joy_poll.s0 + 0)
134d : ad f1 17 LDA $17f1 ; (joyx + 0)
1350 : c9 ff __ CMP #$ff
1352 : f0 06 __ BEQ $135a ; (BearGame::getUserInput.s18 + 0)
.s7:
1354 : c9 01 __ CMP #$01
1356 : f0 02 __ BEQ $135a ; (BearGame::getUserInput.s18 + 0)
.s5:
1358 : a9 00 __ LDA #$00
.s18:
135a : aa __ __ TAX
135b : ad ef 17 LDA $17ef ; (joyy + 0)
135e : c9 ff __ CMP #$ff
1360 : f0 06 __ BEQ $1368 ; (BearGame::getUserInput.s9 + 0)
.s15:
1362 : c9 01 __ CMP #$01
1364 : f0 02 __ BEQ $1368 ; (BearGame::getUserInput.s9 + 0)
.s13:
1366 : a9 00 __ LDA #$00
.s9:
1368 : a0 0c __ LDY #$0c
136a : 91 11 __ STA (P4),y ; (this + 0)
136c : 8a __ __ TXA
136d : 88 __ __ DEY
136e : 91 11 __ STA (P4),y ; (this + 0)
.s1001:
1370 : 60 __ __ RTS
--------------------------------------------------------------------
joy_poll: ; joy_poll(u8)->void
.s0:
1371 : aa __ __ TAX
1372 : bd 00 dc LDA $dc00,x 
1375 : a8 __ __ TAY
1376 : 29 10 __ AND #$10
1378 : f0 04 __ BEQ $137e ; (joy_poll.s1005 + 0)
.s1006:
137a : a9 00 __ LDA #$00
137c : f0 02 __ BEQ $1380 ; (joy_poll.s1007 + 0)
.s1005:
137e : a9 01 __ LDA #$01
.s1007:
1380 : 9d f3 17 STA $17f3,x ; (joyb + 0)
1383 : 98 __ __ TYA
1384 : 4a __ __ LSR
1385 : b0 04 __ BCS $138b ; (joy_poll.s2 + 0)
.s1:
1387 : a9 ff __ LDA #$ff
1389 : 90 0b __ BCC $1396 ; (joy_poll.s15 + 0)
.s2:
138b : 98 __ __ TYA
138c : 29 02 __ AND #$02
138e : f0 04 __ BEQ $1394 ; (joy_poll.s1008 + 0)
.s1009:
1390 : a9 00 __ LDA #$00
1392 : b0 02 __ BCS $1396 ; (joy_poll.s15 + 0)
.s1008:
1394 : a9 01 __ LDA #$01
.s15:
1396 : 9d ef 17 STA $17ef,x ; (joyy + 0)
1399 : 98 __ __ TYA
139a : 29 04 __ AND #$04
139c : d0 04 __ BNE $13a2 ; (joy_poll.s8 + 0)
.s7:
139e : a9 ff __ LDA #$ff
13a0 : d0 0b __ BNE $13ad ; (joy_poll.s1001 + 0)
.s8:
13a2 : 98 __ __ TYA
13a3 : 29 08 __ AND #$08
13a5 : f0 04 __ BEQ $13ab ; (joy_poll.s1011 + 0)
.s1012:
13a7 : a9 00 __ LDA #$00
13a9 : f0 02 __ BEQ $13ad ; (joy_poll.s1001 + 0)
.s1011:
13ab : a9 01 __ LDA #$01
.s1001:
13ad : 9d f1 17 STA $17f1,x ; (joyx + 0)
13b0 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::updateBearSpritePosition: ; BearGame::updateBearSpritePosition(const struct BearGame*)->void
.s0:
13b1 : a0 03 __ LDY #$03
13b3 : b1 13 __ LDA (P6),y ; (this + 0)
13b5 : 85 0d __ STA P0 
13b7 : c8 __ __ INY
13b8 : b1 13 __ LDA (P6),y ; (this + 0)
13ba : 85 0e __ STA P1 
13bc : 20 a1 14 JSR $14a1 ; (BearSprite::getPos.s0 + 0)
13bf : 18 __ __ CLC
13c0 : a5 13 __ LDA P6 ; (this + 0)
13c2 : 69 0b __ ADC #$0b
13c4 : 85 0d __ STA P0 
13c6 : a5 14 __ LDA P7 ; (this + 1)
13c8 : 69 00 __ ADC #$00
13ca : 85 0e __ STA P1 
13cc : a0 00 __ LDY #$00
13ce : b1 1b __ LDA (ACCU + 0),y 
13d0 : 85 47 __ STA T3 + 0 
13d2 : c8 __ __ INY
13d3 : b1 1b __ LDA (ACCU + 0),y 
13d5 : 85 48 __ STA T3 + 1 
13d7 : a0 03 __ LDY #$03
13d9 : b1 1b __ LDA (ACCU + 0),y 
13db : 85 46 __ STA T1 + 1 
13dd : 88 __ __ DEY
13de : b1 1b __ LDA (ACCU + 0),y 
13e0 : 85 45 __ STA T1 + 0 
13e2 : 20 cd 14 JSR $14cd ; (JoyDirection::getJoyDirectionX.s0 + 0)
13e5 : c9 ff __ CMP #$ff
13e7 : d0 03 __ BNE $13ec ; (BearGame::updateBearSpritePosition.s13 + 0)
13e9 : 4c 82 14 JMP $1482 ; (BearGame::updateBearSpritePosition.s2 + 0)
.s13:
13ec : c9 01 __ CMP #$01
13ee : d0 14 __ BNE $1404 ; (BearGame::updateBearSpritePosition.s1 + 0)
.s6:
13f0 : a5 48 __ LDA T3 + 1 
13f2 : 49 80 __ EOR #$80
13f4 : c9 81 __ CMP #$81
13f6 : d0 04 __ BNE $13fc ; (BearGame::updateBearSpritePosition.s1017 + 0)
.s1016:
13f8 : a5 47 __ LDA T3 + 0 
13fa : c9 40 __ CMP #$40
.s1017:
13fc : b0 06 __ BCS $1404 ; (BearGame::updateBearSpritePosition.s1 + 0)
.s7:
13fe : e6 47 __ INC T3 + 0 
1400 : d0 02 __ BNE $1404 ; (BearGame::updateBearSpritePosition.s1 + 0)
.s1026:
1402 : e6 48 __ INC T3 + 1 
.s1:
1404 : 20 67 0e JSR $0e67 ; (BearGame::getGameState.s0 + 0)
1407 : aa __ __ TAX
1408 : a5 47 __ LDA T3 + 0 
140a : 85 0f __ STA P2 
140c : a5 48 __ LDA T3 + 1 
140e : 85 10 __ STA P3 
1410 : a0 03 __ LDY #$03
1412 : b1 13 __ LDA (P6),y ; (this + 0)
1414 : 85 0d __ STA P0 
1416 : c8 __ __ INY
1417 : b1 13 __ LDA (P6),y ; (this + 0)
1419 : 85 0e __ STA P1 
141b : 8a __ __ TXA
141c : e0 ff __ CPX #$ff
141e : f0 48 __ BEQ $1468 ; (BearGame::updateBearSpritePosition.s16 + 0)
.s27:
1420 : c9 01 __ CMP #$01
1422 : d0 39 __ BNE $145d ; (BearGame::updateBearSpritePosition.s15 + 0)
.s20:
1424 : 18 __ __ CLC
1425 : a5 45 __ LDA T1 + 0 
1427 : 69 01 __ ADC #$01
1429 : 85 43 __ STA T0 + 0 
142b : 85 1b __ STA ACCU + 0 
142d : a5 46 __ LDA T1 + 1 
142f : 69 00 __ ADC #$00
1431 : 85 44 __ STA T0 + 1 
1433 : 85 1c __ STA ACCU + 1 
1435 : 20 c1 15 JSR $15c1 ; (sint16_to_float + 0)
1438 : a5 1e __ LDA ACCU + 3 
143a : 30 19 __ BMI $1455 ; (BearGame::updateBearSpritePosition.s17 + 0)
.s1005:
143c : c9 43 __ CMP #$43
143e : d0 0c __ BNE $144c ; (BearGame::updateBearSpritePosition.s1009 + 0)
.s1006:
1440 : a5 1d __ LDA ACCU + 2 
1442 : c9 67 __ CMP #$67
1444 : d0 06 __ BNE $144c ; (BearGame::updateBearSpritePosition.s1009 + 0)
.s1007:
1446 : a5 1c __ LDA ACCU + 1 
1448 : c9 80 __ CMP #$80
144a : f0 05 __ BEQ $1451 ; (BearGame::updateBearSpritePosition.s1008 + 0)
.s1009:
144c : 90 07 __ BCC $1455 ; (BearGame::updateBearSpritePosition.s17 + 0)
144e : 4c 5d 14 JMP $145d ; (BearGame::updateBearSpritePosition.s15 + 0)
.s1008:
1451 : a5 1b __ LDA ACCU + 0 
1453 : d0 08 __ BNE $145d ; (BearGame::updateBearSpritePosition.s15 + 0)
.s17:
1455 : a5 43 __ LDA T0 + 0 
1457 : 85 45 __ STA T1 + 0 
1459 : a5 44 __ LDA T0 + 1 
145b : 85 46 __ STA T1 + 1 
.s15:
145d : a5 45 __ LDA T1 + 0 
145f : 85 11 __ STA P4 
1461 : a5 46 __ LDA T1 + 1 
1463 : 85 12 __ STA P5 
1465 : 4c d2 14 JMP $14d2 ; (BearSprite::move.s0 + 0)
.s16:
1468 : 38 __ __ SEC
1469 : a5 45 __ LDA T1 + 0 
146b : e9 01 __ SBC #$01
146d : 85 43 __ STA T0 + 0 
146f : a5 46 __ LDA T1 + 1 
1471 : e9 00 __ SBC #$00
1473 : 30 e8 __ BMI $145d ; (BearGame::updateBearSpritePosition.s15 + 0)
.s1013:
1475 : 85 44 __ STA T0 + 1 
1477 : d0 dc __ BNE $1455 ; (BearGame::updateBearSpritePosition.s17 + 0)
.s1012:
1479 : a5 43 __ LDA T0 + 0 
147b : c9 30 __ CMP #$30
147d : 90 de __ BCC $145d ; (BearGame::updateBearSpritePosition.s15 + 0)
147f : 4c 55 14 JMP $1455 ; (BearGame::updateBearSpritePosition.s17 + 0)
.s2:
1482 : 38 __ __ SEC
1483 : a5 47 __ LDA T3 + 0 
1485 : e9 01 __ SBC #$01
1487 : aa __ __ TAX
1488 : a5 48 __ LDA T3 + 1 
148a : e9 00 __ SBC #$00
148c : 10 03 __ BPL $1491 ; (BearGame::updateBearSpritePosition.s1021 + 0)
148e : 4c 04 14 JMP $1404 ; (BearGame::updateBearSpritePosition.s1 + 0)
.s1021:
1491 : d0 07 __ BNE $149a ; (BearGame::updateBearSpritePosition.s3 + 0)
.s1020:
1493 : e0 18 __ CPX #$18
1495 : b0 03 __ BCS $149a ; (BearGame::updateBearSpritePosition.s3 + 0)
1497 : 4c 04 14 JMP $1404 ; (BearGame::updateBearSpritePosition.s1 + 0)
.s3:
149a : c6 47 __ DEC T3 + 0 
149c : 85 48 __ STA T3 + 1 
149e : 4c 04 14 JMP $1404 ; (BearGame::updateBearSpritePosition.s1 + 0)
--------------------------------------------------------------------
BearSprite::getPos: ; BearSprite::getPos(const struct BearSprite*)->i16*
.s0:
14a1 : a9 04 __ LDA #$04
14a3 : 85 1b __ STA ACCU + 0 
14a5 : a9 00 __ LDA #$00
14a7 : 85 1c __ STA ACCU + 1 
14a9 : 20 0c 16 JSR $160c ; (malloc + 0)
14ac : a0 08 __ LDY #$08
14ae : b1 0d __ LDA (P0),y ; (this + 0)
14b0 : a0 00 __ LDY #$00
14b2 : 91 1b __ STA (ACCU + 0),y 
14b4 : a0 09 __ LDY #$09
14b6 : b1 0d __ LDA (P0),y ; (this + 0)
14b8 : a0 01 __ LDY #$01
14ba : 91 1b __ STA (ACCU + 0),y 
14bc : a0 0a __ LDY #$0a
14be : b1 0d __ LDA (P0),y ; (this + 0)
14c0 : a0 02 __ LDY #$02
14c2 : 91 1b __ STA (ACCU + 0),y 
14c4 : a0 0b __ LDY #$0b
14c6 : b1 0d __ LDA (P0),y ; (this + 0)
14c8 : a0 03 __ LDY #$03
14ca : 91 1b __ STA (ACCU + 0),y 
.s1001:
14cc : 60 __ __ RTS
--------------------------------------------------------------------
JoyDirection::getJoyDirectionX: ; JoyDirection::getJoyDirectionX(const struct JoyDirection*)->enum JoyDirectionX
.s0:
14cd : a0 00 __ LDY #$00
.s1001:
14cf : b1 0d __ LDA (P0),y ; (this + 0)
14d1 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::move: ; BearSprite::move(const struct BearSprite*,i16,i16)->void
.s0:
14d2 : a6 0f __ LDX P2 ; (x + 0)
14d4 : 8a __ __ TXA
14d5 : a0 08 __ LDY #$08
14d7 : 91 0d __ STA (P0),y ; (this + 0)
14d9 : a5 10 __ LDA P3 ; (x + 1)
14db : c8 __ __ INY
14dc : 91 0d __ STA (P0),y ; (this + 0)
14de : a5 11 __ LDA P4 ; (y + 0)
14e0 : c8 __ __ INY
14e1 : 91 0d __ STA (P0),y ; (this + 0)
14e3 : a5 12 __ LDA P5 ; (y + 1)
14e5 : c8 __ __ INY
14e6 : 91 0d __ STA (P0),y ; (this + 0)
14e8 : a5 11 __ LDA P4 ; (y + 0)
14ea : 8d 01 d0 STA $d001 
14ed : 8d 03 d0 STA $d003 
14f0 : 8e 00 d0 STX $d000 
14f3 : 46 10 __ LSR P3 ; (x + 1)
14f5 : ad 10 d0 LDA $d010 
14f8 : 90 04 __ BCC $14fe ; (BearSprite::move.s5 + 0)
.s4:
14fa : 09 03 __ ORA #$03
14fc : b0 02 __ BCS $1500 ; (BearSprite::move.s7 + 0)
.s5:
14fe : 29 fc __ AND #$fc
.s7:
1500 : 8d 10 d0 STA $d010 
1503 : 8e 02 d0 STX $d002 
.s1001:
1506 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::renderGame: ; BearGame::renderGame(const struct BearGame*)->void
.s0:
1507 : a0 03 __ LDY #$03
1509 : b1 0f __ LDA (P2),y ; (this + 0)
150b : 85 0d __ STA P0 
150d : c8 __ __ INY
150e : b1 0f __ LDA (P2),y ; (this + 0)
1510 : 85 0e __ STA P1 
1512 : 4c 15 15 JMP $1515 ; (BearSprite::render.s0 + 0)
--------------------------------------------------------------------
BearSprite::render: ; BearSprite::render(const struct BearSprite*)->void
.s0:
1515 : a0 08 __ LDY #$08
1517 : b1 0d __ LDA (P0),y ; (this + 0)
1519 : aa __ __ TAX
151a : c8 __ __ INY
151b : b1 0d __ LDA (P0),y ; (this + 0)
151d : 4a __ __ LSR
151e : c8 __ __ INY
151f : b1 0d __ LDA (P0),y ; (this + 0)
1521 : 8d 03 d0 STA $d003 
1524 : 8d 01 d0 STA $d001 
1527 : 8e 00 d0 STX $d000 
152a : ad 10 d0 LDA $d010 
152d : 90 04 __ BCC $1533 ; (BearSprite::render.s5 + 0)
.s4:
152f : 09 03 __ ORA #$03
1531 : b0 02 __ BCS $1535 ; (BearSprite::render.s7 + 0)
.s5:
1533 : 29 fc __ AND #$fc
.s7:
1535 : 8d 10 d0 STA $d010 
1538 : 8e 02 d0 STX $d002 
.s1001:
153b : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
153c : a5 1c __ LDA ACCU + 1 
153e : d0 31 __ BNE $1571 ; (divmod + 53)
1540 : a5 04 __ LDA WORK + 1 
1542 : d0 1e __ BNE $1562 ; (divmod + 38)
1544 : 85 06 __ STA WORK + 3 
1546 : a2 04 __ LDX #$04
1548 : 06 1b __ ASL ACCU + 0 
154a : 2a __ __ ROL
154b : c5 03 __ CMP WORK + 0 
154d : 90 02 __ BCC $1551 ; (divmod + 21)
154f : e5 03 __ SBC WORK + 0 
1551 : 26 1b __ ROL ACCU + 0 
1553 : 2a __ __ ROL
1554 : c5 03 __ CMP WORK + 0 
1556 : 90 02 __ BCC $155a ; (divmod + 30)
1558 : e5 03 __ SBC WORK + 0 
155a : 26 1b __ ROL ACCU + 0 
155c : ca __ __ DEX
155d : d0 eb __ BNE $154a ; (divmod + 14)
155f : 85 05 __ STA WORK + 2 
1561 : 60 __ __ RTS
1562 : a5 1b __ LDA ACCU + 0 
1564 : 85 05 __ STA WORK + 2 
1566 : a5 1c __ LDA ACCU + 1 
1568 : 85 06 __ STA WORK + 3 
156a : a9 00 __ LDA #$00
156c : 85 1b __ STA ACCU + 0 
156e : 85 1c __ STA ACCU + 1 
1570 : 60 __ __ RTS
1571 : a5 04 __ LDA WORK + 1 
1573 : d0 1f __ BNE $1594 ; (divmod + 88)
1575 : a5 03 __ LDA WORK + 0 
1577 : 30 1b __ BMI $1594 ; (divmod + 88)
1579 : a9 00 __ LDA #$00
157b : 85 06 __ STA WORK + 3 
157d : a2 10 __ LDX #$10
157f : 06 1b __ ASL ACCU + 0 
1581 : 26 1c __ ROL ACCU + 1 
1583 : 2a __ __ ROL
1584 : c5 03 __ CMP WORK + 0 
1586 : 90 02 __ BCC $158a ; (divmod + 78)
1588 : e5 03 __ SBC WORK + 0 
158a : 26 1b __ ROL ACCU + 0 
158c : 26 1c __ ROL ACCU + 1 
158e : ca __ __ DEX
158f : d0 f2 __ BNE $1583 ; (divmod + 71)
1591 : 85 05 __ STA WORK + 2 
1593 : 60 __ __ RTS
1594 : a9 00 __ LDA #$00
1596 : 85 05 __ STA WORK + 2 
1598 : 85 06 __ STA WORK + 3 
159a : 84 02 __ STY $02 
159c : a0 10 __ LDY #$10
159e : 18 __ __ CLC
159f : 26 1b __ ROL ACCU + 0 
15a1 : 26 1c __ ROL ACCU + 1 
15a3 : 26 05 __ ROL WORK + 2 
15a5 : 26 06 __ ROL WORK + 3 
15a7 : 38 __ __ SEC
15a8 : a5 05 __ LDA WORK + 2 
15aa : e5 03 __ SBC WORK + 0 
15ac : aa __ __ TAX
15ad : a5 06 __ LDA WORK + 3 
15af : e5 04 __ SBC WORK + 1 
15b1 : 90 04 __ BCC $15b7 ; (divmod + 123)
15b3 : 86 05 __ STX WORK + 2 
15b5 : 85 06 __ STA WORK + 3 
15b7 : 88 __ __ DEY
15b8 : d0 e5 __ BNE $159f ; (divmod + 99)
15ba : 26 1b __ ROL ACCU + 0 
15bc : 26 1c __ ROL ACCU + 1 
15be : a4 02 __ LDY $02 
15c0 : 60 __ __ RTS
--------------------------------------------------------------------
sint16_to_float: ; sint16_to_float
15c1 : 24 1c __ BIT ACCU + 1 
15c3 : 30 03 __ BMI $15c8 ; (sint16_to_float + 7)
15c5 : 4c df 15 JMP $15df ; (uint16_to_float + 0)
15c8 : 38 __ __ SEC
15c9 : a9 00 __ LDA #$00
15cb : e5 1b __ SBC ACCU + 0 
15cd : 85 1b __ STA ACCU + 0 
15cf : a9 00 __ LDA #$00
15d1 : e5 1c __ SBC ACCU + 1 
15d3 : 85 1c __ STA ACCU + 1 
15d5 : 20 df 15 JSR $15df ; (uint16_to_float + 0)
15d8 : a5 1e __ LDA ACCU + 3 
15da : 09 80 __ ORA #$80
15dc : 85 1e __ STA ACCU + 3 
15de : 60 __ __ RTS
--------------------------------------------------------------------
uint16_to_float: ; uint16_to_float
15df : a5 1b __ LDA ACCU + 0 
15e1 : 05 1c __ ORA ACCU + 1 
15e3 : d0 05 __ BNE $15ea ; (uint16_to_float + 11)
15e5 : 85 1d __ STA ACCU + 2 
15e7 : 85 1e __ STA ACCU + 3 
15e9 : 60 __ __ RTS
15ea : a2 8e __ LDX #$8e
15ec : a5 1c __ LDA ACCU + 1 
15ee : 30 06 __ BMI $15f6 ; (uint16_to_float + 23)
15f0 : ca __ __ DEX
15f1 : 06 1b __ ASL ACCU + 0 
15f3 : 2a __ __ ROL
15f4 : 10 fa __ BPL $15f0 ; (uint16_to_float + 17)
15f6 : 29 7f __ AND #$7f
15f8 : 85 1d __ STA ACCU + 2 
15fa : a5 1b __ LDA ACCU + 0 
15fc : 85 1c __ STA ACCU + 1 
15fe : 8a __ __ TXA
15ff : 4a __ __ LSR
1600 : 85 1e __ STA ACCU + 3 
1602 : a9 00 __ LDA #$00
1604 : 85 1b __ STA ACCU + 0 
1606 : 6a __ __ ROR
1607 : 05 1d __ ORA ACCU + 2 
1609 : 85 1d __ STA ACCU + 2 
160b : 60 __ __ RTS
--------------------------------------------------------------------
malloc: ; malloc
160c : 18 __ __ CLC
160d : a5 1b __ LDA ACCU + 0 
160f : 69 02 __ ADC #$02
1611 : 85 03 __ STA WORK + 0 
1613 : a5 1c __ LDA ACCU + 1 
1615 : 69 00 __ ADC #$00
1617 : 85 04 __ STA WORK + 1 
1619 : ad f7 17 LDA $17f7 ; (HeapNode + 2)
161c : d0 1f __ BNE $163d ; (malloc + 49)
161e : a9 00 __ LDA #$00
1620 : 8d 70 18 STA $1870 
1623 : 8d 71 18 STA $1871 
1626 : ee f7 17 INC $17f7 ; (HeapNode + 2)
1629 : a9 70 __ LDA #$70
162b : 8d f5 17 STA $17f5 ; (HeapNode + 0)
162e : a9 18 __ LDA #$18
1630 : 8d f6 17 STA $17f6 ; (HeapNode + 1)
1633 : a9 00 __ LDA #$00
1635 : 8d 72 18 STA $1872 
1638 : a9 90 __ LDA #$90
163a : 8d 73 18 STA $1873 
163d : a9 f5 __ LDA #$f5
163f : a2 17 __ LDX #$17
1641 : 85 1d __ STA ACCU + 2 
1643 : 86 1e __ STX ACCU + 3 
1645 : 18 __ __ CLC
1646 : a0 00 __ LDY #$00
1648 : b1 1d __ LDA (ACCU + 2),y 
164a : 85 1b __ STA ACCU + 0 
164c : 65 03 __ ADC WORK + 0 
164e : 85 05 __ STA WORK + 2 
1650 : c8 __ __ INY
1651 : b1 1d __ LDA (ACCU + 2),y 
1653 : 85 1c __ STA ACCU + 1 
1655 : f0 18 __ BEQ $166f ; (malloc + 99)
1657 : 65 04 __ ADC WORK + 1 
1659 : 85 06 __ STA WORK + 3 
165b : a0 02 __ LDY #$02
165d : b1 1b __ LDA (ACCU + 0),y 
165f : c5 05 __ CMP WORK + 2 
1661 : c8 __ __ INY
1662 : b1 1b __ LDA (ACCU + 0),y 
1664 : e5 06 __ SBC WORK + 3 
1666 : b0 08 __ BCS $1670 ; (malloc + 100)
1668 : a5 1b __ LDA ACCU + 0 
166a : a6 1c __ LDX ACCU + 1 
166c : 4c 41 16 JMP $1641 ; (malloc + 53)
166f : 60 __ __ RTS
1670 : 18 __ __ CLC
1671 : a5 05 __ LDA WORK + 2 
1673 : 69 03 __ ADC #$03
1675 : 29 fc __ AND #$fc
1677 : 85 07 __ STA WORK + 4 
1679 : a5 06 __ LDA WORK + 3 
167b : 69 00 __ ADC #$00
167d : 85 08 __ STA WORK + 5 
167f : a0 02 __ LDY #$02
1681 : a5 07 __ LDA WORK + 4 
1683 : d1 1b __ CMP (ACCU + 0),y 
1685 : d0 15 __ BNE $169c ; (malloc + 144)
1687 : c8 __ __ INY
1688 : a5 08 __ LDA WORK + 5 
168a : d1 1b __ CMP (ACCU + 0),y 
168c : d0 0e __ BNE $169c ; (malloc + 144)
168e : a0 00 __ LDY #$00
1690 : b1 1b __ LDA (ACCU + 0),y 
1692 : 91 1d __ STA (ACCU + 2),y 
1694 : c8 __ __ INY
1695 : b1 1b __ LDA (ACCU + 0),y 
1697 : 91 1d __ STA (ACCU + 2),y 
1699 : 4c b9 16 JMP $16b9 ; (malloc + 173)
169c : a0 00 __ LDY #$00
169e : b1 1b __ LDA (ACCU + 0),y 
16a0 : 91 07 __ STA (WORK + 4),y 
16a2 : a5 07 __ LDA WORK + 4 
16a4 : 91 1d __ STA (ACCU + 2),y 
16a6 : c8 __ __ INY
16a7 : b1 1b __ LDA (ACCU + 0),y 
16a9 : 91 07 __ STA (WORK + 4),y 
16ab : a5 08 __ LDA WORK + 5 
16ad : 91 1d __ STA (ACCU + 2),y 
16af : c8 __ __ INY
16b0 : b1 1b __ LDA (ACCU + 0),y 
16b2 : 91 07 __ STA (WORK + 4),y 
16b4 : c8 __ __ INY
16b5 : b1 1b __ LDA (ACCU + 0),y 
16b7 : 91 07 __ STA (WORK + 4),y 
16b9 : a0 00 __ LDY #$00
16bb : a5 05 __ LDA WORK + 2 
16bd : 91 1b __ STA (ACCU + 0),y 
16bf : c8 __ __ INY
16c0 : a5 06 __ LDA WORK + 3 
16c2 : 91 1b __ STA (ACCU + 0),y 
16c4 : a5 1b __ LDA ACCU + 0 
16c6 : 09 02 __ ORA #$02
16c8 : 85 1b __ STA ACCU + 0 
16ca : 60 __ __ RTS
--------------------------------------------------------------------
free: ; free
16cb : a5 1b __ LDA ACCU + 0 
16cd : 29 fc __ AND #$fc
16cf : 85 1b __ STA ACCU + 0 
16d1 : 05 1c __ ORA ACCU + 1 
16d3 : d0 01 __ BNE $16d6 ; (free + 11)
16d5 : 60 __ __ RTS
16d6 : 18 __ __ CLC
16d7 : a0 00 __ LDY #$00
16d9 : b1 1b __ LDA (ACCU + 0),y 
16db : 69 03 __ ADC #$03
16dd : 29 fc __ AND #$fc
16df : 85 1d __ STA ACCU + 2 
16e1 : c8 __ __ INY
16e2 : b1 1b __ LDA (ACCU + 0),y 
16e4 : 69 00 __ ADC #$00
16e6 : 85 1e __ STA ACCU + 3 
16e8 : a9 f5 __ LDA #$f5
16ea : a2 17 __ LDX #$17
16ec : 85 05 __ STA WORK + 2 
16ee : 86 06 __ STX WORK + 3 
16f0 : a0 01 __ LDY #$01
16f2 : b1 05 __ LDA (WORK + 2),y 
16f4 : f0 28 __ BEQ $171e ; (free + 83)
16f6 : aa __ __ TAX
16f7 : 88 __ __ DEY
16f8 : b1 05 __ LDA (WORK + 2),y 
16fa : e4 1e __ CPX ACCU + 3 
16fc : 90 ee __ BCC $16ec ; (free + 33)
16fe : d0 1e __ BNE $171e ; (free + 83)
1700 : c5 1d __ CMP ACCU + 2 
1702 : 90 e8 __ BCC $16ec ; (free + 33)
1704 : d0 18 __ BNE $171e ; (free + 83)
1706 : a0 00 __ LDY #$00
1708 : b1 1d __ LDA (ACCU + 2),y 
170a : 91 1b __ STA (ACCU + 0),y 
170c : c8 __ __ INY
170d : b1 1d __ LDA (ACCU + 2),y 
170f : 91 1b __ STA (ACCU + 0),y 
1711 : c8 __ __ INY
1712 : b1 1d __ LDA (ACCU + 2),y 
1714 : 91 1b __ STA (ACCU + 0),y 
1716 : c8 __ __ INY
1717 : b1 1d __ LDA (ACCU + 2),y 
1719 : 91 1b __ STA (ACCU + 0),y 
171b : 4c 33 17 JMP $1733 ; (free + 104)
171e : a0 00 __ LDY #$00
1720 : b1 05 __ LDA (WORK + 2),y 
1722 : 91 1b __ STA (ACCU + 0),y 
1724 : c8 __ __ INY
1725 : b1 05 __ LDA (WORK + 2),y 
1727 : 91 1b __ STA (ACCU + 0),y 
1729 : c8 __ __ INY
172a : a5 1d __ LDA ACCU + 2 
172c : 91 1b __ STA (ACCU + 0),y 
172e : c8 __ __ INY
172f : a5 1e __ LDA ACCU + 3 
1731 : 91 1b __ STA (ACCU + 0),y 
1733 : a0 02 __ LDY #$02
1735 : b1 05 __ LDA (WORK + 2),y 
1737 : c5 1b __ CMP ACCU + 0 
1739 : d0 1d __ BNE $1758 ; (free + 141)
173b : c8 __ __ INY
173c : b1 05 __ LDA (WORK + 2),y 
173e : c5 1c __ CMP ACCU + 1 
1740 : d0 16 __ BNE $1758 ; (free + 141)
1742 : a0 00 __ LDY #$00
1744 : b1 1b __ LDA (ACCU + 0),y 
1746 : 91 05 __ STA (WORK + 2),y 
1748 : c8 __ __ INY
1749 : b1 1b __ LDA (ACCU + 0),y 
174b : 91 05 __ STA (WORK + 2),y 
174d : c8 __ __ INY
174e : b1 1b __ LDA (ACCU + 0),y 
1750 : 91 05 __ STA (WORK + 2),y 
1752 : c8 __ __ INY
1753 : b1 1b __ LDA (ACCU + 0),y 
1755 : 91 05 __ STA (WORK + 2),y 
1757 : 60 __ __ RTS
1758 : a0 00 __ LDY #$00
175a : a5 1b __ LDA ACCU + 0 
175c : 91 05 __ STA (WORK + 2),y 
175e : c8 __ __ INY
175f : a5 1c __ LDA ACCU + 1 
1761 : 91 05 __ STA (WORK + 2),y 
1763 : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
1764 : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
sp_data:
1765 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 28 a4 20 2a : ............(. *
1775 : __ __ __ BYT a9 60 0a a5 60 0a a5 60 0a aa 60 02 ef 40 02 ef : .`..`..`..`..@..
1785 : __ __ __ BYT 80 02 aa a0 0a 85 90 0a a5 50 0a a6 60 02 a9 40 : .........P..`..@
1795 : __ __ __ BYT 01 55 40 00 55 00 00 28 00 00 00 00 00 00 00 98 : .U@.U..(........
17a5 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 38 00 38 24 10 48 20 : .........8.8$.H 
17b5 : __ __ __ BYT 10 08 39 87 18 01 01 00 01 00 00 00 28 00 04 6c : ..9.........(..l
17c5 : __ __ __ BYT 20 04 00 20 08 38 10 08 10 10 08 92 10 04 7c 20 :  .. .8........| 
17d5 : __ __ __ BYT 04 00 20 03 81 c0 00 7e 00 00 00 00 00 00 00 10 : .. ....~........
--------------------------------------------------------------------
giocharmap:
17e5 : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
opp::cout:
17e6 : __ __ __ BYT 00 00 00 00 00 00 00                            : .......
--------------------------------------------------------------------
vspriteScreen:
17ed : __ __ __ BSS	2
--------------------------------------------------------------------
joyy:
17ef : __ __ __ BSS	2
--------------------------------------------------------------------
joyx:
17f1 : __ __ __ BSS	2
--------------------------------------------------------------------
joyb:
17f3 : __ __ __ BSS	2
--------------------------------------------------------------------
HeapNode:
17f5 : __ __ __ BSS	4
--------------------------------------------------------------------
mul40:
1800 : __ __ __ BYT 00 00 28 00 50 00 78 00 a0 00 c8 00 f0 00 18 01 : ..(.P.x.........
1810 : __ __ __ BYT 40 01 68 01 90 01 b8 01 e0 01 08 02 30 02 58 02 : @.h.........0.X.
1820 : __ __ __ BYT 80 02 a8 02 d0 02 f8 02 20 03 48 03 70 03 98 03 : ........ .H.p...
1830 : __ __ __ BYT c0 03                                           : ..
--------------------------------------------------------------------
bitshift:
1832 : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
1842 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
1852 : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
1862 : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........

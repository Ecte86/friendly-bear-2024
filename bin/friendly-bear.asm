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
080e : 8e 0a 16 STX $160a ; (spentry + 0)
0811 : a9 fd __ LDA #$fd
0813 : 85 19 __ STA IP + 0 
0815 : a9 16 __ LDA #$16
0817 : 85 1a __ STA IP + 1 
0819 : 38 __ __ SEC
081a : a9 17 __ LDA #$17
081c : e9 16 __ SBC #$16
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
0830 : a9 0a __ LDA #$0a
0832 : e9 fd __ SBC #$fd
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
084b : a9 cd __ LDA #$cd
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
0882 : 8d cf 9f STA $9fcf ; (main@stack + 0)
0885 : a5 54 __ LDA T3 + 1 
0887 : 8d d0 9f STA $9fd0 ; (main@stack + 1)
.s0:
088a : a9 be __ LDA #$be
088c : 85 0d __ STA P0 
088e : a9 16 __ LDA #$16
0890 : 85 0e __ STA P1 
0892 : 20 fb 0e JSR $0efb ; (opp::ios::+ios.s0 + 0)
0895 : a9 02 __ LDA #$02
0897 : 8d be 16 STA $16be ; (opp::cout + 0)
089a : a9 d3 __ LDA #$d3
089c : 8d f9 9f STA $9ff9 ; (sstack + 0)
089f : a9 9f __ LDA #$9f
08a1 : 8d fa 9f STA $9ffa ; (sstack + 1)
08a4 : 20 96 09 JSR $0996 ; (BearGame::+BearGame.s0 + 0)
08a7 : 20 3d 0e JSR $0e3d ; (clrscr.s0 + 0)
08aa : a9 03 __ LDA #$03
08ac : 85 0e __ STA P1 
08ae : 20 41 0e JSR $0e41 ; (iocharmap.s0 + 0)
.l3:
08b1 : a9 d3 __ LDA #$d3
08b3 : 85 0d __ STA P0 
08b5 : a9 9f __ LDA #$9f
08b7 : 85 0e __ STA P1 
.l1008:
08b9 : 20 60 0e JSR $0e60 ; (BearGame::getGameState.s0 + 0)
08bc : c9 02 __ CMP #$02
08be : f0 f9 __ BEQ $08b9 ; (main.l1008 + 0)
.s15:
08c0 : b0 ef __ BCS $08b1 ; (main.l3 + 0)
.s17:
08c2 : 85 43 __ STA T1 + 0 
08c4 : a9 00 __ LDA #$00
08c6 : 85 0d __ STA P0 
08c8 : 85 0e __ STA P1 
08ca : 20 65 0e JSR $0e65 ; (gotoxy.s0 + 0)
08cd : a9 be __ LDA #$be
08cf : 85 11 __ STA P4 
08d1 : a9 16 __ LDA #$16
08d3 : 85 12 __ STA P5 
08d5 : a5 43 __ LDA T1 + 0 
08d7 : d0 2e __ BNE $0907 ; (main.s9 + 0)
.s6:
08d9 : a9 17 __ LDA #$17
08db : 85 13 __ STA P6 
08dd : a9 0f __ LDA #$0f
08df : 85 14 __ STA P7 
08e1 : 20 6e 0e JSR $0e6e ; (opp::ostream::operator<<.s0 + 0)
08e4 : a5 1b __ LDA ACCU + 0 
08e6 : 85 0e __ STA P1 
08e8 : a5 1c __ LDA ACCU + 1 
08ea : 85 0f __ STA P2 
08ec : a9 0a __ LDA #$0a
08ee : 85 10 __ STA P3 
08f0 : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
08f3 : a9 d3 __ LDA #$d3
08f5 : 8d fb 9f STA $9ffb ; (sstack + 2)
08f8 : a9 9f __ LDA #$9f
08fa : 8d fc 9f STA $9ffc ; (sstack + 3)
08fd : 20 1d 0f JSR $0f1d ; (BearGame::setup.s0 + 0)
0900 : a9 01 __ LDA #$01
0902 : 8d d3 9f STA $9fd3 ; (bearGame + 0)
0905 : d0 aa __ BNE $08b1 ; (main.l3 + 0)
.s9:
0907 : a9 08 __ LDA #$08
0909 : 85 13 __ STA P6 
090b : a9 12 __ LDA #$12
090d : 85 14 __ STA P7 
090f : 20 6e 0e JSR $0e6e ; (opp::ostream::operator<<.s0 + 0)
0912 : a5 1b __ LDA ACCU + 0 
0914 : 85 53 __ STA T3 + 0 
0916 : a5 1c __ LDA ACCU + 1 
0918 : 85 54 __ STA T3 + 1 
091a : a9 d3 __ LDA #$d3
091c : 85 0d __ STA P0 
091e : a9 9f __ LDA #$9f
0920 : 85 0e __ STA P1 
0922 : 20 10 12 JSR $1210 ; (BearGame::getLevel.s0 + 0)
0925 : a5 53 __ LDA T3 + 0 
0927 : 8d fc 9f STA $9ffc ; (sstack + 3)
092a : a5 54 __ LDA T3 + 1 
092c : 8d fd 9f STA $9ffd ; (sstack + 4)
092f : a5 1b __ LDA ACCU + 0 
0931 : 8d fe 9f STA $9ffe ; (sstack + 5)
0934 : a5 1c __ LDA ACCU + 1 
0936 : 8d ff 9f STA $9fff ; (sstack + 6)
0939 : 20 66 10 JSR $1066 ; (opp::ostream::operator<<.s0 + 0)
093c : a5 1b __ LDA ACCU + 0 
093e : 85 11 __ STA P4 
0940 : a5 1c __ LDA ACCU + 1 
0942 : 85 12 __ STA P5 
0944 : a9 1c __ LDA #$1c
0946 : 85 13 __ STA P6 
0948 : a9 12 __ LDA #$12
094a : 85 14 __ STA P7 
094c : 20 6e 0e JSR $0e6e ; (opp::ostream::operator<<.s0 + 0)
094f : a5 1b __ LDA ACCU + 0 
0951 : 85 53 __ STA T3 + 0 
0953 : a5 1c __ LDA ACCU + 1 
0955 : 85 54 __ STA T3 + 1 
0957 : a9 d9 __ LDA #$d9
0959 : 85 0d __ STA P0 
095b : a9 9f __ LDA #$9f
095d : 85 0e __ STA P1 
095f : 20 25 12 JSR $1225 ; (Score::getScore.s0 + 0)
0962 : a5 53 __ LDA T3 + 0 
0964 : 8d fc 9f STA $9ffc ; (sstack + 3)
0967 : a5 54 __ LDA T3 + 1 
0969 : 8d fd 9f STA $9ffd ; (sstack + 4)
096c : a5 1b __ LDA ACCU + 0 
096e : 8d fe 9f STA $9ffe ; (sstack + 5)
0971 : a5 1c __ LDA ACCU + 1 
0973 : 8d ff 9f STA $9fff ; (sstack + 6)
0976 : 20 66 10 JSR $1066 ; (opp::ostream::operator<<.s0 + 0)
0979 : a5 1b __ LDA ACCU + 0 
097b : 85 0e __ STA P1 
097d : a5 1c __ LDA ACCU + 1 
097f : 85 0f __ STA P2 
0981 : a9 0a __ LDA #$0a
0983 : 85 10 __ STA P3 
0985 : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
0988 : a9 d3 __ LDA #$d3
098a : 85 13 __ STA P6 
098c : a9 9f __ LDA #$9f
098e : 85 14 __ STA P7 
0990 : 20 31 12 JSR $1231 ; (BearGame::play.s0 + 0)
0993 : 4c b1 08 JMP $08b1 ; (main.l3 + 0)
--------------------------------------------------------------------
BearGame::+BearGame: ; BearGame::+BearGame(const struct BearGame*)->void
.s0:
0996 : ad f9 9f LDA $9ff9 ; (sstack + 0)
0999 : 85 4c __ STA T0 + 0 
099b : 18 __ __ CLC
099c : 69 06 __ ADC #$06
099e : 85 17 __ STA P10 
09a0 : ad fa 9f LDA $9ffa ; (sstack + 1)
09a3 : 85 4d __ STA T0 + 1 
09a5 : 69 00 __ ADC #$00
09a7 : 85 18 __ STA P11 
09a9 : 20 55 0a JSR $0a55 ; (Score::+Score.s1000 + 0)
09ac : a9 01 __ LDA #$01
09ae : a0 04 __ LDY #$04
09b0 : 91 4c __ STA (T0 + 0),y 
09b2 : a9 00 __ LDA #$00
09b4 : c8 __ __ INY
09b5 : 91 4c __ STA (T0 + 0),y 
09b7 : a0 0a __ LDY #$0a
09b9 : 91 4c __ STA (T0 + 0),y 
09bb : c8 __ __ INY
09bc : 91 4c __ STA (T0 + 0),y 
09be : a9 e9 __ LDA #$e9
09c0 : 85 17 __ STA P10 
09c2 : a9 9f __ LDA #$9f
09c4 : 85 18 __ STA P11 
09c6 : 20 55 0a JSR $0a55 ; (Score::+Score.s1000 + 0)
09c9 : ad e9 9f LDA $9fe9 
09cc : a0 06 __ LDY #$06
09ce : 91 4c __ STA (T0 + 0),y 
09d0 : ad ea 9f LDA $9fea 
09d3 : c8 __ __ INY
09d4 : 91 4c __ STA (T0 + 0),y 
09d6 : ad eb 9f LDA $9feb 
09d9 : c8 __ __ INY
09da : 91 4c __ STA (T0 + 0),y 
09dc : ad ec 9f LDA $9fec 
09df : c8 __ __ INY
09e0 : 91 4c __ STA (T0 + 0),y 
09e2 : a9 0c __ LDA #$0c
09e4 : 85 1b __ STA ACCU + 0 
09e6 : a9 00 __ LDA #$00
09e8 : 85 1c __ STA ACCU + 1 
09ea : 20 b2 14 JSR $14b2 ; (malloc + 0)
09ed : a5 1b __ LDA ACCU + 0 
09ef : 85 4e __ STA T2 + 0 
09f1 : a5 1c __ LDA ACCU + 1 
09f3 : 85 4f __ STA T2 + 1 
09f5 : 05 1b __ ORA ACCU + 0 
09f7 : f0 0b __ BEQ $0a04 ; (BearGame::+BearGame.s3 + 0)
.s2:
09f9 : a5 1b __ LDA ACCU + 0 
09fb : 85 0d __ STA P0 
09fd : a5 1c __ LDA ACCU + 1 
09ff : 85 0e __ STA P1 
0a01 : 20 ae 0d JSR $0dae ; (BearSprite::+BearSprite.s0 + 0)
.s3:
0a04 : a9 00 __ LDA #$00
0a06 : a8 __ __ TAY
0a07 : 91 4c __ STA (T0 + 0),y 
0a09 : c8 __ __ INY
0a0a : 91 4c __ STA (T0 + 0),y 
0a0c : a5 4e __ LDA T2 + 0 
0a0e : c8 __ __ INY
0a0f : 91 4c __ STA (T0 + 0),y 
0a11 : a5 4f __ LDA T2 + 1 
0a13 : c8 __ __ INY
0a14 : 91 4c __ STA (T0 + 0),y 
0a16 : a9 00 __ LDA #$00
0a18 : 85 0f __ STA P2 
0a1a : 85 1c __ STA ACCU + 1 
0a1c : 8d e7 9f STA $9fe7 
0a1f : 8d e8 9f STA $9fe8 
0a22 : 85 11 __ STA P4 
0a24 : 85 12 __ STA P5 
0a26 : a9 28 __ LDA #$28
0a28 : 85 13 __ STA P6 
0a2a : a9 19 __ LDA #$19
0a2c : 85 14 __ STA P7 
0a2e : a9 00 __ LDA #$00
0a30 : a0 0a __ LDY #$0a
0a32 : 84 1b __ STY ACCU + 0 
0a34 : 91 4c __ STA (T0 + 0),y 
0a36 : ad e8 9f LDA $9fe8 
0a39 : c8 __ __ INY
0a3a : 91 4c __ STA (T0 + 0),y 
0a3c : 20 b2 14 JSR $14b2 ; (malloc + 0)
0a3f : a5 1b __ LDA ACCU + 0 
0a41 : 85 0d __ STA P0 
0a43 : a0 0c __ LDY #$0c
0a45 : 91 4c __ STA (T0 + 0),y 
0a47 : a5 1c __ LDA ACCU + 1 
0a49 : 85 0e __ STA P1 
0a4b : c8 __ __ INY
0a4c : 91 4c __ STA (T0 + 0),y 
0a4e : a9 04 __ LDA #$04
0a50 : 85 10 __ STA P3 
0a52 : 4c e7 0d JMP $0de7 ; (cwin_init.s0 + 0)
--------------------------------------------------------------------
Score::+Score: ; Score::+Score(const struct Score*)->void
.s1000:
0a55 : 38 __ __ SEC
0a56 : a5 23 __ LDA SP + 0 
0a58 : e9 0a __ SBC #$0a
0a5a : 85 23 __ STA SP + 0 
0a5c : b0 02 __ BCS $0a60 ; (Score::+Score.s0 + 0)
0a5e : c6 24 __ DEC SP + 1 
.s0:
0a60 : a9 00 __ LDA #$00
0a62 : 85 1c __ STA ACCU + 1 
0a64 : a0 02 __ LDY #$02
0a66 : 91 17 __ STA (P10),y ; (this + 0)
0a68 : c8 __ __ INY
0a69 : 91 17 __ STA (P10),y ; (this + 0)
0a6b : a9 06 __ LDA #$06
0a6d : 85 1b __ STA ACCU + 0 
0a6f : 20 b2 14 JSR $14b2 ; (malloc + 0)
0a72 : a5 1b __ LDA ACCU + 0 
0a74 : 85 4a __ STA T1 + 0 
0a76 : a5 1c __ LDA ACCU + 1 
0a78 : 85 4b __ STA T1 + 1 
0a7a : 05 1b __ ORA ACCU + 0 
0a7c : f0 1d __ BEQ $0a9b ; (Score::+Score.s3 + 0)
.s2:
0a7e : a5 1b __ LDA ACCU + 0 
0a80 : 85 13 __ STA P6 
0a82 : 85 1f __ STA ADDR + 0 
0a84 : a5 1c __ LDA ACCU + 1 
0a86 : 85 14 __ STA P7 
0a88 : 18 __ __ CLC
0a89 : 69 ff __ ADC #$ff
0a8b : 85 20 __ STA ADDR + 1 
0a8d : a0 fe __ LDY #$fe
0a8f : b1 1f __ LDA (ADDR + 0),y 
0a91 : 85 15 __ STA P8 
0a93 : c8 __ __ INY
0a94 : b1 1f __ LDA (ADDR + 0),y 
0a96 : 85 16 __ STA P9 
0a98 : 20 2b 0b JSR $0b2b ; (ScoreType::*ScoreType.s0 + 0)
.s3:
0a9b : a5 4a __ LDA T1 + 0 
0a9d : a0 00 __ LDY #$00
0a9f : 91 17 __ STA (P10),y ; (this + 0)
0aa1 : a5 4b __ LDA T1 + 1 
0aa3 : c8 __ __ INY
0aa4 : 91 17 __ STA (P10),y ; (this + 0)
0aa6 : 98 __ __ TYA
0aa7 : a0 04 __ LDY #$04
0aa9 : 91 23 __ STA (SP + 0),y 
0aab : a9 00 __ LDA #$00
0aad : c8 __ __ INY
0aae : 91 23 __ STA (SP + 0),y 
0ab0 : a9 64 __ LDA #$64
0ab2 : c8 __ __ INY
0ab3 : 91 23 __ STA (SP + 0),y 
0ab5 : a9 00 __ LDA #$00
0ab7 : c8 __ __ INY
0ab8 : 91 23 __ STA (SP + 0),y 
0aba : a9 ef __ LDA #$ef
0abc : a0 02 __ LDY #$02
0abe : 91 23 __ STA (SP + 0),y 
0ac0 : a9 9f __ LDA #$9f
0ac2 : c8 __ __ INY
0ac3 : 91 23 __ STA (SP + 0),y 
0ac5 : a9 ed __ LDA #$ed
0ac7 : 85 0d __ STA P0 
0ac9 : a9 9f __ LDA #$9f
0acb : 85 0e __ STA P1 
0acd : a9 15 __ LDA #$15
0acf : 85 0f __ STA P2 
0ad1 : a9 0d __ LDA #$0d
0ad3 : 85 10 __ STA P3 
0ad5 : 20 c0 0c JSR $0cc0 ; (opp::string::+string.s0 + 0)
0ad8 : a9 ed __ LDA #$ed
0ada : 85 0f __ STA P2 
0adc : a9 9f __ LDA #$9f
0ade : 85 10 __ STA P3 
0ae0 : 18 __ __ CLC
0ae1 : a5 23 __ LDA SP + 0 
0ae3 : 69 08 __ ADC #$08
0ae5 : 85 0d __ STA P0 
0ae7 : a5 24 __ LDA SP + 1 
0ae9 : 69 00 __ ADC #$00
0aeb : 85 0e __ STA P1 
0aed : 20 27 0d JSR $0d27 ; (opp::string::+string.s0 + 0)
0af0 : 20 eb 0b JSR $0beb ; (ScoreType::+ScoreType.s0 + 0)
0af3 : a9 ef __ LDA #$ef
0af5 : 85 13 __ STA P6 
0af7 : a9 9f __ LDA #$9f
0af9 : 85 14 __ STA P7 
0afb : a0 00 __ LDY #$00
0afd : b1 17 __ LDA (P10),y ; (this + 0)
0aff : 85 11 __ STA P4 
0b01 : c8 __ __ INY
0b02 : b1 17 __ LDA (P10),y ; (this + 0)
0b04 : 85 12 __ STA P5 
0b06 : 20 73 0d JSR $0d73 ; (ScoreType::operator=.s0 + 0)
0b09 : a9 f3 __ LDA #$f3
0b0b : 85 0d __ STA P0 
0b0d : a9 9f __ LDA #$9f
0b0f : 85 0e __ STA P1 
0b11 : 20 b2 0c JSR $0cb2 ; (opp::string::~string.s0 + 0)
0b14 : a9 ed __ LDA #$ed
0b16 : 85 0d __ STA P0 
0b18 : a9 9f __ LDA #$9f
0b1a : 85 0e __ STA P1 
0b1c : 20 b2 0c JSR $0cb2 ; (opp::string::~string.s0 + 0)
.s1001:
0b1f : 18 __ __ CLC
0b20 : a5 23 __ LDA SP + 0 
0b22 : 69 0a __ ADC #$0a
0b24 : 85 23 __ STA SP + 0 
0b26 : 90 02 __ BCC $0b2a ; (Score::+Score.s1001 + 11)
0b28 : e6 24 __ INC SP + 1 
0b2a : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::*ScoreType: ; ScoreType::*ScoreType(struct ScoreType*,const struct ScoreType*)->void
.s0:
0b2b : a5 13 __ LDA P6 ; (this + 0)
0b2d : 85 44 __ STA T0 + 0 
0b2f : 4c 48 0b JMP $0b48 ; (ScoreType::*ScoreType.l26 + 0)
.s2:
0b32 : a5 13 __ LDA P6 ; (this + 0)
0b34 : 85 11 __ STA P4 
0b36 : 18 __ __ CLC
0b37 : 69 06 __ ADC #$06
0b39 : 85 44 __ STA T0 + 0 
0b3b : 85 13 __ STA P6 ; (this + 0)
0b3d : a5 14 __ LDA P7 ; (this + 1)
0b3f : 85 12 __ STA P5 
0b41 : 69 00 __ ADC #$00
0b43 : 85 14 __ STA P7 ; (this + 1)
0b45 : 20 55 0b JSR $0b55 ; (ScoreType::+ScoreType.s0 + 0)
.l26:
0b48 : a5 14 __ LDA P7 ; (this + 1)
0b4a : c5 16 __ CMP P9 ; (end + 1)
0b4c : d0 e4 __ BNE $0b32 ; (ScoreType::*ScoreType.s2 + 0)
.s1002:
0b4e : a5 44 __ LDA T0 + 0 
0b50 : c5 15 __ CMP P8 ; (end + 0)
0b52 : d0 de __ BNE $0b32 ; (ScoreType::*ScoreType.s2 + 0)
.s1001:
0b54 : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::+ScoreType: ; ScoreType::+ScoreType(const struct ScoreType*)->void
.s0:
0b55 : a9 00 __ LDA #$00
0b57 : a8 __ __ TAY
0b58 : 91 11 __ STA (P4),y ; (this + 0)
0b5a : c8 __ __ INY
0b5b : 91 11 __ STA (P4),y ; (this + 0)
0b5d : c8 __ __ INY
0b5e : 91 11 __ STA (P4),y ; (this + 0)
0b60 : c8 __ __ INY
0b61 : 91 11 __ STA (P4),y ; (this + 0)
0b63 : 18 __ __ CLC
0b64 : a5 11 __ LDA P4 ; (this + 0)
0b66 : 69 04 __ ADC #$04
0b68 : 85 0d __ STA P0 
0b6a : a5 12 __ LDA P5 ; (this + 1)
0b6c : 69 00 __ ADC #$00
0b6e : 85 0e __ STA P1 
0b70 : a9 00 __ LDA #$00
0b72 : c8 __ __ INY
0b73 : 91 11 __ STA (P4),y ; (this + 0)
0b75 : c8 __ __ INY
0b76 : 91 11 __ STA (P4),y ; (this + 0)
0b78 : a9 ea __ LDA #$ea
0b7a : 85 0f __ STA P2 
0b7c : a9 0b __ LDA #$0b
0b7e : 85 10 __ STA P3 
0b80 : 4c 83 0b JMP $0b83 ; (opp::string::operator=.s0 + 0)
--------------------------------------------------------------------
opp::string::operator=: ; opp::string::operator=(const struct opp::string*,const u8*)->struct opp::string&
.s0:
0b83 : a0 00 __ LDY #$00
0b85 : b1 0d __ LDA (P0),y ; (this + 0)
0b87 : 85 1b __ STA ACCU + 0 
0b89 : c8 __ __ INY
0b8a : b1 0d __ LDA (P0),y ; (this + 0)
0b8c : 85 1c __ STA ACCU + 1 
0b8e : 20 71 15 JSR $1571 ; (free + 0)
0b91 : a5 10 __ LDA P3 ; (s + 1)
0b93 : 05 0f __ ORA P2 ; (s + 0)
0b95 : f0 0e __ BEQ $0ba5 ; (opp::string::operator=.s1006 + 0)
.s1:
0b97 : a0 00 __ LDY #$00
0b99 : f0 01 __ BEQ $0b9c ; (opp::string::operator=.l5 + 0)
.s6:
0b9b : c8 __ __ INY
.l5:
0b9c : b1 0f __ LDA (P2),y ; (s + 0)
0b9e : d0 fb __ BNE $0b9b ; (opp::string::operator=.s6 + 0)
.s7:
0ba0 : 98 __ __ TYA
0ba1 : d0 12 __ BNE $0bb5 ; (opp::string::operator=.s9 + 0)
.s10:
0ba3 : a9 00 __ LDA #$00
.s1006:
0ba5 : a8 __ __ TAY
0ba6 : 91 0d __ STA (P0),y ; (this + 0)
0ba8 : a0 01 __ LDY #$01
0baa : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0bac : a5 0d __ LDA P0 ; (this + 0)
0bae : 85 1b __ STA ACCU + 0 
0bb0 : a5 0e __ LDA P1 ; (this + 1)
0bb2 : 85 1c __ STA ACCU + 1 
0bb4 : 60 __ __ RTS
.s9:
0bb5 : 85 43 __ STA T0 + 0 
0bb7 : 18 __ __ CLC
0bb8 : 69 02 __ ADC #$02
0bba : 85 1b __ STA ACCU + 0 
0bbc : a9 00 __ LDA #$00
0bbe : 2a __ __ ROL
0bbf : 85 1c __ STA ACCU + 1 
0bc1 : 20 b2 14 JSR $14b2 ; (malloc + 0)
0bc4 : a5 43 __ LDA T0 + 0 
0bc6 : a0 00 __ LDY #$00
0bc8 : 91 1b __ STA (ACCU + 0),y 
0bca : a5 1b __ LDA ACCU + 0 
0bcc : 91 0d __ STA (P0),y ; (this + 0)
0bce : a5 1c __ LDA ACCU + 1 
0bd0 : c8 __ __ INY
0bd1 : 91 0d __ STA (P0),y ; (this + 0)
0bd3 : e6 43 __ INC T0 + 0 
0bd5 : f0 d5 __ BEQ $0bac ; (opp::string::operator=.s1001 + 0)
.s18:
0bd7 : e6 1b __ INC ACCU + 0 
0bd9 : d0 02 __ BNE $0bdd ; (opp::string::operator=.s18 + 6)
0bdb : e6 1c __ INC ACCU + 1 
0bdd : 88 __ __ DEY
.l1004:
0bde : b1 0f __ LDA (P2),y ; (s + 0)
0be0 : 91 1b __ STA (ACCU + 0),y 
0be2 : c8 __ __ INY
0be3 : c4 43 __ CPY T0 + 0 
0be5 : 90 f7 __ BCC $0bde ; (opp::string::operator=.l1004 + 0)
0be7 : 4c ac 0b JMP $0bac ; (opp::string::operator=.s1001 + 0)
--------------------------------------------------------------------
0bea : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
ScoreType::+ScoreType: ; ScoreType::+ScoreType(const struct ScoreType*,bool,bool,i16,struct opp::string)->void
.s0:
0beb : a0 02 __ LDY #$02
0bed : b1 23 __ LDA (SP + 0),y 
0bef : 85 48 __ STA T0 + 0 
0bf1 : 18 __ __ CLC
0bf2 : 69 04 __ ADC #$04
0bf4 : 85 0d __ STA P0 ; (this + 0)
0bf6 : c8 __ __ INY
0bf7 : b1 23 __ LDA (SP + 0),y 
0bf9 : 85 49 __ STA T0 + 1 
0bfb : 69 00 __ ADC #$00
0bfd : 85 0e __ STA P1 ; (this + 1)
0bff : a9 00 __ LDA #$00
0c01 : c8 __ __ INY
0c02 : 91 48 __ STA (T0 + 0),y 
0c04 : c8 __ __ INY
0c05 : 91 48 __ STA (T0 + 0),y 
0c07 : 88 __ __ DEY
0c08 : b1 23 __ LDA (SP + 0),y 
0c0a : a0 00 __ LDY #$00
0c0c : 91 48 __ STA (T0 + 0),y 
0c0e : a0 05 __ LDY #$05
0c10 : b1 23 __ LDA (SP + 0),y 
0c12 : a0 01 __ LDY #$01
0c14 : 91 48 __ STA (T0 + 0),y 
0c16 : a0 06 __ LDY #$06
0c18 : b1 23 __ LDA (SP + 0),y 
0c1a : a0 02 __ LDY #$02
0c1c : 91 48 __ STA (T0 + 0),y 
0c1e : a0 07 __ LDY #$07
0c20 : b1 23 __ LDA (SP + 0),y 
0c22 : a0 03 __ LDY #$03
0c24 : 91 48 __ STA (T0 + 0),y 
0c26 : 18 __ __ CLC
0c27 : a5 23 __ LDA SP + 0 
0c29 : 69 08 __ ADC #$08
0c2b : 85 0f __ STA P2 ; (isAchievement + 0)
0c2d : a5 24 __ LDA SP + 1 
0c2f : 69 00 __ ADC #$00
0c31 : 85 10 __ STA P3 ; (isAchieved + 0)
0c33 : 20 41 0c JSR $0c41 ; (opp::string::operator=.s0 + 0)
0c36 : a5 0f __ LDA P2 ; (isAchievement + 0)
0c38 : 85 0d __ STA P0 ; (this + 0)
0c3a : a5 10 __ LDA P3 ; (isAchieved + 0)
0c3c : 85 0e __ STA P1 ; (this + 1)
0c3e : 4c b2 0c JMP $0cb2 ; (opp::string::~string.s0 + 0)
--------------------------------------------------------------------
opp::string::operator=: ; opp::string::operator=(const struct opp::string*,const struct opp::string&)->struct opp::string&
.s0:
0c41 : a0 00 __ LDY #$00
0c43 : b1 0d __ LDA (P0),y ; (this + 0)
0c45 : aa __ __ TAX
0c46 : b1 0f __ LDA (P2),y ; (s + 0)
0c48 : 85 46 __ STA T3 + 0 
0c4a : c8 __ __ INY
0c4b : b1 0f __ LDA (P2),y ; (s + 0)
0c4d : 85 47 __ STA T3 + 1 
0c4f : d1 0d __ CMP (P0),y ; (this + 0)
0c51 : f0 04 __ BEQ $0c57 ; (opp::string::operator=.s1004 + 0)
.s1008:
0c53 : 8a __ __ TXA
0c54 : 4c 5c 0c JMP $0c5c ; (opp::string::operator=.s1 + 0)
.s1004:
0c57 : 8a __ __ TXA
0c58 : e4 46 __ CPX T3 + 0 
0c5a : f0 4d __ BEQ $0ca9 ; (opp::string::operator=.s1001 + 0)
.s1:
0c5c : 85 1b __ STA ACCU + 0 
0c5e : b1 0d __ LDA (P0),y ; (this + 0)
0c60 : 85 1c __ STA ACCU + 1 
0c62 : 20 71 15 JSR $1571 ; (free + 0)
0c65 : a5 46 __ LDA T3 + 0 
0c67 : 05 47 __ ORA T3 + 1 
0c69 : d0 09 __ BNE $0c74 ; (opp::string::operator=.s4 + 0)
.s5:
0c6b : a8 __ __ TAY
0c6c : 91 0d __ STA (P0),y ; (this + 0)
0c6e : a0 01 __ LDY #$01
0c70 : 91 0d __ STA (P0),y ; (this + 0)
0c72 : d0 35 __ BNE $0ca9 ; (opp::string::operator=.s1001 + 0)
.s4:
0c74 : a0 00 __ LDY #$00
0c76 : b1 46 __ LDA (T3 + 0),y 
0c78 : 18 __ __ CLC
0c79 : 69 02 __ ADC #$02
0c7b : 85 43 __ STA T1 + 0 
0c7d : 85 1b __ STA ACCU + 0 
0c7f : 98 __ __ TYA
0c80 : 2a __ __ ROL
0c81 : 85 1c __ STA ACCU + 1 
0c83 : 20 b2 14 JSR $14b2 ; (malloc + 0)
0c86 : a5 1b __ LDA ACCU + 0 
0c88 : a0 00 __ LDY #$00
0c8a : 91 0d __ STA (P0),y ; (this + 0)
0c8c : a5 1c __ LDA ACCU + 1 
0c8e : c8 __ __ INY
0c8f : 91 0d __ STA (P0),y ; (this + 0)
0c91 : a5 43 __ LDA T1 + 0 
0c93 : f0 14 __ BEQ $0ca9 ; (opp::string::operator=.s1001 + 0)
.s13:
0c95 : 88 __ __ DEY
0c96 : b1 0f __ LDA (P2),y ; (s + 0)
0c98 : 85 44 __ STA T2 + 0 
0c9a : c8 __ __ INY
0c9b : b1 0f __ LDA (P2),y ; (s + 0)
0c9d : 85 45 __ STA T2 + 1 
0c9f : 88 __ __ DEY
.l1006:
0ca0 : b1 44 __ LDA (T2 + 0),y 
0ca2 : 91 1b __ STA (ACCU + 0),y 
0ca4 : c8 __ __ INY
0ca5 : c4 43 __ CPY T1 + 0 
0ca7 : 90 f7 __ BCC $0ca0 ; (opp::string::operator=.l1006 + 0)
.s1001:
0ca9 : a5 0d __ LDA P0 ; (this + 0)
0cab : 85 1b __ STA ACCU + 0 
0cad : a5 0e __ LDA P1 ; (this + 1)
0caf : 85 1c __ STA ACCU + 1 
0cb1 : 60 __ __ RTS
--------------------------------------------------------------------
opp::string::~string: ; opp::string::~string(const struct opp::string*)->void
.s0:
0cb2 : a0 00 __ LDY #$00
0cb4 : b1 0d __ LDA (P0),y ; (this + 0)
0cb6 : 85 1b __ STA ACCU + 0 
0cb8 : c8 __ __ INY
0cb9 : b1 0d __ LDA (P0),y ; (this + 0)
0cbb : 85 1c __ STA ACCU + 1 
0cbd : 4c 71 15 JMP $1571 ; (free + 0)
--------------------------------------------------------------------
opp::string::+string: ; opp::string::+string(const struct opp::string*,const u8*)->void
.s0:
0cc0 : a5 10 __ LDA P3 ; (s + 1)
0cc2 : 05 0f __ ORA P2 ; (s + 0)
0cc4 : f0 0e __ BEQ $0cd4 ; (opp::string::+string.s56 + 0)
.s1:
0cc6 : a0 00 __ LDY #$00
0cc8 : b1 0f __ LDA (P2),y ; (s + 0)
0cca : f0 05 __ BEQ $0cd1 ; (opp::string::+string.s7 + 0)
.l6:
0ccc : c8 __ __ INY
0ccd : b1 0f __ LDA (P2),y ; (s + 0)
0ccf : d0 fb __ BNE $0ccc ; (opp::string::+string.l6 + 0)
.s7:
0cd1 : 98 __ __ TYA
0cd2 : d0 09 __ BNE $0cdd ; (opp::string::+string.s9 + 0)
.s56:
0cd4 : a9 00 __ LDA #$00
0cd6 : a8 __ __ TAY
0cd7 : 91 0d __ STA (P0),y ; (this + 0)
0cd9 : c8 __ __ INY
0cda : 91 0d __ STA (P0),y ; (this + 0)
0cdc : 60 __ __ RTS
.s9:
0cdd : 85 43 __ STA T1 + 0 
0cdf : 18 __ __ CLC
0ce0 : 69 02 __ ADC #$02
0ce2 : 85 1b __ STA ACCU + 0 
0ce4 : a9 00 __ LDA #$00
0ce6 : 2a __ __ ROL
0ce7 : 85 1c __ STA ACCU + 1 
0ce9 : 20 b2 14 JSR $14b2 ; (malloc + 0)
0cec : a5 43 __ LDA T1 + 0 
0cee : a0 00 __ LDY #$00
0cf0 : 91 1b __ STA (ACCU + 0),y 
0cf2 : a5 1b __ LDA ACCU + 0 
0cf4 : 91 0d __ STA (P0),y ; (this + 0)
0cf6 : a5 1c __ LDA ACCU + 1 
0cf8 : c8 __ __ INY
0cf9 : 91 0d __ STA (P0),y ; (this + 0)
0cfb : 18 __ __ CLC
0cfc : a5 43 __ LDA T1 + 0 
0cfe : 69 01 __ ADC #$01
0d00 : f0 12 __ BEQ $0d14 ; (opp::string::+string.s1001 + 0)
.s17:
0d02 : 85 1d __ STA ACCU + 2 
0d04 : e6 1b __ INC ACCU + 0 
0d06 : d0 02 __ BNE $0d0a ; (opp::string::+string.s17 + 8)
0d08 : e6 1c __ INC ACCU + 1 
0d0a : 88 __ __ DEY
.l1004:
0d0b : b1 0f __ LDA (P2),y ; (s + 0)
0d0d : 91 1b __ STA (ACCU + 0),y 
0d0f : c8 __ __ INY
0d10 : c4 1d __ CPY ACCU + 2 
0d12 : 90 f7 __ BCC $0d0b ; (opp::string::+string.l1004 + 0)
.s1001:
0d14 : 60 __ __ RTS
--------------------------------------------------------------------
0d15 : __ __ __ BYT 47 6f 74 20 6f 66 66 20 73 63 72 65 65 6e 21 3f : Got off screen!?
0d25 : __ __ __ BYT 21 00                                           : !.
--------------------------------------------------------------------
opp::string::+string: ; opp::string::+string(const struct opp::string*,const struct opp::string&)->void
.s0:
0d27 : a0 00 __ LDY #$00
0d29 : b1 0f __ LDA (P2),y ; (s + 0)
0d2b : 85 45 __ STA T2 + 0 
0d2d : c8 __ __ INY
0d2e : b1 0f __ LDA (P2),y ; (s + 0)
0d30 : 85 46 __ STA T2 + 1 
0d32 : 05 45 __ ORA T2 + 0 
0d34 : d0 08 __ BNE $0d3e ; (opp::string::+string.s1 + 0)
.s2:
0d36 : a8 __ __ TAY
0d37 : 91 0d __ STA (P0),y ; (this + 0)
0d39 : a0 01 __ LDY #$01
0d3b : 91 0d __ STA (P0),y ; (this + 0)
0d3d : 60 __ __ RTS
.s1:
0d3e : 88 __ __ DEY
0d3f : b1 45 __ LDA (T2 + 0),y 
0d41 : 18 __ __ CLC
0d42 : 69 02 __ ADC #$02
0d44 : 85 45 __ STA T2 + 0 
0d46 : 85 1b __ STA ACCU + 0 
0d48 : 98 __ __ TYA
0d49 : 2a __ __ ROL
0d4a : 85 1c __ STA ACCU + 1 
0d4c : 20 b2 14 JSR $14b2 ; (malloc + 0)
0d4f : a5 1b __ LDA ACCU + 0 
0d51 : a0 00 __ LDY #$00
0d53 : 91 0d __ STA (P0),y ; (this + 0)
0d55 : a5 1c __ LDA ACCU + 1 
0d57 : c8 __ __ INY
0d58 : 91 0d __ STA (P0),y ; (this + 0)
0d5a : a5 45 __ LDA T2 + 0 
0d5c : f0 14 __ BEQ $0d72 ; (opp::string::+string.s1001 + 0)
.s9:
0d5e : 88 __ __ DEY
0d5f : b1 0f __ LDA (P2),y ; (s + 0)
0d61 : 85 43 __ STA T0 + 0 
0d63 : c8 __ __ INY
0d64 : b1 0f __ LDA (P2),y ; (s + 0)
0d66 : 85 44 __ STA T0 + 1 
0d68 : 88 __ __ DEY
.l1004:
0d69 : b1 43 __ LDA (T0 + 0),y 
0d6b : 91 1b __ STA (ACCU + 0),y 
0d6d : c8 __ __ INY
0d6e : c4 45 __ CPY T2 + 0 
0d70 : 90 f7 __ BCC $0d69 ; (opp::string::+string.l1004 + 0)
.s1001:
0d72 : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::operator=: ; ScoreType::operator=(const struct ScoreType*,const struct ScoreType&)->struct ScoreType&
.s0:
0d73 : a0 00 __ LDY #$00
0d75 : b1 13 __ LDA (P6),y ; (_ + 0)
0d77 : 91 11 __ STA (P4),y ; (this + 0)
0d79 : c8 __ __ INY
0d7a : b1 13 __ LDA (P6),y ; (_ + 0)
0d7c : 91 11 __ STA (P4),y ; (this + 0)
0d7e : c8 __ __ INY
0d7f : b1 13 __ LDA (P6),y ; (_ + 0)
0d81 : 91 11 __ STA (P4),y ; (this + 0)
0d83 : c8 __ __ INY
0d84 : b1 13 __ LDA (P6),y ; (_ + 0)
0d86 : 91 11 __ STA (P4),y ; (this + 0)
0d88 : 18 __ __ CLC
0d89 : a5 11 __ LDA P4 ; (this + 0)
0d8b : 69 04 __ ADC #$04
0d8d : 85 0d __ STA P0 
0d8f : a5 12 __ LDA P5 ; (this + 1)
0d91 : 69 00 __ ADC #$00
0d93 : 85 0e __ STA P1 
0d95 : 18 __ __ CLC
0d96 : a5 13 __ LDA P6 ; (_ + 0)
0d98 : 69 04 __ ADC #$04
0d9a : 85 0f __ STA P2 
0d9c : a5 14 __ LDA P7 ; (_ + 1)
0d9e : 69 00 __ ADC #$00
0da0 : 85 10 __ STA P3 
0da2 : 20 41 0c JSR $0c41 ; (opp::string::operator=.s0 + 0)
0da5 : a5 11 __ LDA P4 ; (this + 0)
0da7 : 85 1b __ STA ACCU + 0 
0da9 : a5 12 __ LDA P5 ; (this + 1)
0dab : 85 1c __ STA ACCU + 1 
.s1001:
0dad : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::+BearSprite: ; BearSprite::+BearSprite(const struct BearSprite*)->void
.s0:
0dae : a9 00 __ LDA #$00
0db0 : a0 08 __ LDY #$08
0db2 : 91 0d __ STA (P0),y ; (this + 0)
0db4 : c8 __ __ INY
0db5 : 91 0d __ STA (P0),y ; (this + 0)
0db7 : c8 __ __ INY
0db8 : 91 0d __ STA (P0),y ; (this + 0)
0dba : c8 __ __ INY
0dbb : 91 0d __ STA (P0),y ; (this + 0)
0dbd : a9 0b __ LDA #$0b
0dbf : a0 00 __ LDY #$00
0dc1 : 91 0d __ STA (P0),y ; (this + 0)
0dc3 : a9 16 __ LDA #$16
0dc5 : c8 __ __ INY
0dc6 : 91 0d __ STA (P0),y ; (this + 0)
0dc8 : a9 80 __ LDA #$80
0dca : c8 __ __ INY
0dcb : 91 0d __ STA (P0),y ; (this + 0)
0dcd : a9 03 __ LDA #$03
0dcf : a8 __ __ TAY
0dd0 : 91 0d __ STA (P0),y ; (this + 0)
0dd2 : a9 c0 __ LDA #$c0
0dd4 : c8 __ __ INY
0dd5 : 91 0d __ STA (P0),y ; (this + 0)
0dd7 : a9 03 __ LDA #$03
0dd9 : c8 __ __ INY
0dda : 91 0d __ STA (P0),y ; (this + 0)
0ddc : a9 00 __ LDA #$00
0dde : c8 __ __ INY
0ddf : 91 0d __ STA (P0),y ; (this + 0)
0de1 : a9 04 __ LDA #$04
0de3 : c8 __ __ INY
0de4 : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0de6 : 60 __ __ RTS
--------------------------------------------------------------------
cwin_init: ; cwin_init(struct CharWin*,u8*,u8,u8,u8,u8)->void
.s0:
0de7 : a9 00 __ LDA #$00
0de9 : a0 04 __ LDY #$04
0deb : 91 0d __ STA (P0),y ; (win + 0)
0ded : c8 __ __ INY
0dee : 91 0d __ STA (P0),y ; (win + 0)
0df0 : a5 11 __ LDA P4 ; (sx + 0)
0df2 : a0 00 __ LDY #$00
0df4 : 91 0d __ STA (P0),y ; (win + 0)
0df6 : a5 12 __ LDA P5 ; (sy + 0)
0df8 : c8 __ __ INY
0df9 : 91 0d __ STA (P0),y ; (win + 0)
0dfb : a5 13 __ LDA P6 ; (wx + 0)
0dfd : c8 __ __ INY
0dfe : 91 0d __ STA (P0),y ; (win + 0)
0e00 : a5 14 __ LDA P7 ; (wy + 0)
0e02 : c8 __ __ INY
0e03 : 91 0d __ STA (P0),y ; (win + 0)
0e05 : a5 12 __ LDA P5 ; (sy + 0)
0e07 : 0a __ __ ASL
0e08 : a8 __ __ TAY
0e09 : b9 8b 16 LDA $168b,y ; (mul40 + 0)
0e0c : 85 12 __ STA P5 ; (sy + 0)
0e0e : 18 __ __ CLC
0e0f : 65 11 __ ADC P4 ; (sx + 0)
0e11 : aa __ __ TAX
0e12 : b9 8c 16 LDA $168c,y ; (mul40 + 1)
0e15 : 85 1c __ STA ACCU + 1 
0e17 : 69 d8 __ ADC #$d8
0e19 : a0 09 __ LDY #$09
0e1b : 91 0d __ STA (P0),y ; (win + 0)
0e1d : 8a __ __ TXA
0e1e : 88 __ __ DEY
0e1f : 91 0d __ STA (P0),y ; (win + 0)
0e21 : 18 __ __ CLC
0e22 : a5 0f __ LDA P2 ; (screen + 0)
0e24 : 65 12 __ ADC P5 ; (sy + 0)
0e26 : aa __ __ TAX
0e27 : a5 10 __ LDA P3 ; (screen + 1)
0e29 : 65 1c __ ADC ACCU + 1 
0e2b : 85 1c __ STA ACCU + 1 
0e2d : 8a __ __ TXA
0e2e : 18 __ __ CLC
0e2f : 65 11 __ ADC P4 ; (sx + 0)
0e31 : a0 06 __ LDY #$06
0e33 : 91 0d __ STA (P0),y ; (win + 0)
0e35 : a5 1c __ LDA ACCU + 1 
0e37 : 69 00 __ ADC #$00
0e39 : c8 __ __ INY
0e3a : 91 0d __ STA (P0),y ; (win + 0)
.s1001:
0e3c : 60 __ __ RTS
--------------------------------------------------------------------
clrscr: ; clrscr()->void
.s0:
0e3d : 20 81 ff JSR $ff81 
.s1001:
0e40 : 60 __ __ RTS
--------------------------------------------------------------------
iocharmap: ; iocharmap(enum IOCharMap)->void
.s0:
0e41 : a5 0e __ LDA P1 ; (chmap + 0)
0e43 : 8d bd 16 STA $16bd ; (giocharmap + 0)
0e46 : c9 02 __ CMP #$02
0e48 : d0 04 __ BNE $0e4e ; (iocharmap.s2 + 0)
.s1:
0e4a : a9 8e __ LDA #$8e
0e4c : d0 07 __ BNE $0e55 ; (iocharmap.s1006 + 0)
.s2:
0e4e : c9 03 __ CMP #$03
0e50 : f0 01 __ BEQ $0e53 ; (iocharmap.s4 + 0)
.s1001:
0e52 : 60 __ __ RTS
.s4:
0e53 : a9 0e __ LDA #$0e
.s1006:
0e55 : 4c 58 0e JMP $0e58 ; (putch.s1000 + 0)
--------------------------------------------------------------------
putch: ; putch(u8)->void
.s1000:
0e58 : 85 0d __ STA P0 
.s0:
0e5a : a5 0d __ LDA P0 
0e5c : 20 d2 ff JSR $ffd2 
.s1001:
0e5f : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::getGameState: ; BearGame::getGameState(const struct BearGame*)->enum GameState
.s0:
0e60 : a0 00 __ LDY #$00
.s1001:
0e62 : b1 0d __ LDA (P0),y ; (this + 0)
0e64 : 60 __ __ RTS
--------------------------------------------------------------------
gotoxy: ; gotoxy(u8,u8)->void
.s0:
0e65 : a6 0e __ LDX P1 
0e67 : a4 0d __ LDY P0 
0e69 : 18 __ __ CLC
0e6a : 20 f0 ff JSR $fff0 
.s1001:
0e6d : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::operator<<: ; opp::ostream::operator<<(const struct opp::ostream*,const u8*)->struct opp::ostream&
.s0:
0e6e : a9 00 __ LDA #$00
0e70 : 85 43 __ STA T0 + 0 
0e72 : f0 11 __ BEQ $0e85 ; (opp::ostream::operator<<.l1 + 0)
.s2:
0e74 : a5 11 __ LDA P4 ; (this + 0)
0e76 : 85 0e __ STA P1 
0e78 : a5 12 __ LDA P5 ; (this + 1)
0e7a : 85 0f __ STA P2 
0e7c : b1 13 __ LDA (P6),y ; (p + 0)
0e7e : 85 10 __ STA P3 
0e80 : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
0e83 : e6 43 __ INC T0 + 0 
.l1:
0e85 : a4 43 __ LDY T0 + 0 
0e87 : b1 13 __ LDA (P6),y ; (p + 0)
0e89 : d0 e9 __ BNE $0e74 ; (opp::ostream::operator<<.s2 + 0)
.s3:
0e8b : a5 11 __ LDA P4 ; (this + 0)
0e8d : 85 1b __ STA ACCU + 0 
0e8f : a5 12 __ LDA P5 ; (this + 1)
0e91 : 85 1c __ STA ACCU + 1 
.s1001:
0e93 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::bput$vcall: ; opp::ostream::bput$vcall(const struct opp::ostream*,u8)->void
.s0:
0e94 : a0 00 __ LDY #$00
0e96 : b1 0e __ LDA (P1),y ; (this + 0)
0e98 : aa __ __ TAX
0e99 : bd a5 0e LDA $0ea5,x ; (opp::ostream::bput$vcall.s0 + 17)
0e9c : 85 1b __ STA ACCU + 0 
0e9e : bd a7 0e LDA $0ea7,x ; (opp::ostream::bput$vtable + 1)
0ea1 : 85 1c __ STA ACCU + 1 
0ea3 : 6c 1b 00 JMP ($001b)
--------------------------------------------------------------------
opp::ostream::bput$vtable:
0ea6 : __ __ __ BYT aa ab 0e 0e                                     : ....
--------------------------------------------------------------------
opp::ostream::bput: ; opp::ostream::bput(const struct opp::ostream*,u8)->void
.s1001:
0eaa : 60 __ __ RTS
--------------------------------------------------------------------
opp::costream::bput: ; opp::costream::bput(const struct opp::costream*,u8)->void
.s0:
0eab : a5 10 __ LDA P3 ; (ch + 0)
0ead : 4c b0 0e JMP $0eb0 ; (putchar.s1000 + 0)
--------------------------------------------------------------------
putchar: ; putchar(u8)->void
.s1000:
0eb0 : 85 0d __ STA P0 
.s0:
0eb2 : a5 0d __ LDA P0 
0eb4 : 20 b8 0e JSR $0eb8 ; (putpch + 0)
.s1001:
0eb7 : 60 __ __ RTS
--------------------------------------------------------------------
putpch: ; putpch
0eb8 : ae bd 16 LDX $16bd ; (giocharmap + 0)
0ebb : e0 01 __ CPX #$01
0ebd : 90 26 __ BCC $0ee5 ; (putpch + 45)
0ebf : c9 0a __ CMP #$0a
0ec1 : d0 02 __ BNE $0ec5 ; (putpch + 13)
0ec3 : a9 0d __ LDA #$0d
0ec5 : c9 09 __ CMP #$09
0ec7 : f0 1f __ BEQ $0ee8 ; (putpch + 48)
0ec9 : e0 02 __ CPX #$02
0ecb : 90 18 __ BCC $0ee5 ; (putpch + 45)
0ecd : c9 41 __ CMP #$41
0ecf : 90 14 __ BCC $0ee5 ; (putpch + 45)
0ed1 : c9 7b __ CMP #$7b
0ed3 : b0 10 __ BCS $0ee5 ; (putpch + 45)
0ed5 : c9 61 __ CMP #$61
0ed7 : b0 04 __ BCS $0edd ; (putpch + 37)
0ed9 : c9 5b __ CMP #$5b
0edb : b0 08 __ BCS $0ee5 ; (putpch + 45)
0edd : 49 20 __ EOR #$20
0edf : e0 03 __ CPX #$03
0ee1 : f0 02 __ BEQ $0ee5 ; (putpch + 45)
0ee3 : 29 df __ AND #$df
0ee5 : 4c d2 ff JMP $ffd2 
0ee8 : 38 __ __ SEC
0ee9 : 20 f0 ff JSR $fff0 
0eec : 98 __ __ TYA
0eed : 29 03 __ AND #$03
0eef : 49 03 __ EOR #$03
0ef1 : aa __ __ TAX
0ef2 : a9 20 __ LDA #$20
0ef4 : 20 d2 ff JSR $ffd2 
0ef7 : ca __ __ DEX
0ef8 : 10 fa __ BPL $0ef4 ; (putpch + 60)
0efa : 60 __ __ RTS
--------------------------------------------------------------------
opp::ios::+ios: ; opp::ios::+ios(const struct opp::ios*)->void
.s0:
0efb : a9 00 __ LDA #$00
0efd : a8 __ __ TAY
0efe : 91 0d __ STA (P0),y ; (this + 0)
0f00 : c8 __ __ INY
0f01 : 91 0d __ STA (P0),y ; (this + 0)
0f03 : c8 __ __ INY
0f04 : 91 0d __ STA (P0),y ; (this + 0)
0f06 : c8 __ __ INY
0f07 : 91 0d __ STA (P0),y ; (this + 0)
0f09 : c8 __ __ INY
0f0a : 91 0d __ STA (P0),y ; (this + 0)
0f0c : a9 06 __ LDA #$06
0f0e : c8 __ __ INY
0f0f : 91 0d __ STA (P0),y ; (this + 0)
0f11 : a9 20 __ LDA #$20
0f13 : c8 __ __ INY
0f14 : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0f16 : 60 __ __ RTS
--------------------------------------------------------------------
0f17 : __ __ __ BYT 53 45 54 55 50 00                               : SETUP.
--------------------------------------------------------------------
BearGame::setup: ; BearGame::setup(const struct BearGame*)->void
.s0:
0f1d : ad fb 9f LDA $9ffb ; (sstack + 2)
0f20 : 85 43 __ STA T0 + 0 
0f22 : ad fc 9f LDA $9ffc ; (sstack + 3)
0f25 : 85 44 __ STA T0 + 1 
0f27 : a0 02 __ LDY #$02
0f29 : b1 43 __ LDA (T0 + 0),y 
0f2b : 8d f9 9f STA $9ff9 ; (sstack + 0)
0f2e : c8 __ __ INY
0f2f : b1 43 __ LDA (T0 + 0),y 
0f31 : 8d fa 9f STA $9ffa ; (sstack + 1)
0f34 : 4c 37 0f JMP $0f37 ; (BearSprite::drawSprite.s0 + 0)
--------------------------------------------------------------------
BearSprite::drawSprite: ; BearSprite::drawSprite(const struct BearSprite*)->void
.s0:
0f37 : a9 00 __ LDA #$00
0f39 : 85 0d __ STA P0 
0f3b : 85 10 __ STA P3 
0f3d : 85 12 __ STA P5 
0f3f : 85 14 __ STA P7 
0f41 : 85 15 __ STA P8 
0f43 : 85 16 __ STA P9 
0f45 : 85 17 __ STA P10 
0f47 : a9 a0 __ LDA #$a0
0f49 : 85 0f __ STA P2 
0f4b : a9 64 __ LDA #$64
0f4d : 85 11 __ STA P4 
0f4f : a9 0f __ LDA #$0f
0f51 : 85 13 __ STA P6 
0f53 : ad f9 9f LDA $9ff9 ; (sstack + 0)
0f56 : 85 43 __ STA T0 + 0 
0f58 : ad fa 9f LDA $9ffa ; (sstack + 1)
0f5b : 85 44 __ STA T0 + 1 
0f5d : a0 00 __ LDY #$00
0f5f : b1 43 __ LDA (T0 + 0),y 
0f61 : 85 45 __ STA T1 + 0 
0f63 : c8 __ __ INY
0f64 : 84 0e __ STY P1 
0f66 : b1 43 __ LDA (T0 + 0),y 
0f68 : 85 46 __ STA T1 + 1 
0f6a : c8 __ __ INY
0f6b : b1 43 __ LDA (T0 + 0),y 
0f6d : 85 47 __ STA T2 + 0 
0f6f : c8 __ __ INY
0f70 : b1 43 __ LDA (T0 + 0),y 
0f72 : 85 48 __ STA T2 + 1 
0f74 : a0 7f __ LDY #$7f
.l1002:
0f76 : b1 45 __ LDA (T1 + 0),y 
0f78 : 91 47 __ STA (T2 + 0),y 
0f7a : 88 __ __ DEY
0f7b : d0 f9 __ BNE $0f76 ; (BearSprite::drawSprite.l1002 + 0)
.s1003:
0f7d : b1 45 __ LDA (T1 + 0),y 
0f7f : 91 47 __ STA (T2 + 0),y 
0f81 : a9 a0 __ LDA #$a0
0f83 : a0 08 __ LDY #$08
0f85 : 91 43 __ STA (T0 + 0),y 
0f87 : a9 00 __ LDA #$00
0f89 : c8 __ __ INY
0f8a : 91 43 __ STA (T0 + 0),y 
0f8c : a9 64 __ LDA #$64
0f8e : c8 __ __ INY
0f8f : 91 43 __ STA (T0 + 0),y 
0f91 : a9 00 __ LDA #$00
0f93 : c8 __ __ INY
0f94 : 91 43 __ STA (T0 + 0),y 
0f96 : a0 06 __ LDY #$06
0f98 : b1 43 __ LDA (T0 + 0),y 
0f9a : 18 __ __ CLC
0f9b : 69 f8 __ ADC #$f8
0f9d : 8d fd 16 STA $16fd ; (vspriteScreen + 0)
0fa0 : c8 __ __ INY
0fa1 : b1 43 __ LDA (T0 + 0),y 
0fa3 : 69 03 __ ADC #$03
0fa5 : 8d fe 16 STA $16fe ; (vspriteScreen + 1)
0fa8 : 20 ca 0f JSR $0fca ; (spr_set.s0 + 0)
0fab : e6 0d __ INC P0 
0fad : e6 15 __ INC P8 
0faf : a9 00 __ LDA #$00
0fb1 : 85 10 __ STA P3 
0fb3 : c6 13 __ DEC P6 
0fb5 : a9 08 __ LDA #$08
0fb7 : 85 14 __ STA P7 
0fb9 : 20 ca 0f JSR $0fca ; (spr_set.s0 + 0)
0fbc : a9 09 __ LDA #$09
0fbe : 8d 25 d0 STA $d025 
0fc1 : a9 01 __ LDA #$01
0fc3 : 8d 26 d0 STA $d026 
0fc6 : ee 20 d0 INC $d020 
.s1001:
0fc9 : 60 __ __ RTS
--------------------------------------------------------------------
spr_set: ; spr_set(u8,bool,i16,i16,u8,u8,bool,bool,bool)->void
.s0:
0fca : a6 0d __ LDX P0 ; (sp + 0)
0fcc : bd cd 16 LDA $16cd,x ; (bitshift + 8)
0fcf : 85 1b __ STA ACCU + 0 
0fd1 : a5 0e __ LDA P1 ; (show + 0)
0fd3 : d0 0a __ BNE $0fdf ; (spr_set.s3 + 0)
.s4:
0fd5 : a9 ff __ LDA #$ff
0fd7 : 45 1b __ EOR ACCU + 0 
0fd9 : 2d 15 d0 AND $d015 
0fdc : 4c e4 0f JMP $0fe4 ; (spr_set.s19 + 0)
.s3:
0fdf : a5 1b __ LDA ACCU + 0 
0fe1 : 0d 15 d0 ORA $d015 
.s19:
0fe4 : 8d 15 d0 STA $d015 
0fe7 : a5 15 __ LDA P8 ; (multi + 0)
0fe9 : d0 0a __ BNE $0ff5 ; (spr_set.s6 + 0)
.s7:
0feb : a9 ff __ LDA #$ff
0fed : 45 1b __ EOR ACCU + 0 
0fef : 2d 1c d0 AND $d01c 
0ff2 : 4c fa 0f JMP $0ffa ; (spr_set.s20 + 0)
.s6:
0ff5 : ad 1c d0 LDA $d01c 
0ff8 : 05 1b __ ORA ACCU + 0 
.s20:
0ffa : 8d 1c d0 STA $d01c 
0ffd : a5 16 __ LDA P9 ; (xexpand + 0)
0fff : d0 0a __ BNE $100b ; (spr_set.s9 + 0)
.s10:
1001 : a9 ff __ LDA #$ff
1003 : 45 1b __ EOR ACCU + 0 
1005 : 2d 1d d0 AND $d01d 
1008 : 4c 10 10 JMP $1010 ; (spr_set.s21 + 0)
.s9:
100b : ad 1d d0 LDA $d01d 
100e : 05 1b __ ORA ACCU + 0 
.s21:
1010 : 8d 1d d0 STA $d01d 
1013 : a5 17 __ LDA P10 ; (yexpand + 0)
1015 : d0 0a __ BNE $1021 ; (spr_set.s12 + 0)
.s13:
1017 : a9 ff __ LDA #$ff
1019 : 45 1b __ EOR ACCU + 0 
101b : 2d 17 d0 AND $d017 
101e : 4c 26 10 JMP $1026 ; (spr_set.s14 + 0)
.s12:
1021 : ad 17 d0 LDA $d017 
1024 : 05 1b __ ORA ACCU + 0 
.s14:
1026 : 8d 17 d0 STA $d017 
1029 : 8a __ __ TXA
102a : 0a __ __ ASL
102b : a8 __ __ TAY
102c : a5 11 __ LDA P4 ; (ypos + 0)
102e : 99 01 d0 STA $d001,y 
1031 : a5 0f __ LDA P2 ; (xpos + 0)
1033 : 99 00 d0 STA $d000,y 
1036 : 46 10 __ LSR P3 ; (xpos + 1)
1038 : 90 07 __ BCC $1041 ; (spr_set.s16 + 0)
.s15:
103a : a5 1b __ LDA ACCU + 0 
103c : 0d 10 d0 ORA $d010 
103f : b0 07 __ BCS $1048 ; (spr_set.s17 + 0)
.s16:
1041 : a9 ff __ LDA #$ff
1043 : 45 1b __ EOR ACCU + 0 
1045 : 2d 10 d0 AND $d010 
.s17:
1048 : 8d 10 d0 STA $d010 
104b : ad fd 16 LDA $16fd ; (vspriteScreen + 0)
104e : 18 __ __ CLC
104f : 65 0d __ ADC P0 ; (sp + 0)
1051 : 85 1b __ STA ACCU + 0 
1053 : ad fe 16 LDA $16fe ; (vspriteScreen + 1)
1056 : 69 00 __ ADC #$00
1058 : 85 1c __ STA ACCU + 1 
105a : a5 13 __ LDA P6 ; (image + 0)
105c : a0 00 __ LDY #$00
105e : 91 1b __ STA (ACCU + 0),y 
1060 : a5 14 __ LDA P7 ; (color + 0)
1062 : 9d 27 d0 STA $d027,x 
.s1001:
1065 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::operator<<: ; opp::ostream::operator<<(const struct opp::ostream*,i16)->struct opp::ostream&
.s0:
1066 : ad fc 9f LDA $9ffc ; (sstack + 3)
1069 : 85 49 __ STA T0 + 0 
106b : 85 17 __ STA P10 
106d : ad fd 9f LDA $9ffd ; (sstack + 4)
1070 : 85 4a __ STA T0 + 1 
1072 : 85 18 __ STA P11 
1074 : 2c ff 9f BIT $9fff ; (sstack + 6)
1077 : 10 19 __ BPL $1092 ; (opp::ostream::operator<<.s2 + 0)
.s1:
1079 : a9 2d __ LDA #$2d
107b : 8d fb 9f STA $9ffb ; (sstack + 2)
107e : 38 __ __ SEC
107f : a9 00 __ LDA #$00
1081 : ed fe 9f SBC $9ffe ; (sstack + 5)
1084 : 8d f9 9f STA $9ff9 ; (sstack + 0)
1087 : a9 00 __ LDA #$00
1089 : ed ff 9f SBC $9fff ; (sstack + 6)
108c : 8d fa 9f STA $9ffa ; (sstack + 1)
108f : 4c ab 10 JMP $10ab ; (opp::ostream::operator<<.s1001 + 0)
.s2:
1092 : ad fe 9f LDA $9ffe ; (sstack + 5)
1095 : 8d f9 9f STA $9ff9 ; (sstack + 0)
1098 : ad ff 9f LDA $9fff ; (sstack + 6)
109b : 8d fa 9f STA $9ffa ; (sstack + 1)
109e : a0 02 __ LDY #$02
10a0 : b1 49 __ LDA (T0 + 0),y 
10a2 : 29 08 __ AND #$08
10a4 : f0 02 __ BEQ $10a8 ; (opp::ostream::operator<<.s1002 + 0)
.s4:
10a6 : a9 2b __ LDA #$2b
.s1002:
10a8 : 8d fb 9f STA $9ffb ; (sstack + 2)
.s1001:
10ab : 20 b7 10 JSR $10b7 ; (opp::ostream::numput.s0 + 0)
10ae : a5 49 __ LDA T0 + 0 
10b0 : 85 1b __ STA ACCU + 0 
10b2 : a5 4a __ LDA T0 + 1 
10b4 : 85 1c __ STA ACCU + 1 ; (this + 0)
10b6 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::numput: ; opp::ostream::numput(const struct opp::ostream*,u16,u8)->void
.s0:
10b7 : a0 01 __ LDY #$01
10b9 : b1 17 __ LDA (P10),y ; (this + 0)
10bb : 85 43 __ STA T0 + 0 
10bd : c8 __ __ INY
10be : 29 08 __ AND #$08
10c0 : f0 04 __ BEQ $10c6 ; (opp::ostream::numput.s2 + 0)
.s1:
10c2 : a2 10 __ LDX #$10
10c4 : d0 0a __ BNE $10d0 ; (opp::ostream::numput.s3 + 0)
.s2:
10c6 : 06 43 __ ASL T0 + 0 
10c8 : 10 04 __ BPL $10ce ; (opp::ostream::numput.s1004 + 0)
.s1005:
10ca : a2 08 __ LDX #$08
10cc : d0 02 __ BNE $10d0 ; (opp::ostream::numput.s3 + 0)
.s1004:
10ce : a2 0a __ LDX #$0a
.s3:
10d0 : a9 00 __ LDA #$00
10d2 : 85 47 __ STA T3 + 0 
10d4 : ad fa 9f LDA $9ffa ; (sstack + 1)
10d7 : 85 44 __ STA T0 + 1 
10d9 : b1 17 __ LDA (P10),y ; (this + 0)
10db : 29 30 __ AND #$30
10dd : d0 70 __ BNE $114f ; (opp::ostream::numput.s7 + 0)
.s9:
10df : ad f9 9f LDA $9ff9 ; (sstack + 0)
10e2 : a8 __ __ TAY
10e3 : 05 44 __ ORA T0 + 1 
10e5 : f0 36 __ BEQ $111d ; (opp::ostream::numput.s12 + 0)
.s39:
10e7 : a9 57 __ LDA #$57
.s28:
10e9 : 86 46 __ STX T1 + 0 
10eb : 84 1b __ STY ACCU + 0 ; (sign + 0)
10ed : 85 48 __ STA T4 + 0 
.l11:
10ef : a5 44 __ LDA T0 + 1 
10f1 : 85 1c __ STA ACCU + 1 
10f3 : a5 46 __ LDA T1 + 0 
10f5 : 85 03 __ STA WORK + 0 
10f7 : a9 00 __ LDA #$00
10f9 : 85 04 __ STA WORK + 1 
10fb : 20 2d 14 JSR $142d ; (divmod + 0)
10fe : a5 1c __ LDA ACCU + 1 
1100 : 85 44 __ STA T0 + 1 
1102 : a5 05 __ LDA WORK + 2 
1104 : c9 0a __ CMP #$0a
1106 : 90 06 __ BCC $110e ; (opp::ostream::numput.s13 + 0)
.s14:
1108 : 18 __ __ CLC
1109 : 65 48 __ ADC T4 + 0 
110b : 4c 10 11 JMP $1110 ; (opp::ostream::numput.s15 + 0)
.s13:
110e : 69 30 __ ADC #$30
.s15:
1110 : a6 47 __ LDX T3 + 0 
1112 : 9d ef 9f STA $9fef,x ; (buffer + 0)
1115 : e6 47 __ INC T3 + 0 
1117 : a5 1b __ LDA ACCU + 0 ; (sign + 0)
1119 : 05 1c __ ORA ACCU + 1 
111b : d0 d2 __ BNE $10ef ; (opp::ostream::numput.l11 + 0)
.s12:
111d : a5 17 __ LDA P10 ; (this + 0)
111f : 85 11 __ STA P4 
1121 : a5 18 __ LDA P11 ; (this + 1)
1123 : 85 12 __ STA P5 
1125 : a9 ef __ LDA #$ef
1127 : 85 13 __ STA P6 
1129 : a9 9f __ LDA #$9f
112b : 85 14 __ STA P7 
112d : a5 47 __ LDA T3 + 0 
112f : d0 09 __ BNE $113a ; (opp::ostream::numput.s55 + 0)
.s16:
1131 : a9 30 __ LDA #$30
1133 : 8d ef 9f STA $9fef ; (buffer + 0)
1136 : e6 47 __ INC T3 + 0 
1138 : a5 47 __ LDA T3 + 0 
.s55:
113a : 85 15 __ STA P8 
113c : ad fb 9f LDA $9ffb ; (sstack + 2)
113f : f0 07 __ BEQ $1148 ; (opp::ostream::numput.s21 + 0)
.s19:
1141 : a6 15 __ LDX P8 
1143 : 9d ef 9f STA $9fef,x ; (buffer + 0)
1146 : e6 47 __ INC T3 + 0 
.s21:
1148 : a5 47 __ LDA T3 + 0 
114a : 85 16 __ STA P9 
114c : 4c 5b 11 JMP $115b ; (opp::ostream::putnum.s0 + 0)
.s7:
114f : ad f9 9f LDA $9ff9 ; (sstack + 0)
1152 : a8 __ __ TAY
1153 : 05 44 __ ORA T0 + 1 
1155 : f0 c6 __ BEQ $111d ; (opp::ostream::numput.s12 + 0)
.s38:
1157 : a9 37 __ LDA #$37
1159 : d0 8e __ BNE $10e9 ; (opp::ostream::numput.s28 + 0)
--------------------------------------------------------------------
opp::ostream::putnum: ; opp::ostream::putnum(const struct opp::ostream*,const u8*,u8,u8)->void
.s0:
115b : a5 16 __ LDA P9 ; (size + 0)
115d : a0 04 __ LDY #$04
115f : d1 11 __ CMP (P4),y ; (this + 0)
1161 : 90 04 __ BCC $1167 ; (opp::ostream::putnum.s1 + 0)
.s78:
1163 : a9 00 __ LDA #$00
1165 : b0 05 __ BCS $116c ; (opp::ostream::putnum.s3 + 0)
.s1:
1167 : b1 11 __ LDA (P4),y ; (this + 0)
1169 : 38 __ __ SEC
116a : e5 16 __ SBC P9 ; (size + 0)
.s3:
116c : 85 43 __ STA T4 + 0 
116e : a0 01 __ LDY #$01
1170 : b1 11 __ LDA (P4),y ; (this + 0)
1172 : 29 b0 __ AND #$b0
1174 : 85 44 __ STA T5 + 0 
1176 : c9 10 __ CMP #$10
1178 : d0 1f __ BNE $1199 ; (opp::ostream::putnum.s6 + 0)
.s7:
117a : a5 15 __ LDA P8 ; (prefix + 0)
117c : c5 16 __ CMP P9 ; (size + 0)
117e : b0 19 __ BCS $1199 ; (opp::ostream::putnum.s6 + 0)
.l8:
1180 : a5 11 __ LDA P4 ; (this + 0)
1182 : 85 0e __ STA P1 
1184 : a5 12 __ LDA P5 ; (this + 1)
1186 : 85 0f __ STA P2 
1188 : c6 16 __ DEC P9 ; (size + 0)
118a : a4 16 __ LDY P9 ; (size + 0)
118c : b1 13 __ LDA (P6),y ; (buffer + 0)
118e : 85 10 __ STA P3 
1190 : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
1193 : a5 15 __ LDA P8 ; (prefix + 0)
1195 : c5 16 __ CMP P9 ; (size + 0)
1197 : 90 e7 __ BCC $1180 ; (opp::ostream::putnum.l8 + 0)
.s6:
1199 : a5 44 __ LDA T5 + 0 
119b : c9 20 __ CMP #$20
119d : f0 19 __ BEQ $11b8 ; (opp::ostream::putnum.s16 + 0)
.s13:
119f : a5 43 __ LDA T4 + 0 
11a1 : f0 15 __ BEQ $11b8 ; (opp::ostream::putnum.s16 + 0)
.l14:
11a3 : a5 11 __ LDA P4 ; (this + 0)
11a5 : 85 0e __ STA P1 
11a7 : a5 12 __ LDA P5 ; (this + 1)
11a9 : 85 0f __ STA P2 
11ab : a0 06 __ LDY #$06
11ad : b1 11 __ LDA (P4),y ; (this + 0)
11af : 85 10 __ STA P3 
11b1 : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
11b4 : c6 43 __ DEC T4 + 0 
11b6 : d0 eb __ BNE $11a3 ; (opp::ostream::putnum.l14 + 0)
.s16:
11b8 : a5 16 __ LDA P9 ; (size + 0)
11ba : f0 1f __ BEQ $11db ; (opp::ostream::putnum.s19 + 0)
.s23:
11bc : a5 13 __ LDA P6 ; (buffer + 0)
11be : 85 44 __ STA T5 + 0 
11c0 : a5 14 __ LDA P7 ; (buffer + 1)
11c2 : 85 45 __ STA T5 + 1 
.l17:
11c4 : a5 11 __ LDA P4 ; (this + 0)
11c6 : 85 0e __ STA P1 
11c8 : a5 12 __ LDA P5 ; (this + 1)
11ca : 85 0f __ STA P2 
11cc : c6 16 __ DEC P9 ; (size + 0)
11ce : a4 16 __ LDY P9 ; (size + 0)
11d0 : b1 44 __ LDA (T5 + 0),y 
11d2 : 85 10 __ STA P3 
11d4 : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
11d7 : a5 16 __ LDA P9 ; (size + 0)
11d9 : d0 e9 __ BNE $11c4 ; (opp::ostream::putnum.l17 + 0)
.s19:
11db : a5 43 __ LDA T4 + 0 
11dd : f0 17 __ BEQ $11f6 ; (opp::ostream::putnum.s21 + 0)
.l20:
11df : a5 11 __ LDA P4 ; (this + 0)
11e1 : 85 0e __ STA P1 
11e3 : a5 12 __ LDA P5 ; (this + 1)
11e5 : 85 0f __ STA P2 
11e7 : a0 06 __ LDY #$06
11e9 : b1 11 __ LDA (P4),y ; (this + 0)
11eb : 85 10 __ STA P3 
11ed : 20 94 0e JSR $0e94 ; (opp::ostream::bput$vcall.s0 + 0)
11f0 : c6 43 __ DEC T4 + 0 
11f2 : a5 43 __ LDA T4 + 0 
11f4 : d0 e9 __ BNE $11df ; (opp::ostream::putnum.l20 + 0)
.s21:
11f6 : a0 01 __ LDY #$01
11f8 : 91 11 __ STA (P4),y ; (this + 0)
11fa : c8 __ __ INY
11fb : 91 11 __ STA (P4),y ; (this + 0)
11fd : a0 04 __ LDY #$04
11ff : 91 11 __ STA (P4),y ; (this + 0)
1201 : a9 20 __ LDA #$20
1203 : a0 06 __ LDY #$06
1205 : 91 11 __ STA (P4),y ; (this + 0)
.s1001:
1207 : 60 __ __ RTS
--------------------------------------------------------------------
1208 : __ __ __ BYT 4c 65 76 65 6c 3a 20 00                         : Level: .
--------------------------------------------------------------------
BearGame::getLevel: ; BearGame::getLevel(const struct BearGame*)->i16
.s0:
1210 : a0 04 __ LDY #$04
1212 : b1 0d __ LDA (P0),y ; (this + 0)
1214 : 85 1b __ STA ACCU + 0 
1216 : c8 __ __ INY
1217 : b1 0d __ LDA (P0),y ; (this + 0)
1219 : 85 1c __ STA ACCU + 1 
.s1001:
121b : 60 __ __ RTS
--------------------------------------------------------------------
121c : __ __ __ BYT 20 53 63 6f 72 65 3a 20 00                      :  Score: .
--------------------------------------------------------------------
Score::getScore: ; Score::getScore(const struct Score*)->i16
.s0:
1225 : a0 02 __ LDY #$02
1227 : b1 0d __ LDA (P0),y ; (this + 0)
1229 : 85 1b __ STA ACCU + 0 
122b : c8 __ __ INY
122c : b1 0d __ LDA (P0),y ; (this + 0)
122e : 85 1c __ STA ACCU + 1 
.s1001:
1230 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::play: ; BearGame::play(const struct BearGame*)->void
.s0:
1231 : a0 01 __ LDY #$01
1233 : b1 13 __ LDA (P6),y ; (this + 0)
1235 : c9 01 __ CMP #$01
1237 : d0 0f __ BNE $1248 ; (BearGame::play.s8 + 0)
.s3:
1239 : a5 13 __ LDA P6 ; (this + 0)
123b : 85 11 __ STA P4 
123d : a5 14 __ LDA P7 ; (this + 1)
123f : 85 12 __ STA P5 
1241 : 20 da 12 JSR $12da ; (BearGame::updateGame.s1000 + 0)
1244 : a9 02 __ LDA #$02
1246 : d0 24 __ BNE $126c ; (BearGame::play.s1001 + 0)
.s8:
1248 : 09 00 __ ORA #$00
124a : d0 0f __ BNE $125b ; (BearGame::play.s9 + 0)
.s2:
124c : a5 13 __ LDA P6 ; (this + 0)
124e : 85 11 __ STA P4 
1250 : a5 14 __ LDA P7 ; (this + 1)
1252 : 85 12 __ STA P5 
1254 : 20 71 12 JSR $1271 ; (BearGame::getUserInput.s0 + 0)
1257 : a9 01 __ LDA #$01
1259 : d0 11 __ BNE $126c ; (BearGame::play.s1001 + 0)
.s9:
125b : c9 02 __ CMP #$02
125d : d0 0b __ BNE $126a ; (BearGame::play.s13 + 0)
.s4:
125f : a5 13 __ LDA P6 ; (this + 0)
1261 : 85 0f __ STA P2 
1263 : a5 14 __ LDA P7 ; (this + 1)
1265 : 85 10 __ STA P3 
1267 : 20 f8 13 JSR $13f8 ; (BearGame::renderGame.s0 + 0)
.s13:
126a : a9 00 __ LDA #$00
.s1001:
126c : a0 01 __ LDY #$01
126e : 91 13 __ STA (P6),y ; (this + 0)
1270 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::getUserInput: ; BearGame::getUserInput(const struct BearGame*)->void
.s0:
1271 : a9 00 __ LDA #$00
1273 : 20 9a 12 JSR $129a ; (joy_poll.s0 + 0)
1276 : ad 02 17 LDA $1702 ; (joyx + 0)
1279 : c9 ff __ CMP #$ff
127b : f0 06 __ BEQ $1283 ; (BearGame::getUserInput.s18 + 0)
.s7:
127d : c9 01 __ CMP #$01
127f : f0 02 __ BEQ $1283 ; (BearGame::getUserInput.s18 + 0)
.s5:
1281 : a9 00 __ LDA #$00
.s18:
1283 : aa __ __ TAX
1284 : ad 00 17 LDA $1700 ; (joyy + 0)
1287 : c9 ff __ CMP #$ff
1289 : f0 06 __ BEQ $1291 ; (BearGame::getUserInput.s9 + 0)
.s15:
128b : c9 01 __ CMP #$01
128d : f0 02 __ BEQ $1291 ; (BearGame::getUserInput.s9 + 0)
.s13:
128f : a9 00 __ LDA #$00
.s9:
1291 : a0 0b __ LDY #$0b
1293 : 91 11 __ STA (P4),y ; (this + 0)
1295 : 8a __ __ TXA
1296 : 88 __ __ DEY
1297 : 91 11 __ STA (P4),y ; (this + 0)
.s1001:
1299 : 60 __ __ RTS
--------------------------------------------------------------------
joy_poll: ; joy_poll(u8)->void
.s0:
129a : aa __ __ TAX
129b : bd 00 dc LDA $dc00,x 
129e : a8 __ __ TAY
129f : 29 10 __ AND #$10
12a1 : f0 04 __ BEQ $12a7 ; (joy_poll.s1005 + 0)
.s1006:
12a3 : a9 00 __ LDA #$00
12a5 : f0 02 __ BEQ $12a9 ; (joy_poll.s1007 + 0)
.s1005:
12a7 : a9 01 __ LDA #$01
.s1007:
12a9 : 9d 04 17 STA $1704,x ; (joyb + 0)
12ac : 98 __ __ TYA
12ad : 4a __ __ LSR
12ae : b0 04 __ BCS $12b4 ; (joy_poll.s2 + 0)
.s1:
12b0 : a9 ff __ LDA #$ff
12b2 : 90 0b __ BCC $12bf ; (joy_poll.s15 + 0)
.s2:
12b4 : 98 __ __ TYA
12b5 : 29 02 __ AND #$02
12b7 : f0 04 __ BEQ $12bd ; (joy_poll.s1008 + 0)
.s1009:
12b9 : a9 00 __ LDA #$00
12bb : b0 02 __ BCS $12bf ; (joy_poll.s15 + 0)
.s1008:
12bd : a9 01 __ LDA #$01
.s15:
12bf : 9d 00 17 STA $1700,x ; (joyy + 0)
12c2 : 98 __ __ TYA
12c3 : 29 04 __ AND #$04
12c5 : d0 04 __ BNE $12cb ; (joy_poll.s8 + 0)
.s7:
12c7 : a9 ff __ LDA #$ff
12c9 : d0 0b __ BNE $12d6 ; (joy_poll.s1001 + 0)
.s8:
12cb : 98 __ __ TYA
12cc : 29 08 __ AND #$08
12ce : f0 04 __ BEQ $12d4 ; (joy_poll.s1011 + 0)
.s1012:
12d0 : a9 00 __ LDA #$00
12d2 : f0 02 __ BEQ $12d6 ; (joy_poll.s1001 + 0)
.s1011:
12d4 : a9 01 __ LDA #$01
.s1001:
12d6 : 9d 02 17 STA $1702,x ; (joyx + 0)
12d9 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::updateGame: ; BearGame::updateGame(const struct BearGame*)->void
.s1000:
12da : 38 __ __ SEC
12db : a5 23 __ LDA SP + 0 
12dd : e9 0a __ SBC #$0a
12df : 85 23 __ STA SP + 0 
12e1 : b0 02 __ BCS $12e5 ; (BearGame::updateGame.s0 + 0)
12e3 : c6 24 __ DEC SP + 1 
.s0:
12e5 : a0 02 __ LDY #$02
12e7 : b1 11 __ LDA (P4),y ; (this + 0)
12e9 : 85 0d __ STA P0 
12eb : c8 __ __ INY
12ec : b1 11 __ LDA (P4),y ; (this + 0)
12ee : 85 0e __ STA P1 
12f0 : 20 81 13 JSR $1381 ; (BearSprite::getX.s0 + 0)
12f3 : 24 1c __ BIT ACCU + 1 
12f5 : 30 27 __ BMI $131e ; (BearGame::updateGame.s1 + 0)
.s6:
12f7 : 20 81 13 JSR $1381 ; (BearSprite::getX.s0 + 0)
12fa : a5 1c __ LDA ACCU + 1 
12fc : 49 80 __ EOR #$80
12fe : c9 81 __ CMP #$81
1300 : d0 04 __ BNE $1306 ; (BearGame::updateGame.s1005 + 0)
.s1004:
1302 : a5 1b __ LDA ACCU + 0 
1304 : c9 41 __ CMP #$41
.s1005:
1306 : b0 16 __ BCS $131e ; (BearGame::updateGame.s1 + 0)
.s5:
1308 : 20 8d 13 JSR $138d ; (BearSprite::getY.s0 + 0)
130b : 24 1c __ BIT ACCU + 1 
130d : 30 0f __ BMI $131e ; (BearGame::updateGame.s1 + 0)
.s4:
130f : 20 8d 13 JSR $138d ; (BearSprite::getY.s0 + 0)
1312 : a5 1c __ LDA ACCU + 1 
1314 : 30 5f __ BMI $1375 ; (BearGame::updateGame.s1001 + 0)
.s1003:
1316 : d0 06 __ BNE $131e ; (BearGame::updateGame.s1 + 0)
.s1002:
1318 : a9 c8 __ LDA #$c8
131a : c5 1b __ CMP ACCU + 0 
131c : b0 57 __ BCS $1375 ; (BearGame::updateGame.s1001 + 0)
.s1:
131e : 18 __ __ CLC
131f : a5 11 __ LDA P4 ; (this + 0)
1321 : 69 06 __ ADC #$06
1323 : 85 0d __ STA P0 
1325 : a0 02 __ LDY #$02
1327 : 91 23 __ STA (SP + 0),y 
1329 : a5 12 __ LDA P5 ; (this + 1)
132b : 69 00 __ ADC #$00
132d : 85 0e __ STA P1 
132f : c8 __ __ INY
1330 : 91 23 __ STA (SP + 0),y 
1332 : 20 ec 13 JSR $13ec ; (Score::getScoreTypes.s0 + 0)
1335 : a0 00 __ LDY #$00
1337 : b1 1b __ LDA (ACCU + 0),y 
1339 : a0 04 __ LDY #$04
133b : 91 23 __ STA (SP + 0),y 
133d : a0 01 __ LDY #$01
133f : b1 1b __ LDA (ACCU + 0),y 
1341 : a0 05 __ LDY #$05
1343 : 91 23 __ STA (SP + 0),y 
1345 : a0 02 __ LDY #$02
1347 : b1 1b __ LDA (ACCU + 0),y 
1349 : a0 06 __ LDY #$06
134b : 91 23 __ STA (SP + 0),y 
134d : a0 03 __ LDY #$03
134f : b1 1b __ LDA (ACCU + 0),y 
1351 : a0 07 __ LDY #$07
1353 : 91 23 __ STA (SP + 0),y 
1355 : 18 __ __ CLC
1356 : a5 23 __ LDA SP + 0 
1358 : 69 08 __ ADC #$08
135a : 85 0d __ STA P0 
135c : a5 24 __ LDA SP + 1 
135e : 69 00 __ ADC #$00
1360 : 85 0e __ STA P1 
1362 : 18 __ __ CLC
1363 : a5 1b __ LDA ACCU + 0 
1365 : 69 04 __ ADC #$04
1367 : 85 0f __ STA P2 
1369 : a5 1c __ LDA ACCU + 1 
136b : 69 00 __ ADC #$00
136d : 85 10 __ STA P3 
136f : 20 27 0d JSR $0d27 ; (opp::string::+string.s0 + 0)
1372 : 20 99 13 JSR $1399 ; (Score::updateScore.s0 + 0)
.s1001:
1375 : 18 __ __ CLC
1376 : a5 23 __ LDA SP + 0 
1378 : 69 0a __ ADC #$0a
137a : 85 23 __ STA SP + 0 
137c : 90 02 __ BCC $1380 ; (BearGame::updateGame.s1001 + 11)
137e : e6 24 __ INC SP + 1 
1380 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::getX: ; BearSprite::getX(const struct BearSprite*)->i16
.s0:
1381 : a0 08 __ LDY #$08
1383 : b1 0d __ LDA (P0),y ; (this + 0)
1385 : 85 1b __ STA ACCU + 0 
1387 : c8 __ __ INY
1388 : b1 0d __ LDA (P0),y ; (this + 0)
138a : 85 1c __ STA ACCU + 1 
.s1001:
138c : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::getY: ; BearSprite::getY(const struct BearSprite*)->i16
.s0:
138d : a0 0a __ LDY #$0a
138f : b1 0d __ LDA (P0),y ; (this + 0)
1391 : 85 1b __ STA ACCU + 0 
1393 : c8 __ __ INY
1394 : b1 0d __ LDA (P0),y ; (this + 0)
1396 : 85 1c __ STA ACCU + 1 
.s1001:
1398 : 60 __ __ RTS
--------------------------------------------------------------------
Score::updateScore: ; Score::updateScore(const struct Score*,struct ScoreType)->void
.s0:
1399 : 18 __ __ CLC
139a : a5 23 __ LDA SP + 0 
139c : 69 04 __ ADC #$04
139e : 85 0d __ STA P0 ; (this + 0)
13a0 : a5 24 __ LDA SP + 1 
13a2 : 69 00 __ ADC #$00
13a4 : 85 0e __ STA P1 ; (this + 1)
13a6 : 20 60 0e JSR $0e60 ; (BearGame::getGameState.s0 + 0)
13a9 : 09 00 __ ORA #$00
13ab : f0 0d __ BEQ $13ba ; (Score::updateScore.s3 + 0)
.s1:
13ad : 20 e7 13 JSR $13e7 ; (ScoreType::getIsAchieved.s0 + 0)
13b0 : 09 00 __ ORA #$00
13b2 : d0 06 __ BNE $13ba ; (Score::updateScore.s3 + 0)
.s4:
13b4 : a9 01 __ LDA #$01
13b6 : a0 05 __ LDY #$05
13b8 : 91 23 __ STA (SP + 0),y 
.s3:
13ba : 20 25 12 JSR $1225 ; (Score::getScore.s0 + 0)
13bd : a0 02 __ LDY #$02
13bf : b1 23 __ LDA (SP + 0),y 
13c1 : 85 43 __ STA T2 + 0 
13c3 : c8 __ __ INY
13c4 : b1 23 __ LDA (SP + 0),y 
13c6 : 85 44 __ STA T2 + 1 
13c8 : 18 __ __ CLC
13c9 : 88 __ __ DEY
13ca : b1 43 __ LDA (T2 + 0),y 
13cc : 65 1b __ ADC ACCU + 0 
13ce : 91 43 __ STA (T2 + 0),y 
13d0 : c8 __ __ INY
13d1 : b1 43 __ LDA (T2 + 0),y 
13d3 : 65 1c __ ADC ACCU + 1 
13d5 : 91 43 __ STA (T2 + 0),y 
13d7 : 18 __ __ CLC
13d8 : a5 23 __ LDA SP + 0 
13da : 69 08 __ ADC #$08
13dc : 85 0d __ STA P0 ; (this + 0)
13de : a5 24 __ LDA SP + 1 
13e0 : 69 00 __ ADC #$00
13e2 : 85 0e __ STA P1 ; (this + 1)
13e4 : 4c b2 0c JMP $0cb2 ; (opp::string::~string.s0 + 0)
--------------------------------------------------------------------
ScoreType::getIsAchieved: ; ScoreType::getIsAchieved(const struct ScoreType*)->bool
.s0:
13e7 : a0 01 __ LDY #$01
.s1001:
13e9 : b1 0d __ LDA (P0),y ; (this + 0)
13eb : 60 __ __ RTS
--------------------------------------------------------------------
Score::getScoreTypes: ; Score::getScoreTypes(const struct Score*)->struct ScoreType*
.s0:
13ec : a0 00 __ LDY #$00
13ee : b1 0d __ LDA (P0),y ; (this + 0)
13f0 : 85 1b __ STA ACCU + 0 
13f2 : c8 __ __ INY
13f3 : b1 0d __ LDA (P0),y ; (this + 0)
13f5 : 85 1c __ STA ACCU + 1 
.s1001:
13f7 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::renderGame: ; BearGame::renderGame(const struct BearGame*)->void
.s0:
13f8 : a0 02 __ LDY #$02
13fa : b1 0f __ LDA (P2),y ; (this + 0)
13fc : 85 0d __ STA P0 
13fe : c8 __ __ INY
13ff : b1 0f __ LDA (P2),y ; (this + 0)
1401 : 85 0e __ STA P1 
1403 : 4c 06 14 JMP $1406 ; (BearSprite::render.s0 + 0)
--------------------------------------------------------------------
BearSprite::render: ; BearSprite::render(const struct BearSprite*)->void
.s0:
1406 : a0 08 __ LDY #$08
1408 : b1 0d __ LDA (P0),y ; (this + 0)
140a : aa __ __ TAX
140b : c8 __ __ INY
140c : b1 0d __ LDA (P0),y ; (this + 0)
140e : 4a __ __ LSR
140f : c8 __ __ INY
1410 : b1 0d __ LDA (P0),y ; (this + 0)
1412 : 8d 03 d0 STA $d003 
1415 : 8d 01 d0 STA $d001 
1418 : 8e 00 d0 STX $d000 
141b : ad 10 d0 LDA $d010 
141e : 90 04 __ BCC $1424 ; (BearSprite::render.s5 + 0)
.s4:
1420 : 09 03 __ ORA #$03
1422 : b0 02 __ BCS $1426 ; (BearSprite::render.s7 + 0)
.s5:
1424 : 29 fc __ AND #$fc
.s7:
1426 : 8d 10 d0 STA $d010 
1429 : 8e 02 d0 STX $d002 
.s1001:
142c : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
142d : a5 1c __ LDA ACCU + 1 
142f : d0 31 __ BNE $1462 ; (divmod + 53)
1431 : a5 04 __ LDA WORK + 1 
1433 : d0 1e __ BNE $1453 ; (divmod + 38)
1435 : 85 06 __ STA WORK + 3 
1437 : a2 04 __ LDX #$04
1439 : 06 1b __ ASL ACCU + 0 
143b : 2a __ __ ROL
143c : c5 03 __ CMP WORK + 0 
143e : 90 02 __ BCC $1442 ; (divmod + 21)
1440 : e5 03 __ SBC WORK + 0 
1442 : 26 1b __ ROL ACCU + 0 
1444 : 2a __ __ ROL
1445 : c5 03 __ CMP WORK + 0 
1447 : 90 02 __ BCC $144b ; (divmod + 30)
1449 : e5 03 __ SBC WORK + 0 
144b : 26 1b __ ROL ACCU + 0 
144d : ca __ __ DEX
144e : d0 eb __ BNE $143b ; (divmod + 14)
1450 : 85 05 __ STA WORK + 2 
1452 : 60 __ __ RTS
1453 : a5 1b __ LDA ACCU + 0 
1455 : 85 05 __ STA WORK + 2 
1457 : a5 1c __ LDA ACCU + 1 
1459 : 85 06 __ STA WORK + 3 
145b : a9 00 __ LDA #$00
145d : 85 1b __ STA ACCU + 0 
145f : 85 1c __ STA ACCU + 1 
1461 : 60 __ __ RTS
1462 : a5 04 __ LDA WORK + 1 
1464 : d0 1f __ BNE $1485 ; (divmod + 88)
1466 : a5 03 __ LDA WORK + 0 
1468 : 30 1b __ BMI $1485 ; (divmod + 88)
146a : a9 00 __ LDA #$00
146c : 85 06 __ STA WORK + 3 
146e : a2 10 __ LDX #$10
1470 : 06 1b __ ASL ACCU + 0 
1472 : 26 1c __ ROL ACCU + 1 
1474 : 2a __ __ ROL
1475 : c5 03 __ CMP WORK + 0 
1477 : 90 02 __ BCC $147b ; (divmod + 78)
1479 : e5 03 __ SBC WORK + 0 
147b : 26 1b __ ROL ACCU + 0 
147d : 26 1c __ ROL ACCU + 1 
147f : ca __ __ DEX
1480 : d0 f2 __ BNE $1474 ; (divmod + 71)
1482 : 85 05 __ STA WORK + 2 
1484 : 60 __ __ RTS
1485 : a9 00 __ LDA #$00
1487 : 85 05 __ STA WORK + 2 
1489 : 85 06 __ STA WORK + 3 
148b : 84 02 __ STY $02 
148d : a0 10 __ LDY #$10
148f : 18 __ __ CLC
1490 : 26 1b __ ROL ACCU + 0 
1492 : 26 1c __ ROL ACCU + 1 
1494 : 26 05 __ ROL WORK + 2 
1496 : 26 06 __ ROL WORK + 3 
1498 : 38 __ __ SEC
1499 : a5 05 __ LDA WORK + 2 
149b : e5 03 __ SBC WORK + 0 
149d : aa __ __ TAX
149e : a5 06 __ LDA WORK + 3 
14a0 : e5 04 __ SBC WORK + 1 
14a2 : 90 04 __ BCC $14a8 ; (divmod + 123)
14a4 : 86 05 __ STX WORK + 2 
14a6 : 85 06 __ STA WORK + 3 
14a8 : 88 __ __ DEY
14a9 : d0 e5 __ BNE $1490 ; (divmod + 99)
14ab : 26 1b __ ROL ACCU + 0 
14ad : 26 1c __ ROL ACCU + 1 
14af : a4 02 __ LDY $02 
14b1 : 60 __ __ RTS
--------------------------------------------------------------------
malloc: ; malloc
14b2 : 18 __ __ CLC
14b3 : a5 1b __ LDA ACCU + 0 
14b5 : 69 02 __ ADC #$02
14b7 : 85 03 __ STA WORK + 0 
14b9 : a5 1c __ LDA ACCU + 1 
14bb : 69 00 __ ADC #$00
14bd : 85 04 __ STA WORK + 1 
14bf : ad 08 17 LDA $1708 ; (HeapNode + 2)
14c2 : d0 1f __ BNE $14e3 ; (malloc + 49)
14c4 : a9 00 __ LDA #$00
14c6 : 8d 10 17 STA $1710 
14c9 : 8d 11 17 STA $1711 
14cc : ee 08 17 INC $1708 ; (HeapNode + 2)
14cf : a9 10 __ LDA #$10
14d1 : 8d 06 17 STA $1706 ; (HeapNode + 0)
14d4 : a9 17 __ LDA #$17
14d6 : 8d 07 17 STA $1707 ; (HeapNode + 1)
14d9 : a9 00 __ LDA #$00
14db : 8d 12 17 STA $1712 
14de : a9 90 __ LDA #$90
14e0 : 8d 13 17 STA $1713 
14e3 : a9 06 __ LDA #$06
14e5 : a2 17 __ LDX #$17
14e7 : 85 1d __ STA ACCU + 2 
14e9 : 86 1e __ STX ACCU + 3 
14eb : 18 __ __ CLC
14ec : a0 00 __ LDY #$00
14ee : b1 1d __ LDA (ACCU + 2),y 
14f0 : 85 1b __ STA ACCU + 0 
14f2 : 65 03 __ ADC WORK + 0 
14f4 : 85 05 __ STA WORK + 2 
14f6 : c8 __ __ INY
14f7 : b1 1d __ LDA (ACCU + 2),y 
14f9 : 85 1c __ STA ACCU + 1 
14fb : f0 18 __ BEQ $1515 ; (malloc + 99)
14fd : 65 04 __ ADC WORK + 1 
14ff : 85 06 __ STA WORK + 3 
1501 : a0 02 __ LDY #$02
1503 : b1 1b __ LDA (ACCU + 0),y 
1505 : c5 05 __ CMP WORK + 2 
1507 : c8 __ __ INY
1508 : b1 1b __ LDA (ACCU + 0),y 
150a : e5 06 __ SBC WORK + 3 
150c : b0 08 __ BCS $1516 ; (malloc + 100)
150e : a5 1b __ LDA ACCU + 0 
1510 : a6 1c __ LDX ACCU + 1 
1512 : 4c e7 14 JMP $14e7 ; (malloc + 53)
1515 : 60 __ __ RTS
1516 : 18 __ __ CLC
1517 : a5 05 __ LDA WORK + 2 
1519 : 69 03 __ ADC #$03
151b : 29 fc __ AND #$fc
151d : 85 07 __ STA WORK + 4 
151f : a5 06 __ LDA WORK + 3 
1521 : 69 00 __ ADC #$00
1523 : 85 08 __ STA WORK + 5 
1525 : a0 02 __ LDY #$02
1527 : a5 07 __ LDA WORK + 4 
1529 : d1 1b __ CMP (ACCU + 0),y 
152b : d0 15 __ BNE $1542 ; (malloc + 144)
152d : c8 __ __ INY
152e : a5 08 __ LDA WORK + 5 
1530 : d1 1b __ CMP (ACCU + 0),y 
1532 : d0 0e __ BNE $1542 ; (malloc + 144)
1534 : a0 00 __ LDY #$00
1536 : b1 1b __ LDA (ACCU + 0),y 
1538 : 91 1d __ STA (ACCU + 2),y 
153a : c8 __ __ INY
153b : b1 1b __ LDA (ACCU + 0),y 
153d : 91 1d __ STA (ACCU + 2),y 
153f : 4c 5f 15 JMP $155f ; (malloc + 173)
1542 : a0 00 __ LDY #$00
1544 : b1 1b __ LDA (ACCU + 0),y 
1546 : 91 07 __ STA (WORK + 4),y 
1548 : a5 07 __ LDA WORK + 4 
154a : 91 1d __ STA (ACCU + 2),y 
154c : c8 __ __ INY
154d : b1 1b __ LDA (ACCU + 0),y 
154f : 91 07 __ STA (WORK + 4),y 
1551 : a5 08 __ LDA WORK + 5 
1553 : 91 1d __ STA (ACCU + 2),y 
1555 : c8 __ __ INY
1556 : b1 1b __ LDA (ACCU + 0),y 
1558 : 91 07 __ STA (WORK + 4),y 
155a : c8 __ __ INY
155b : b1 1b __ LDA (ACCU + 0),y 
155d : 91 07 __ STA (WORK + 4),y 
155f : a0 00 __ LDY #$00
1561 : a5 05 __ LDA WORK + 2 
1563 : 91 1b __ STA (ACCU + 0),y 
1565 : c8 __ __ INY
1566 : a5 06 __ LDA WORK + 3 
1568 : 91 1b __ STA (ACCU + 0),y 
156a : a5 1b __ LDA ACCU + 0 
156c : 09 02 __ ORA #$02
156e : 85 1b __ STA ACCU + 0 
1570 : 60 __ __ RTS
--------------------------------------------------------------------
free: ; free
1571 : a5 1b __ LDA ACCU + 0 
1573 : 29 fc __ AND #$fc
1575 : 85 1b __ STA ACCU + 0 
1577 : 05 1c __ ORA ACCU + 1 
1579 : d0 01 __ BNE $157c ; (free + 11)
157b : 60 __ __ RTS
157c : 18 __ __ CLC
157d : a0 00 __ LDY #$00
157f : b1 1b __ LDA (ACCU + 0),y 
1581 : 69 03 __ ADC #$03
1583 : 29 fc __ AND #$fc
1585 : 85 1d __ STA ACCU + 2 
1587 : c8 __ __ INY
1588 : b1 1b __ LDA (ACCU + 0),y 
158a : 69 00 __ ADC #$00
158c : 85 1e __ STA ACCU + 3 
158e : a9 06 __ LDA #$06
1590 : a2 17 __ LDX #$17
1592 : 85 05 __ STA WORK + 2 
1594 : 86 06 __ STX WORK + 3 
1596 : a0 01 __ LDY #$01
1598 : b1 05 __ LDA (WORK + 2),y 
159a : f0 28 __ BEQ $15c4 ; (free + 83)
159c : aa __ __ TAX
159d : 88 __ __ DEY
159e : b1 05 __ LDA (WORK + 2),y 
15a0 : e4 1e __ CPX ACCU + 3 
15a2 : 90 ee __ BCC $1592 ; (free + 33)
15a4 : d0 1e __ BNE $15c4 ; (free + 83)
15a6 : c5 1d __ CMP ACCU + 2 
15a8 : 90 e8 __ BCC $1592 ; (free + 33)
15aa : d0 18 __ BNE $15c4 ; (free + 83)
15ac : a0 00 __ LDY #$00
15ae : b1 1d __ LDA (ACCU + 2),y 
15b0 : 91 1b __ STA (ACCU + 0),y 
15b2 : c8 __ __ INY
15b3 : b1 1d __ LDA (ACCU + 2),y 
15b5 : 91 1b __ STA (ACCU + 0),y 
15b7 : c8 __ __ INY
15b8 : b1 1d __ LDA (ACCU + 2),y 
15ba : 91 1b __ STA (ACCU + 0),y 
15bc : c8 __ __ INY
15bd : b1 1d __ LDA (ACCU + 2),y 
15bf : 91 1b __ STA (ACCU + 0),y 
15c1 : 4c d9 15 JMP $15d9 ; (free + 104)
15c4 : a0 00 __ LDY #$00
15c6 : b1 05 __ LDA (WORK + 2),y 
15c8 : 91 1b __ STA (ACCU + 0),y 
15ca : c8 __ __ INY
15cb : b1 05 __ LDA (WORK + 2),y 
15cd : 91 1b __ STA (ACCU + 0),y 
15cf : c8 __ __ INY
15d0 : a5 1d __ LDA ACCU + 2 
15d2 : 91 1b __ STA (ACCU + 0),y 
15d4 : c8 __ __ INY
15d5 : a5 1e __ LDA ACCU + 3 
15d7 : 91 1b __ STA (ACCU + 0),y 
15d9 : a0 02 __ LDY #$02
15db : b1 05 __ LDA (WORK + 2),y 
15dd : c5 1b __ CMP ACCU + 0 
15df : d0 1d __ BNE $15fe ; (free + 141)
15e1 : c8 __ __ INY
15e2 : b1 05 __ LDA (WORK + 2),y 
15e4 : c5 1c __ CMP ACCU + 1 
15e6 : d0 16 __ BNE $15fe ; (free + 141)
15e8 : a0 00 __ LDY #$00
15ea : b1 1b __ LDA (ACCU + 0),y 
15ec : 91 05 __ STA (WORK + 2),y 
15ee : c8 __ __ INY
15ef : b1 1b __ LDA (ACCU + 0),y 
15f1 : 91 05 __ STA (WORK + 2),y 
15f3 : c8 __ __ INY
15f4 : b1 1b __ LDA (ACCU + 0),y 
15f6 : 91 05 __ STA (WORK + 2),y 
15f8 : c8 __ __ INY
15f9 : b1 1b __ LDA (ACCU + 0),y 
15fb : 91 05 __ STA (WORK + 2),y 
15fd : 60 __ __ RTS
15fe : a0 00 __ LDY #$00
1600 : a5 1b __ LDA ACCU + 0 
1602 : 91 05 __ STA (WORK + 2),y 
1604 : c8 __ __ INY
1605 : a5 1c __ LDA ACCU + 1 
1607 : 91 05 __ STA (WORK + 2),y 
1609 : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
160a : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
sp_data:
160b : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 28 a4 20 2a : ............(. *
161b : __ __ __ BYT a9 60 0a a5 60 0a a5 60 0a aa 60 02 ef 40 02 ef : .`..`..`..`..@..
162b : __ __ __ BYT 80 02 aa a0 0a 85 90 0a a5 50 0a a6 60 02 a9 40 : .........P..`..@
163b : __ __ __ BYT 01 55 40 00 55 00 00 28 00 00 00 00 00 00 00 98 : .U@.U..(........
164b : __ __ __ BYT 00 00 00 00 00 00 00 00 00 38 00 38 24 10 48 20 : .........8.8$.H 
165b : __ __ __ BYT 10 08 39 87 18 01 01 00 01 00 00 00 28 00 04 6c : ..9.........(..l
166b : __ __ __ BYT 20 04 00 20 08 38 10 08 10 10 08 92 10 04 7c 20 :  .. .8........| 
167b : __ __ __ BYT 04 00 20 03 81 c0 00 7e 00 00 00 00 00 00 00 10 : .. ....~........
--------------------------------------------------------------------
mul40:
168b : __ __ __ BYT 00 00 28 00 50 00 78 00 a0 00 c8 00 f0 00 18 01 : ..(.P.x.........
169b : __ __ __ BYT 40 01 68 01 90 01 b8 01 e0 01 08 02 30 02 58 02 : @.h.........0.X.
16ab : __ __ __ BYT 80 02 a8 02 d0 02 f8 02 20 03 48 03 70 03 98 03 : ........ .H.p...
16bb : __ __ __ BYT c0 03                                           : ..
--------------------------------------------------------------------
giocharmap:
16bd : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
opp::cout:
16be : __ __ __ BYT 00 00 00 00 00 00 00                            : .......
--------------------------------------------------------------------
bitshift:
16c5 : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
16d5 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
16e5 : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
16f5 : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........
--------------------------------------------------------------------
vspriteScreen:
16fd : __ __ __ BSS	2
--------------------------------------------------------------------
joyy:
1700 : __ __ __ BSS	2
--------------------------------------------------------------------
joyx:
1702 : __ __ __ BSS	2
--------------------------------------------------------------------
joyb:
1704 : __ __ __ BSS	2
--------------------------------------------------------------------
HeapNode:
1706 : __ __ __ BSS	4

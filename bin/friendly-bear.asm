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
080e : 8e eb 16 STX $16eb ; (spentry + 0)
0811 : a9 ea __ LDA #$ea
0813 : 85 19 __ STA IP + 0 
0815 : a9 17 __ LDA #$17
0817 : 85 1a __ STA IP + 1 
0819 : 38 __ __ SEC
081a : a9 17 __ LDA #$17
081c : e9 17 __ SBC #$17
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
0830 : a9 ea __ LDA #$ea
0832 : e9 ea __ SBC #$ea
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
088a : a9 ed __ LDA #$ed
088c : 85 0d __ STA P0 
088e : a9 16 __ LDA #$16
0890 : 85 0e __ STA P1 
0892 : 20 fb 0e JSR $0efb ; (opp::ios::+ios.s0 + 0)
0895 : a9 02 __ LDA #$02
0897 : 8d ed 16 STA $16ed ; (opp::cout + 0)
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
08cd : a9 ed __ LDA #$ed
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
098a : 85 17 __ STA P10 
098c : a9 9f __ LDA #$9f
098e : 85 18 __ STA P11 
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
09ea : 20 93 15 JSR $1593 ; (malloc + 0)
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
0a3c : 20 93 15 JSR $1593 ; (malloc + 0)
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
0a6f : 20 93 15 JSR $1593 ; (malloc + 0)
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
0b8e : 20 52 16 JSR $1652 ; (free + 0)
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
0bc1 : 20 93 15 JSR $1593 ; (malloc + 0)
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
0c62 : 20 52 16 JSR $1652 ; (free + 0)
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
0c83 : 20 93 15 JSR $1593 ; (malloc + 0)
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
0cbd : 4c 52 16 JMP $1652 ; (free + 0)
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
0ce9 : 20 93 15 JSR $1593 ; (malloc + 0)
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
0d4c : 20 93 15 JSR $1593 ; (malloc + 0)
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
0dbd : a9 00 __ LDA #$00
0dbf : a0 00 __ LDY #$00
0dc1 : 91 0d __ STA (P0),y ; (this + 0)
0dc3 : a9 17 __ LDA #$17
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
0e09 : b9 80 17 LDA $1780,y ; (mul40 + 0)
0e0c : 85 12 __ STA P5 ; (sy + 0)
0e0e : 18 __ __ CLC
0e0f : 65 11 __ ADC P4 ; (sx + 0)
0e11 : aa __ __ TAX
0e12 : b9 81 17 LDA $1781,y ; (mul40 + 1)
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
0e43 : 8d ec 16 STA $16ec ; (giocharmap + 0)
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
0eb8 : ae ec 16 LDX $16ec ; (giocharmap + 0)
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
0f9d : 8d f4 16 STA $16f4 ; (vspriteScreen + 0)
0fa0 : c8 __ __ INY
0fa1 : b1 43 __ LDA (T0 + 0),y 
0fa3 : 69 03 __ ADC #$03
0fa5 : 8d f5 16 STA $16f5 ; (vspriteScreen + 1)
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
0fcc : bd ba 17 LDA $17ba,x ; (bitshift + 8)
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
104b : ad f4 16 LDA $16f4 ; (vspriteScreen + 0)
104e : 18 __ __ CLC
104f : 65 0d __ ADC P0 ; (sp + 0)
1051 : 85 1b __ STA ACCU + 0 
1053 : ad f5 16 LDA $16f5 ; (vspriteScreen + 1)
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
10fb : 20 0e 15 JSR $150e ; (divmod + 0)
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
1112 : 9d ef 9f STA $9fef,x ; (achieve + 0)
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
1133 : 8d ef 9f STA $9fef ; (achieve + 0)
1136 : e6 47 __ INC T3 + 0 
1138 : a5 47 __ LDA T3 + 0 
.s55:
113a : 85 15 __ STA P8 
113c : ad fb 9f LDA $9ffb ; (sstack + 2)
113f : f0 07 __ BEQ $1148 ; (opp::ostream::numput.s21 + 0)
.s19:
1141 : a6 15 __ LDX P8 
1143 : 9d ef 9f STA $9fef,x ; (achieve + 0)
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
1233 : b1 17 __ LDA (P10),y ; (this + 0)
1235 : c9 01 __ CMP #$01
1237 : d0 0f __ BNE $1248 ; (BearGame::play.s8 + 0)
.s3:
1239 : a5 17 __ LDA P10 ; (this + 0)
123b : 85 15 __ STA P8 
123d : a5 18 __ LDA P11 ; (this + 1)
123f : 85 16 __ STA P9 
1241 : 20 da 12 JSR $12da ; (BearGame::updateGame.s1000 + 0)
1244 : a9 02 __ LDA #$02
1246 : d0 24 __ BNE $126c ; (BearGame::play.s1001 + 0)
.s8:
1248 : 09 00 __ ORA #$00
124a : d0 0f __ BNE $125b ; (BearGame::play.s9 + 0)
.s2:
124c : a5 17 __ LDA P10 ; (this + 0)
124e : 85 11 __ STA P4 
1250 : a5 18 __ LDA P11 ; (this + 1)
1252 : 85 12 __ STA P5 
1254 : 20 71 12 JSR $1271 ; (BearGame::getUserInput.s0 + 0)
1257 : a9 01 __ LDA #$01
1259 : d0 11 __ BNE $126c ; (BearGame::play.s1001 + 0)
.s9:
125b : c9 02 __ CMP #$02
125d : d0 0b __ BNE $126a ; (BearGame::play.s13 + 0)
.s4:
125f : a5 17 __ LDA P10 ; (this + 0)
1261 : 85 0f __ STA P2 
1263 : a5 18 __ LDA P11 ; (this + 1)
1265 : 85 10 __ STA P3 
1267 : 20 d9 14 JSR $14d9 ; (BearGame::renderGame.s0 + 0)
.s13:
126a : a9 00 __ LDA #$00
.s1001:
126c : a0 01 __ LDY #$01
126e : 91 17 __ STA (P10),y ; (this + 0)
1270 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::getUserInput: ; BearGame::getUserInput(const struct BearGame*)->void
.s0:
1271 : a9 00 __ LDA #$00
1273 : 20 9a 12 JSR $129a ; (joy_poll.s0 + 0)
1276 : ad f8 16 LDA $16f8 ; (joyx + 0)
1279 : c9 ff __ CMP #$ff
127b : f0 06 __ BEQ $1283 ; (BearGame::getUserInput.s18 + 0)
.s7:
127d : c9 01 __ CMP #$01
127f : f0 02 __ BEQ $1283 ; (BearGame::getUserInput.s18 + 0)
.s5:
1281 : a9 00 __ LDA #$00
.s18:
1283 : aa __ __ TAX
1284 : ad f6 16 LDA $16f6 ; (joyy + 0)
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
12a9 : 9d fa 16 STA $16fa,x ; (joyb + 0)
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
12bf : 9d f6 16 STA $16f6,x ; (joyy + 0)
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
12d6 : 9d f8 16 STA $16f8,x ; (joyx + 0)
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
12e5 : a5 15 __ LDA P8 ; (this + 0)
12e7 : 85 13 __ STA P6 
12e9 : a5 16 __ LDA P9 ; (this + 1)
12eb : 85 14 __ STA P7 
12ed : 20 8c 13 JSR $138c ; (BearGame::updateBearSpritePosition.s0 + 0)
12f0 : a0 02 __ LDY #$02
12f2 : b1 15 __ LDA (P8),y ; (this + 0)
12f4 : 85 0d __ STA P0 
12f6 : c8 __ __ INY
12f7 : b1 15 __ LDA (P8),y ; (this + 0)
12f9 : 85 0e __ STA P1 
12fb : 20 2a 14 JSR $142a ; (BearSprite::getX.s0 + 0)
12fe : 24 1c __ BIT ACCU + 1 
1300 : 30 27 __ BMI $1329 ; (BearGame::updateGame.s1 + 0)
.s6:
1302 : 20 2a 14 JSR $142a ; (BearSprite::getX.s0 + 0)
1305 : a5 1c __ LDA ACCU + 1 
1307 : 49 80 __ EOR #$80
1309 : c9 81 __ CMP #$81
130b : d0 04 __ BNE $1311 ; (BearGame::updateGame.s1005 + 0)
.s1004:
130d : a5 1b __ LDA ACCU + 0 
130f : c9 41 __ CMP #$41
.s1005:
1311 : b0 16 __ BCS $1329 ; (BearGame::updateGame.s1 + 0)
.s5:
1313 : 20 36 14 JSR $1436 ; (BearSprite::getY.s0 + 0)
1316 : 24 1c __ BIT ACCU + 1 
1318 : 30 0f __ BMI $1329 ; (BearGame::updateGame.s1 + 0)
.s4:
131a : 20 36 14 JSR $1436 ; (BearSprite::getY.s0 + 0)
131d : a5 1c __ LDA ACCU + 1 
131f : 30 5f __ BMI $1380 ; (BearGame::updateGame.s1001 + 0)
.s1003:
1321 : d0 06 __ BNE $1329 ; (BearGame::updateGame.s1 + 0)
.s1002:
1323 : a9 c8 __ LDA #$c8
1325 : c5 1b __ CMP ACCU + 0 
1327 : b0 57 __ BCS $1380 ; (BearGame::updateGame.s1001 + 0)
.s1:
1329 : 18 __ __ CLC
132a : a5 15 __ LDA P8 ; (this + 0)
132c : 69 06 __ ADC #$06
132e : 85 0d __ STA P0 
1330 : a0 02 __ LDY #$02
1332 : 91 23 __ STA (SP + 0),y 
1334 : a5 16 __ LDA P9 ; (this + 1)
1336 : 69 00 __ ADC #$00
1338 : 85 0e __ STA P1 
133a : c8 __ __ INY
133b : 91 23 __ STA (SP + 0),y 
133d : 20 cd 14 JSR $14cd ; (Score::getScoreTypes.s0 + 0)
1340 : a0 00 __ LDY #$00
1342 : b1 1b __ LDA (ACCU + 0),y 
1344 : a0 04 __ LDY #$04
1346 : 91 23 __ STA (SP + 0),y 
1348 : a0 01 __ LDY #$01
134a : b1 1b __ LDA (ACCU + 0),y 
134c : a0 05 __ LDY #$05
134e : 91 23 __ STA (SP + 0),y 
1350 : a0 02 __ LDY #$02
1352 : b1 1b __ LDA (ACCU + 0),y 
1354 : a0 06 __ LDY #$06
1356 : 91 23 __ STA (SP + 0),y 
1358 : a0 03 __ LDY #$03
135a : b1 1b __ LDA (ACCU + 0),y 
135c : a0 07 __ LDY #$07
135e : 91 23 __ STA (SP + 0),y 
1360 : 18 __ __ CLC
1361 : a5 23 __ LDA SP + 0 
1363 : 69 08 __ ADC #$08
1365 : 85 0d __ STA P0 
1367 : a5 24 __ LDA SP + 1 
1369 : 69 00 __ ADC #$00
136b : 85 0e __ STA P1 
136d : 18 __ __ CLC
136e : a5 1b __ LDA ACCU + 0 
1370 : 69 04 __ ADC #$04
1372 : 85 0f __ STA P2 
1374 : a5 1c __ LDA ACCU + 1 
1376 : 69 00 __ ADC #$00
1378 : 85 10 __ STA P3 
137a : 20 27 0d JSR $0d27 ; (opp::string::+string.s0 + 0)
137d : 20 7f 14 JSR $147f ; (Score::updateScore.s0 + 0)
.s1001:
1380 : 18 __ __ CLC
1381 : a5 23 __ LDA SP + 0 
1383 : 69 0a __ ADC #$0a
1385 : 85 23 __ STA SP + 0 
1387 : 90 02 __ BCC $138b ; (BearGame::updateGame.s1001 + 11)
1389 : e6 24 __ INC SP + 1 
138b : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::updateBearSpritePosition: ; BearGame::updateBearSpritePosition(const struct BearGame*)->void
.s0:
138c : a0 02 __ LDY #$02
138e : b1 13 __ LDA (P6),y ; (this + 0)
1390 : 85 45 __ STA T1 + 0 
1392 : 85 0d __ STA P0 
1394 : c8 __ __ INY
1395 : b1 13 __ LDA (P6),y ; (this + 0)
1397 : 85 46 __ STA T1 + 1 
1399 : 85 0e __ STA P1 
139b : 20 2a 14 JSR $142a ; (BearSprite::getX.s0 + 0)
139e : a5 1b __ LDA ACCU + 0 
13a0 : 85 47 __ STA T2 + 0 
13a2 : a5 1c __ LDA ACCU + 1 
13a4 : 85 48 __ STA T2 + 1 
13a6 : 20 36 14 JSR $1436 ; (BearSprite::getY.s0 + 0)
13a9 : a5 1b __ LDA ACCU + 0 
13ab : 85 49 __ STA T3 + 0 
13ad : a5 1c __ LDA ACCU + 1 
13af : 85 4a __ STA T3 + 1 
13b1 : 18 __ __ CLC
13b2 : a5 13 __ LDA P6 ; (this + 0)
13b4 : 69 0a __ ADC #$0a
13b6 : 85 0d __ STA P0 
13b8 : a5 14 __ LDA P7 ; (this + 1)
13ba : 69 00 __ ADC #$00
13bc : 85 0e __ STA P1 
13be : 20 60 0e JSR $0e60 ; (BearGame::getGameState.s0 + 0)
13c1 : c9 ff __ CMP #$ff
13c3 : d0 0e __ BNE $13d3 ; (BearGame::updateBearSpritePosition.s7 + 0)
.s2:
13c5 : 38 __ __ SEC
13c6 : a5 47 __ LDA T2 + 0 
13c8 : e9 01 __ SBC #$01
13ca : 85 43 __ STA T0 + 0 
13cc : a5 48 __ LDA T2 + 1 
13ce : e9 00 __ SBC #$00
13d0 : 4c e8 13 JMP $13e8 ; (BearGame::updateBearSpritePosition.s1010 + 0)
.s7:
13d3 : a4 47 __ LDY T2 + 0 
13d5 : 84 43 __ STY T0 + 0 
13d7 : a6 48 __ LDX T2 + 1 
13d9 : 86 44 __ STX T0 + 1 
13db : c9 01 __ CMP #$01
13dd : d0 0b __ BNE $13ea ; (BearGame::updateBearSpritePosition.s1 + 0)
.s3:
13df : 98 __ __ TYA
13e0 : 18 __ __ CLC
13e1 : 69 01 __ ADC #$01
13e3 : 85 43 __ STA T0 + 0 
13e5 : 8a __ __ TXA
13e6 : 69 00 __ ADC #$00
.s1010:
13e8 : 85 44 __ STA T0 + 1 
.s1:
13ea : 20 42 14 JSR $1442 ; (JoyDirection::getJoyDirectionY.s0 + 0)
13ed : a6 45 __ LDX T1 + 0 
13ef : 86 0d __ STX P0 
13f1 : a6 46 __ LDX T1 + 1 
13f3 : 86 0e __ STX P1 
13f5 : a6 43 __ LDX T0 + 0 
13f7 : 86 0f __ STX P2 
13f9 : a6 44 __ LDX T0 + 1 
13fb : 86 10 __ STX P3 
13fd : c9 ff __ CMP #$ff
13ff : f0 1c __ BEQ $141d ; (BearGame::updateBearSpritePosition.s10 + 0)
.s15:
1401 : c9 01 __ CMP #$01
1403 : d0 0d __ BNE $1412 ; (BearGame::updateBearSpritePosition.s1014 + 0)
.s11:
1405 : 18 __ __ CLC
1406 : a5 49 __ LDA T3 + 0 
1408 : 69 01 __ ADC #$01
140a : 85 11 __ STA P4 
140c : 90 08 __ BCC $1416 ; (BearGame::updateBearSpritePosition.s9 + 0)
.s1013:
140e : e6 49 __ INC T3 + 0 
1410 : e6 4a __ INC T3 + 1 
.s1014:
1412 : a5 49 __ LDA T3 + 0 
1414 : 85 11 __ STA P4 
.s9:
1416 : a5 4a __ LDA T3 + 1 
1418 : 85 12 __ STA P5 
141a : 4c 47 14 JMP $1447 ; (BearSprite::move.s0 + 0)
.s10:
141d : 38 __ __ SEC
141e : a5 49 __ LDA T3 + 0 
1420 : e9 01 __ SBC #$01
1422 : 85 11 __ STA P4 
1424 : b0 f0 __ BCS $1416 ; (BearGame::updateBearSpritePosition.s9 + 0)
.s1015:
1426 : c6 4a __ DEC T3 + 1 
1428 : 90 ec __ BCC $1416 ; (BearGame::updateBearSpritePosition.s9 + 0)
--------------------------------------------------------------------
BearSprite::getX: ; BearSprite::getX(const struct BearSprite*)->i16
.s0:
142a : a0 08 __ LDY #$08
142c : b1 0d __ LDA (P0),y ; (this + 0)
142e : 85 1b __ STA ACCU + 0 
1430 : c8 __ __ INY
1431 : b1 0d __ LDA (P0),y ; (this + 0)
1433 : 85 1c __ STA ACCU + 1 
.s1001:
1435 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::getY: ; BearSprite::getY(const struct BearSprite*)->i16
.s0:
1436 : a0 0a __ LDY #$0a
1438 : b1 0d __ LDA (P0),y ; (this + 0)
143a : 85 1b __ STA ACCU + 0 
143c : c8 __ __ INY
143d : b1 0d __ LDA (P0),y ; (this + 0)
143f : 85 1c __ STA ACCU + 1 
.s1001:
1441 : 60 __ __ RTS
--------------------------------------------------------------------
JoyDirection::getJoyDirectionY: ; JoyDirection::getJoyDirectionY(const struct JoyDirection*)->enum JoyDirectionY
.s0:
1442 : a0 01 __ LDY #$01
.s1001:
1444 : b1 0d __ LDA (P0),y ; (this + 0)
1446 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::move: ; BearSprite::move(const struct BearSprite*,i16,i16)->void
.s0:
1447 : ee 21 d0 INC $d021 
144a : a6 0f __ LDX P2 ; (x + 0)
144c : 8a __ __ TXA
144d : a0 08 __ LDY #$08
144f : 91 0d __ STA (P0),y ; (this + 0)
1451 : a5 10 __ LDA P3 ; (x + 1)
1453 : c8 __ __ INY
1454 : 91 0d __ STA (P0),y ; (this + 0)
1456 : a5 11 __ LDA P4 ; (y + 0)
1458 : c8 __ __ INY
1459 : 91 0d __ STA (P0),y ; (this + 0)
145b : a5 12 __ LDA P5 ; (y + 1)
145d : c8 __ __ INY
145e : 91 0d __ STA (P0),y ; (this + 0)
1460 : a5 11 __ LDA P4 ; (y + 0)
1462 : 8d 01 d0 STA $d001 
1465 : 8d 03 d0 STA $d003 
1468 : 8e 00 d0 STX $d000 
146b : 46 10 __ LSR P3 ; (x + 1)
146d : ad 10 d0 LDA $d010 
1470 : 90 04 __ BCC $1476 ; (BearSprite::move.s5 + 0)
.s4:
1472 : 09 03 __ ORA #$03
1474 : b0 02 __ BCS $1478 ; (BearSprite::move.s7 + 0)
.s5:
1476 : 29 fc __ AND #$fc
.s7:
1478 : 8d 10 d0 STA $d010 
147b : 8e 02 d0 STX $d002 
.s1001:
147e : 60 __ __ RTS
--------------------------------------------------------------------
Score::updateScore: ; Score::updateScore(const struct Score*,struct ScoreType)->void
.s0:
147f : 18 __ __ CLC
1480 : a5 23 __ LDA SP + 0 
1482 : 69 04 __ ADC #$04
1484 : 85 0d __ STA P0 ; (this + 0)
1486 : a5 24 __ LDA SP + 1 
1488 : 69 00 __ ADC #$00
148a : 85 0e __ STA P1 ; (this + 1)
148c : 20 60 0e JSR $0e60 ; (BearGame::getGameState.s0 + 0)
148f : 09 00 __ ORA #$00
1491 : f0 0d __ BEQ $14a0 ; (Score::updateScore.s3 + 0)
.s1:
1493 : 20 42 14 JSR $1442 ; (JoyDirection::getJoyDirectionY.s0 + 0)
1496 : 09 00 __ ORA #$00
1498 : d0 06 __ BNE $14a0 ; (Score::updateScore.s3 + 0)
.s4:
149a : a9 01 __ LDA #$01
149c : a0 05 __ LDY #$05
149e : 91 23 __ STA (SP + 0),y 
.s3:
14a0 : 20 25 12 JSR $1225 ; (Score::getScore.s0 + 0)
14a3 : a0 02 __ LDY #$02
14a5 : b1 23 __ LDA (SP + 0),y 
14a7 : 85 43 __ STA T2 + 0 
14a9 : c8 __ __ INY
14aa : b1 23 __ LDA (SP + 0),y 
14ac : 85 44 __ STA T2 + 1 
14ae : 18 __ __ CLC
14af : 88 __ __ DEY
14b0 : b1 43 __ LDA (T2 + 0),y 
14b2 : 65 1b __ ADC ACCU + 0 
14b4 : 91 43 __ STA (T2 + 0),y 
14b6 : c8 __ __ INY
14b7 : b1 43 __ LDA (T2 + 0),y 
14b9 : 65 1c __ ADC ACCU + 1 
14bb : 91 43 __ STA (T2 + 0),y 
14bd : 18 __ __ CLC
14be : a5 23 __ LDA SP + 0 
14c0 : 69 08 __ ADC #$08
14c2 : 85 0d __ STA P0 ; (this + 0)
14c4 : a5 24 __ LDA SP + 1 
14c6 : 69 00 __ ADC #$00
14c8 : 85 0e __ STA P1 ; (this + 1)
14ca : 4c b2 0c JMP $0cb2 ; (opp::string::~string.s0 + 0)
--------------------------------------------------------------------
Score::getScoreTypes: ; Score::getScoreTypes(const struct Score*)->struct ScoreType*
.s0:
14cd : a0 00 __ LDY #$00
14cf : b1 0d __ LDA (P0),y ; (this + 0)
14d1 : 85 1b __ STA ACCU + 0 
14d3 : c8 __ __ INY
14d4 : b1 0d __ LDA (P0),y ; (this + 0)
14d6 : 85 1c __ STA ACCU + 1 
.s1001:
14d8 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::renderGame: ; BearGame::renderGame(const struct BearGame*)->void
.s0:
14d9 : a0 02 __ LDY #$02
14db : b1 0f __ LDA (P2),y ; (this + 0)
14dd : 85 0d __ STA P0 
14df : c8 __ __ INY
14e0 : b1 0f __ LDA (P2),y ; (this + 0)
14e2 : 85 0e __ STA P1 
14e4 : 4c e7 14 JMP $14e7 ; (BearSprite::render.s0 + 0)
--------------------------------------------------------------------
BearSprite::render: ; BearSprite::render(const struct BearSprite*)->void
.s0:
14e7 : a0 08 __ LDY #$08
14e9 : b1 0d __ LDA (P0),y ; (this + 0)
14eb : aa __ __ TAX
14ec : c8 __ __ INY
14ed : b1 0d __ LDA (P0),y ; (this + 0)
14ef : 4a __ __ LSR
14f0 : c8 __ __ INY
14f1 : b1 0d __ LDA (P0),y ; (this + 0)
14f3 : 8d 03 d0 STA $d003 
14f6 : 8d 01 d0 STA $d001 
14f9 : 8e 00 d0 STX $d000 
14fc : ad 10 d0 LDA $d010 
14ff : 90 04 __ BCC $1505 ; (BearSprite::render.s5 + 0)
.s4:
1501 : 09 03 __ ORA #$03
1503 : b0 02 __ BCS $1507 ; (BearSprite::render.s7 + 0)
.s5:
1505 : 29 fc __ AND #$fc
.s7:
1507 : 8d 10 d0 STA $d010 
150a : 8e 02 d0 STX $d002 
.s1001:
150d : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
150e : a5 1c __ LDA ACCU + 1 
1510 : d0 31 __ BNE $1543 ; (divmod + 53)
1512 : a5 04 __ LDA WORK + 1 
1514 : d0 1e __ BNE $1534 ; (divmod + 38)
1516 : 85 06 __ STA WORK + 3 
1518 : a2 04 __ LDX #$04
151a : 06 1b __ ASL ACCU + 0 
151c : 2a __ __ ROL
151d : c5 03 __ CMP WORK + 0 
151f : 90 02 __ BCC $1523 ; (divmod + 21)
1521 : e5 03 __ SBC WORK + 0 
1523 : 26 1b __ ROL ACCU + 0 
1525 : 2a __ __ ROL
1526 : c5 03 __ CMP WORK + 0 
1528 : 90 02 __ BCC $152c ; (divmod + 30)
152a : e5 03 __ SBC WORK + 0 
152c : 26 1b __ ROL ACCU + 0 
152e : ca __ __ DEX
152f : d0 eb __ BNE $151c ; (divmod + 14)
1531 : 85 05 __ STA WORK + 2 
1533 : 60 __ __ RTS
1534 : a5 1b __ LDA ACCU + 0 
1536 : 85 05 __ STA WORK + 2 
1538 : a5 1c __ LDA ACCU + 1 
153a : 85 06 __ STA WORK + 3 
153c : a9 00 __ LDA #$00
153e : 85 1b __ STA ACCU + 0 
1540 : 85 1c __ STA ACCU + 1 
1542 : 60 __ __ RTS
1543 : a5 04 __ LDA WORK + 1 
1545 : d0 1f __ BNE $1566 ; (divmod + 88)
1547 : a5 03 __ LDA WORK + 0 
1549 : 30 1b __ BMI $1566 ; (divmod + 88)
154b : a9 00 __ LDA #$00
154d : 85 06 __ STA WORK + 3 
154f : a2 10 __ LDX #$10
1551 : 06 1b __ ASL ACCU + 0 
1553 : 26 1c __ ROL ACCU + 1 
1555 : 2a __ __ ROL
1556 : c5 03 __ CMP WORK + 0 
1558 : 90 02 __ BCC $155c ; (divmod + 78)
155a : e5 03 __ SBC WORK + 0 
155c : 26 1b __ ROL ACCU + 0 
155e : 26 1c __ ROL ACCU + 1 
1560 : ca __ __ DEX
1561 : d0 f2 __ BNE $1555 ; (divmod + 71)
1563 : 85 05 __ STA WORK + 2 
1565 : 60 __ __ RTS
1566 : a9 00 __ LDA #$00
1568 : 85 05 __ STA WORK + 2 
156a : 85 06 __ STA WORK + 3 
156c : 84 02 __ STY $02 
156e : a0 10 __ LDY #$10
1570 : 18 __ __ CLC
1571 : 26 1b __ ROL ACCU + 0 
1573 : 26 1c __ ROL ACCU + 1 
1575 : 26 05 __ ROL WORK + 2 
1577 : 26 06 __ ROL WORK + 3 
1579 : 38 __ __ SEC
157a : a5 05 __ LDA WORK + 2 
157c : e5 03 __ SBC WORK + 0 
157e : aa __ __ TAX
157f : a5 06 __ LDA WORK + 3 
1581 : e5 04 __ SBC WORK + 1 
1583 : 90 04 __ BCC $1589 ; (divmod + 123)
1585 : 86 05 __ STX WORK + 2 
1587 : 85 06 __ STA WORK + 3 
1589 : 88 __ __ DEY
158a : d0 e5 __ BNE $1571 ; (divmod + 99)
158c : 26 1b __ ROL ACCU + 0 
158e : 26 1c __ ROL ACCU + 1 
1590 : a4 02 __ LDY $02 
1592 : 60 __ __ RTS
--------------------------------------------------------------------
malloc: ; malloc
1593 : 18 __ __ CLC
1594 : a5 1b __ LDA ACCU + 0 
1596 : 69 02 __ ADC #$02
1598 : 85 03 __ STA WORK + 0 
159a : a5 1c __ LDA ACCU + 1 
159c : 69 00 __ ADC #$00
159e : 85 04 __ STA WORK + 1 
15a0 : ad fe 16 LDA $16fe ; (HeapNode + 2)
15a3 : d0 1f __ BNE $15c4 ; (malloc + 49)
15a5 : a9 00 __ LDA #$00
15a7 : 8d f0 17 STA $17f0 
15aa : 8d f1 17 STA $17f1 
15ad : ee fe 16 INC $16fe ; (HeapNode + 2)
15b0 : a9 f0 __ LDA #$f0
15b2 : 8d fc 16 STA $16fc ; (HeapNode + 0)
15b5 : a9 17 __ LDA #$17
15b7 : 8d fd 16 STA $16fd ; (HeapNode + 1)
15ba : a9 00 __ LDA #$00
15bc : 8d f2 17 STA $17f2 
15bf : a9 90 __ LDA #$90
15c1 : 8d f3 17 STA $17f3 
15c4 : a9 fc __ LDA #$fc
15c6 : a2 16 __ LDX #$16
15c8 : 85 1d __ STA ACCU + 2 
15ca : 86 1e __ STX ACCU + 3 
15cc : 18 __ __ CLC
15cd : a0 00 __ LDY #$00
15cf : b1 1d __ LDA (ACCU + 2),y 
15d1 : 85 1b __ STA ACCU + 0 
15d3 : 65 03 __ ADC WORK + 0 
15d5 : 85 05 __ STA WORK + 2 
15d7 : c8 __ __ INY
15d8 : b1 1d __ LDA (ACCU + 2),y 
15da : 85 1c __ STA ACCU + 1 
15dc : f0 18 __ BEQ $15f6 ; (malloc + 99)
15de : 65 04 __ ADC WORK + 1 
15e0 : 85 06 __ STA WORK + 3 
15e2 : a0 02 __ LDY #$02
15e4 : b1 1b __ LDA (ACCU + 0),y 
15e6 : c5 05 __ CMP WORK + 2 
15e8 : c8 __ __ INY
15e9 : b1 1b __ LDA (ACCU + 0),y 
15eb : e5 06 __ SBC WORK + 3 
15ed : b0 08 __ BCS $15f7 ; (malloc + 100)
15ef : a5 1b __ LDA ACCU + 0 
15f1 : a6 1c __ LDX ACCU + 1 
15f3 : 4c c8 15 JMP $15c8 ; (malloc + 53)
15f6 : 60 __ __ RTS
15f7 : 18 __ __ CLC
15f8 : a5 05 __ LDA WORK + 2 
15fa : 69 03 __ ADC #$03
15fc : 29 fc __ AND #$fc
15fe : 85 07 __ STA WORK + 4 
1600 : a5 06 __ LDA WORK + 3 
1602 : 69 00 __ ADC #$00
1604 : 85 08 __ STA WORK + 5 
1606 : a0 02 __ LDY #$02
1608 : a5 07 __ LDA WORK + 4 
160a : d1 1b __ CMP (ACCU + 0),y 
160c : d0 15 __ BNE $1623 ; (malloc + 144)
160e : c8 __ __ INY
160f : a5 08 __ LDA WORK + 5 
1611 : d1 1b __ CMP (ACCU + 0),y 
1613 : d0 0e __ BNE $1623 ; (malloc + 144)
1615 : a0 00 __ LDY #$00
1617 : b1 1b __ LDA (ACCU + 0),y 
1619 : 91 1d __ STA (ACCU + 2),y 
161b : c8 __ __ INY
161c : b1 1b __ LDA (ACCU + 0),y 
161e : 91 1d __ STA (ACCU + 2),y 
1620 : 4c 40 16 JMP $1640 ; (malloc + 173)
1623 : a0 00 __ LDY #$00
1625 : b1 1b __ LDA (ACCU + 0),y 
1627 : 91 07 __ STA (WORK + 4),y 
1629 : a5 07 __ LDA WORK + 4 
162b : 91 1d __ STA (ACCU + 2),y 
162d : c8 __ __ INY
162e : b1 1b __ LDA (ACCU + 0),y 
1630 : 91 07 __ STA (WORK + 4),y 
1632 : a5 08 __ LDA WORK + 5 
1634 : 91 1d __ STA (ACCU + 2),y 
1636 : c8 __ __ INY
1637 : b1 1b __ LDA (ACCU + 0),y 
1639 : 91 07 __ STA (WORK + 4),y 
163b : c8 __ __ INY
163c : b1 1b __ LDA (ACCU + 0),y 
163e : 91 07 __ STA (WORK + 4),y 
1640 : a0 00 __ LDY #$00
1642 : a5 05 __ LDA WORK + 2 
1644 : 91 1b __ STA (ACCU + 0),y 
1646 : c8 __ __ INY
1647 : a5 06 __ LDA WORK + 3 
1649 : 91 1b __ STA (ACCU + 0),y 
164b : a5 1b __ LDA ACCU + 0 
164d : 09 02 __ ORA #$02
164f : 85 1b __ STA ACCU + 0 
1651 : 60 __ __ RTS
--------------------------------------------------------------------
free: ; free
1652 : a5 1b __ LDA ACCU + 0 
1654 : 29 fc __ AND #$fc
1656 : 85 1b __ STA ACCU + 0 
1658 : 05 1c __ ORA ACCU + 1 
165a : d0 01 __ BNE $165d ; (free + 11)
165c : 60 __ __ RTS
165d : 18 __ __ CLC
165e : a0 00 __ LDY #$00
1660 : b1 1b __ LDA (ACCU + 0),y 
1662 : 69 03 __ ADC #$03
1664 : 29 fc __ AND #$fc
1666 : 85 1d __ STA ACCU + 2 
1668 : c8 __ __ INY
1669 : b1 1b __ LDA (ACCU + 0),y 
166b : 69 00 __ ADC #$00
166d : 85 1e __ STA ACCU + 3 
166f : a9 fc __ LDA #$fc
1671 : a2 16 __ LDX #$16
1673 : 85 05 __ STA WORK + 2 
1675 : 86 06 __ STX WORK + 3 
1677 : a0 01 __ LDY #$01
1679 : b1 05 __ LDA (WORK + 2),y 
167b : f0 28 __ BEQ $16a5 ; (free + 83)
167d : aa __ __ TAX
167e : 88 __ __ DEY
167f : b1 05 __ LDA (WORK + 2),y 
1681 : e4 1e __ CPX ACCU + 3 
1683 : 90 ee __ BCC $1673 ; (free + 33)
1685 : d0 1e __ BNE $16a5 ; (free + 83)
1687 : c5 1d __ CMP ACCU + 2 
1689 : 90 e8 __ BCC $1673 ; (free + 33)
168b : d0 18 __ BNE $16a5 ; (free + 83)
168d : a0 00 __ LDY #$00
168f : b1 1d __ LDA (ACCU + 2),y 
1691 : 91 1b __ STA (ACCU + 0),y 
1693 : c8 __ __ INY
1694 : b1 1d __ LDA (ACCU + 2),y 
1696 : 91 1b __ STA (ACCU + 0),y 
1698 : c8 __ __ INY
1699 : b1 1d __ LDA (ACCU + 2),y 
169b : 91 1b __ STA (ACCU + 0),y 
169d : c8 __ __ INY
169e : b1 1d __ LDA (ACCU + 2),y 
16a0 : 91 1b __ STA (ACCU + 0),y 
16a2 : 4c ba 16 JMP $16ba ; (free + 104)
16a5 : a0 00 __ LDY #$00
16a7 : b1 05 __ LDA (WORK + 2),y 
16a9 : 91 1b __ STA (ACCU + 0),y 
16ab : c8 __ __ INY
16ac : b1 05 __ LDA (WORK + 2),y 
16ae : 91 1b __ STA (ACCU + 0),y 
16b0 : c8 __ __ INY
16b1 : a5 1d __ LDA ACCU + 2 
16b3 : 91 1b __ STA (ACCU + 0),y 
16b5 : c8 __ __ INY
16b6 : a5 1e __ LDA ACCU + 3 
16b8 : 91 1b __ STA (ACCU + 0),y 
16ba : a0 02 __ LDY #$02
16bc : b1 05 __ LDA (WORK + 2),y 
16be : c5 1b __ CMP ACCU + 0 
16c0 : d0 1d __ BNE $16df ; (free + 141)
16c2 : c8 __ __ INY
16c3 : b1 05 __ LDA (WORK + 2),y 
16c5 : c5 1c __ CMP ACCU + 1 
16c7 : d0 16 __ BNE $16df ; (free + 141)
16c9 : a0 00 __ LDY #$00
16cb : b1 1b __ LDA (ACCU + 0),y 
16cd : 91 05 __ STA (WORK + 2),y 
16cf : c8 __ __ INY
16d0 : b1 1b __ LDA (ACCU + 0),y 
16d2 : 91 05 __ STA (WORK + 2),y 
16d4 : c8 __ __ INY
16d5 : b1 1b __ LDA (ACCU + 0),y 
16d7 : 91 05 __ STA (WORK + 2),y 
16d9 : c8 __ __ INY
16da : b1 1b __ LDA (ACCU + 0),y 
16dc : 91 05 __ STA (WORK + 2),y 
16de : 60 __ __ RTS
16df : a0 00 __ LDY #$00
16e1 : a5 1b __ LDA ACCU + 0 
16e3 : 91 05 __ STA (WORK + 2),y 
16e5 : c8 __ __ INY
16e6 : a5 1c __ LDA ACCU + 1 
16e8 : 91 05 __ STA (WORK + 2),y 
16ea : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
16eb : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
giocharmap:
16ec : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
opp::cout:
16ed : __ __ __ BYT 00 00 00 00 00 00 00                            : .......
--------------------------------------------------------------------
vspriteScreen:
16f4 : __ __ __ BSS	2
--------------------------------------------------------------------
joyy:
16f6 : __ __ __ BSS	2
--------------------------------------------------------------------
joyx:
16f8 : __ __ __ BSS	2
--------------------------------------------------------------------
joyb:
16fa : __ __ __ BSS	2
--------------------------------------------------------------------
HeapNode:
16fc : __ __ __ BSS	4
--------------------------------------------------------------------
sp_data:
1700 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 28 a4 20 2a : ............(. *
1710 : __ __ __ BYT a9 60 0a a5 60 0a a5 60 0a aa 60 02 ef 40 02 ef : .`..`..`..`..@..
1720 : __ __ __ BYT 80 02 aa a0 0a 85 90 0a a5 50 0a a6 60 02 a9 40 : .........P..`..@
1730 : __ __ __ BYT 01 55 40 00 55 00 00 28 00 00 00 00 00 00 00 98 : .U@.U..(........
1740 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 38 00 38 24 10 48 20 : .........8.8$.H 
1750 : __ __ __ BYT 10 08 39 87 18 01 01 00 01 00 00 00 28 00 04 6c : ..9.........(..l
1760 : __ __ __ BYT 20 04 00 20 08 38 10 08 10 10 08 92 10 04 7c 20 :  .. .8........| 
1770 : __ __ __ BYT 04 00 20 03 81 c0 00 7e 00 00 00 00 00 00 00 10 : .. ....~........
--------------------------------------------------------------------
mul40:
1780 : __ __ __ BYT 00 00 28 00 50 00 78 00 a0 00 c8 00 f0 00 18 01 : ..(.P.x.........
1790 : __ __ __ BYT 40 01 68 01 90 01 b8 01 e0 01 08 02 30 02 58 02 : @.h.........0.X.
17a0 : __ __ __ BYT 80 02 a8 02 d0 02 f8 02 20 03 48 03 70 03 98 03 : ........ .H.p...
17b0 : __ __ __ BYT c0 03                                           : ..
--------------------------------------------------------------------
bitshift:
17b2 : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
17c2 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
17d2 : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
17e2 : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........

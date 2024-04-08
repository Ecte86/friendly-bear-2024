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
080e : 8e ee 15 STX $15ee ; (spentry + 0)
0811 : a9 ea __ LDA #$ea
0813 : 85 19 __ STA IP + 0 
0815 : a9 16 __ LDA #$16
0817 : 85 1a __ STA IP + 1 
0819 : 38 __ __ SEC
081a : a9 16 __ LDA #$16
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
0830 : a9 ee __ LDA #$ee
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
0880 : a5 53 __ LDA T4 + 0 
0882 : 8d cd 9f STA $9fcd ; (main@stack + 0)
0885 : a5 54 __ LDA T4 + 1 
0887 : 8d ce 9f STA $9fce ; (main@stack + 1)
.s0:
088a : a9 f0 __ LDA #$f0
088c : 85 0d __ STA P0 
088e : a9 15 __ LDA #$15
0890 : 85 0e __ STA P1 
0892 : 20 2c 0f JSR $0f2c ; (opp::ios::+ios.s0 + 0)
0895 : a9 02 __ LDA #$02
0897 : 8d f0 15 STA $15f0 ; (opp::cout + 0)
089a : a9 d3 __ LDA #$d3
089c : 8d f9 9f STA $9ff9 ; (sstack + 0)
089f : a9 9f __ LDA #$9f
08a1 : 8d fa 9f STA $9ffa ; (sstack + 1)
08a4 : 20 c7 09 JSR $09c7 ; (BearGame::+BearGame.s0 + 0)
08a7 : 20 6e 0e JSR $0e6e ; (clrscr.s0 + 0)
.l3:
08aa : a9 d3 __ LDA #$d3
08ac : 85 0d __ STA P0 
08ae : a9 9f __ LDA #$9f
08b0 : 85 0e __ STA P1 
.l1008:
08b2 : 20 72 0e JSR $0e72 ; (BearGame::getGameState.s0 + 0)
08b5 : c9 02 __ CMP #$02
08b7 : f0 f9 __ BEQ $08b2 ; (main.l1008 + 0)
.s17:
08b9 : b0 ef __ BCS $08aa ; (main.l3 + 0)
.s19:
08bb : 09 00 __ ORA #$00
08bd : d0 46 __ BNE $0905 ; (main.s9 + 0)
.s6:
08bf : a9 03 __ LDA #$03
08c1 : 85 0e __ STA P1 
08c3 : 20 77 0e JSR $0e77 ; (iocharmap.s0 + 0)
08c6 : a9 00 __ LDA #$00
08c8 : 85 0d __ STA P0 
08ca : 85 0e __ STA P1 
08cc : 20 96 0e JSR $0e96 ; (gotoxy.s0 + 0)
08cf : a9 f0 __ LDA #$f0
08d1 : 85 11 __ STA P4 
08d3 : a9 15 __ LDA #$15
08d5 : 85 12 __ STA P5 
08d7 : a9 48 __ LDA #$48
08d9 : 85 13 __ STA P6 
08db : a9 0f __ LDA #$0f
08dd : 85 14 __ STA P7 
08df : 20 9f 0e JSR $0e9f ; (opp::ostream::operator<<.s0 + 0)
08e2 : a5 1b __ LDA ACCU + 0 
08e4 : 85 0e __ STA P1 
08e6 : a5 1c __ LDA ACCU + 1 
08e8 : 85 0f __ STA P2 
08ea : a9 0a __ LDA #$0a
08ec : 85 10 __ STA P3 
08ee : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
08f1 : a9 d3 __ LDA #$d3
08f3 : 8d fb 9f STA $9ffb ; (sstack + 2)
08f6 : a9 9f __ LDA #$9f
08f8 : 8d fc 9f STA $9ffc ; (sstack + 3)
08fb : 20 4e 0f JSR $0f4e ; (BearGame::setup.s0 + 0)
08fe : a9 01 __ LDA #$01
0900 : 8d d3 9f STA $9fd3 ; (bearGame + 0)
0903 : d0 a5 __ BNE $08aa ; (main.l3 + 0)
.s9:
0905 : a9 00 __ LDA #$00
0907 : 85 0d __ STA P0 
0909 : 85 0e __ STA P1 
090b : 20 96 0e JSR $0e96 ; (gotoxy.s0 + 0)
090e : a9 f0 __ LDA #$f0
0910 : 85 11 __ STA P4 
0912 : a9 15 __ LDA #$15
0914 : 85 12 __ STA P5 
0916 : a9 39 __ LDA #$39
0918 : 85 13 __ STA P6 
091a : a9 12 __ LDA #$12
091c : 85 14 __ STA P7 
091e : 20 9f 0e JSR $0e9f ; (opp::ostream::operator<<.s0 + 0)
0921 : a5 1b __ LDA ACCU + 0 
0923 : 85 53 __ STA T4 + 0 
0925 : a5 1c __ LDA ACCU + 1 
0927 : 85 54 __ STA T4 + 1 
0929 : a9 d3 __ LDA #$d3
092b : 85 0d __ STA P0 
092d : a9 9f __ LDA #$9f
092f : 85 0e __ STA P1 
0931 : 20 41 12 JSR $1241 ; (BearGame::getLevel.s0 + 0)
0934 : a5 53 __ LDA T4 + 0 
0936 : 8d fc 9f STA $9ffc ; (sstack + 3)
0939 : a5 54 __ LDA T4 + 1 
093b : 8d fd 9f STA $9ffd ; (sstack + 4)
093e : a5 1b __ LDA ACCU + 0 
0940 : 8d fe 9f STA $9ffe ; (sstack + 5)
0943 : a5 1c __ LDA ACCU + 1 
0945 : 8d ff 9f STA $9fff ; (sstack + 6)
0948 : 20 97 10 JSR $1097 ; (opp::ostream::operator<<.s0 + 0)
094b : a5 1b __ LDA ACCU + 0 
094d : 85 11 __ STA P4 
094f : a5 1c __ LDA ACCU + 1 
0951 : 85 12 __ STA P5 
0953 : a9 4d __ LDA #$4d
0955 : 85 13 __ STA P6 
0957 : a9 12 __ LDA #$12
0959 : 85 14 __ STA P7 
095b : 20 9f 0e JSR $0e9f ; (opp::ostream::operator<<.s0 + 0)
095e : a5 1b __ LDA ACCU + 0 
0960 : 85 53 __ STA T4 + 0 
0962 : a5 1c __ LDA ACCU + 1 
0964 : 85 54 __ STA T4 + 1 
0966 : a9 d9 __ LDA #$d9
0968 : 85 0d __ STA P0 
096a : a9 9f __ LDA #$9f
096c : 85 0e __ STA P1 
096e : 20 56 12 JSR $1256 ; (Score::getScore.s0 + 0)
0971 : a5 53 __ LDA T4 + 0 
0973 : 8d fc 9f STA $9ffc ; (sstack + 3)
0976 : a5 54 __ LDA T4 + 1 
0978 : 8d fd 9f STA $9ffd ; (sstack + 4)
097b : a5 1b __ LDA ACCU + 0 
097d : 8d fe 9f STA $9ffe ; (sstack + 5)
0980 : a5 1c __ LDA ACCU + 1 
0982 : 8d ff 9f STA $9fff ; (sstack + 6)
0985 : 20 97 10 JSR $1097 ; (opp::ostream::operator<<.s0 + 0)
0988 : a5 1b __ LDA ACCU + 0 
098a : 85 0e __ STA P1 
098c : a5 1c __ LDA ACCU + 1 
098e : 85 0f __ STA P2 
0990 : a9 0a __ LDA #$0a
0992 : 85 10 __ STA P3 
0994 : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
0997 : a9 f0 __ LDA #$f0
0999 : 85 11 __ STA P4 
099b : a9 15 __ LDA #$15
099d : 85 12 __ STA P5 
099f : a9 62 __ LDA #$62
09a1 : 85 13 __ STA P6 
09a3 : a9 12 __ LDA #$12
09a5 : 85 14 __ STA P7 
09a7 : 20 9f 0e JSR $0e9f ; (opp::ostream::operator<<.s0 + 0)
09aa : a5 1b __ LDA ACCU + 0 
09ac : 85 0e __ STA P1 
09ae : a5 1c __ LDA ACCU + 1 
09b0 : 85 0f __ STA P2 
09b2 : a9 0a __ LDA #$0a
09b4 : 85 10 __ STA P3 
09b6 : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
09b9 : a9 d3 __ LDA #$d3
09bb : 85 13 __ STA P6 
09bd : a9 9f __ LDA #$9f
09bf : 85 14 __ STA P7 
09c1 : 20 67 12 JSR $1267 ; (BearGame::play.s0 + 0)
09c4 : 4c aa 08 JMP $08aa ; (main.l3 + 0)
--------------------------------------------------------------------
BearGame::+BearGame: ; BearGame::+BearGame(const struct BearGame*)->void
.s0:
09c7 : ad f9 9f LDA $9ff9 ; (sstack + 0)
09ca : 85 4c __ STA T0 + 0 
09cc : 18 __ __ CLC
09cd : 69 06 __ ADC #$06
09cf : 85 17 __ STA P10 
09d1 : ad fa 9f LDA $9ffa ; (sstack + 1)
09d4 : 85 4d __ STA T0 + 1 
09d6 : 69 00 __ ADC #$00
09d8 : 85 18 __ STA P11 
09da : 20 86 0a JSR $0a86 ; (Score::+Score.s1000 + 0)
09dd : a9 01 __ LDA #$01
09df : a0 04 __ LDY #$04
09e1 : 91 4c __ STA (T0 + 0),y 
09e3 : a9 00 __ LDA #$00
09e5 : c8 __ __ INY
09e6 : 91 4c __ STA (T0 + 0),y 
09e8 : a0 0a __ LDY #$0a
09ea : 91 4c __ STA (T0 + 0),y 
09ec : c8 __ __ INY
09ed : 91 4c __ STA (T0 + 0),y 
09ef : a9 e9 __ LDA #$e9
09f1 : 85 17 __ STA P10 
09f3 : a9 9f __ LDA #$9f
09f5 : 85 18 __ STA P11 
09f7 : 20 86 0a JSR $0a86 ; (Score::+Score.s1000 + 0)
09fa : ad e9 9f LDA $9fe9 
09fd : a0 06 __ LDY #$06
09ff : 91 4c __ STA (T0 + 0),y 
0a01 : ad ea 9f LDA $9fea 
0a04 : c8 __ __ INY
0a05 : 91 4c __ STA (T0 + 0),y 
0a07 : ad eb 9f LDA $9feb 
0a0a : c8 __ __ INY
0a0b : 91 4c __ STA (T0 + 0),y 
0a0d : ad ec 9f LDA $9fec 
0a10 : c8 __ __ INY
0a11 : 91 4c __ STA (T0 + 0),y 
0a13 : a9 0c __ LDA #$0c
0a15 : 85 1b __ STA ACCU + 0 
0a17 : a9 00 __ LDA #$00
0a19 : 85 1c __ STA ACCU + 1 
0a1b : 20 96 14 JSR $1496 ; (malloc + 0)
0a1e : a5 1b __ LDA ACCU + 0 
0a20 : 85 4e __ STA T2 + 0 
0a22 : a5 1c __ LDA ACCU + 1 
0a24 : 85 4f __ STA T2 + 1 
0a26 : 05 1b __ ORA ACCU + 0 
0a28 : f0 0b __ BEQ $0a35 ; (BearGame::+BearGame.s3 + 0)
.s2:
0a2a : a5 1b __ LDA ACCU + 0 
0a2c : 85 0d __ STA P0 
0a2e : a5 1c __ LDA ACCU + 1 
0a30 : 85 0e __ STA P1 
0a32 : 20 df 0d JSR $0ddf ; (BearSprite::+BearSprite.s0 + 0)
.s3:
0a35 : a9 00 __ LDA #$00
0a37 : a8 __ __ TAY
0a38 : 91 4c __ STA (T0 + 0),y 
0a3a : c8 __ __ INY
0a3b : 91 4c __ STA (T0 + 0),y 
0a3d : a5 4e __ LDA T2 + 0 
0a3f : c8 __ __ INY
0a40 : 91 4c __ STA (T0 + 0),y 
0a42 : a5 4f __ LDA T2 + 1 
0a44 : c8 __ __ INY
0a45 : 91 4c __ STA (T0 + 0),y 
0a47 : a9 00 __ LDA #$00
0a49 : 85 0f __ STA P2 
0a4b : 85 1c __ STA ACCU + 1 
0a4d : 8d e7 9f STA $9fe7 
0a50 : 8d e8 9f STA $9fe8 
0a53 : 85 11 __ STA P4 
0a55 : 85 12 __ STA P5 
0a57 : a9 28 __ LDA #$28
0a59 : 85 13 __ STA P6 
0a5b : a9 19 __ LDA #$19
0a5d : 85 14 __ STA P7 
0a5f : a9 00 __ LDA #$00
0a61 : a0 0a __ LDY #$0a
0a63 : 84 1b __ STY ACCU + 0 
0a65 : 91 4c __ STA (T0 + 0),y 
0a67 : ad e8 9f LDA $9fe8 
0a6a : c8 __ __ INY
0a6b : 91 4c __ STA (T0 + 0),y 
0a6d : 20 96 14 JSR $1496 ; (malloc + 0)
0a70 : a5 1b __ LDA ACCU + 0 
0a72 : 85 0d __ STA P0 
0a74 : a0 0c __ LDY #$0c
0a76 : 91 4c __ STA (T0 + 0),y 
0a78 : a5 1c __ LDA ACCU + 1 
0a7a : 85 0e __ STA P1 
0a7c : c8 __ __ INY
0a7d : 91 4c __ STA (T0 + 0),y 
0a7f : a9 04 __ LDA #$04
0a81 : 85 10 __ STA P3 
0a83 : 4c 18 0e JMP $0e18 ; (cwin_init.s0 + 0)
--------------------------------------------------------------------
Score::+Score: ; Score::+Score(const struct Score*)->void
.s1000:
0a86 : 38 __ __ SEC
0a87 : a5 23 __ LDA SP + 0 
0a89 : e9 0a __ SBC #$0a
0a8b : 85 23 __ STA SP + 0 
0a8d : b0 02 __ BCS $0a91 ; (Score::+Score.s0 + 0)
0a8f : c6 24 __ DEC SP + 1 
.s0:
0a91 : a9 00 __ LDA #$00
0a93 : 85 1c __ STA ACCU + 1 
0a95 : a0 02 __ LDY #$02
0a97 : 91 17 __ STA (P10),y ; (this + 0)
0a99 : c8 __ __ INY
0a9a : 91 17 __ STA (P10),y ; (this + 0)
0a9c : a9 06 __ LDA #$06
0a9e : 85 1b __ STA ACCU + 0 
0aa0 : 20 96 14 JSR $1496 ; (malloc + 0)
0aa3 : a5 1b __ LDA ACCU + 0 
0aa5 : 85 4a __ STA T1 + 0 
0aa7 : a5 1c __ LDA ACCU + 1 
0aa9 : 85 4b __ STA T1 + 1 
0aab : 05 1b __ ORA ACCU + 0 
0aad : f0 1d __ BEQ $0acc ; (Score::+Score.s3 + 0)
.s2:
0aaf : a5 1b __ LDA ACCU + 0 
0ab1 : 85 13 __ STA P6 
0ab3 : 85 1f __ STA ADDR + 0 
0ab5 : a5 1c __ LDA ACCU + 1 
0ab7 : 85 14 __ STA P7 
0ab9 : 18 __ __ CLC
0aba : 69 ff __ ADC #$ff
0abc : 85 20 __ STA ADDR + 1 
0abe : a0 fe __ LDY #$fe
0ac0 : b1 1f __ LDA (ADDR + 0),y 
0ac2 : 85 15 __ STA P8 
0ac4 : c8 __ __ INY
0ac5 : b1 1f __ LDA (ADDR + 0),y 
0ac7 : 85 16 __ STA P9 
0ac9 : 20 5c 0b JSR $0b5c ; (ScoreType::*ScoreType.s0 + 0)
.s3:
0acc : a5 4a __ LDA T1 + 0 
0ace : a0 00 __ LDY #$00
0ad0 : 91 17 __ STA (P10),y ; (this + 0)
0ad2 : a5 4b __ LDA T1 + 1 
0ad4 : c8 __ __ INY
0ad5 : 91 17 __ STA (P10),y ; (this + 0)
0ad7 : 98 __ __ TYA
0ad8 : a0 04 __ LDY #$04
0ada : 91 23 __ STA (SP + 0),y 
0adc : a9 00 __ LDA #$00
0ade : c8 __ __ INY
0adf : 91 23 __ STA (SP + 0),y 
0ae1 : a9 64 __ LDA #$64
0ae3 : c8 __ __ INY
0ae4 : 91 23 __ STA (SP + 0),y 
0ae6 : a9 00 __ LDA #$00
0ae8 : c8 __ __ INY
0ae9 : 91 23 __ STA (SP + 0),y 
0aeb : a9 ef __ LDA #$ef
0aed : a0 02 __ LDY #$02
0aef : 91 23 __ STA (SP + 0),y 
0af1 : a9 9f __ LDA #$9f
0af3 : c8 __ __ INY
0af4 : 91 23 __ STA (SP + 0),y 
0af6 : a9 ed __ LDA #$ed
0af8 : 85 0d __ STA P0 
0afa : a9 9f __ LDA #$9f
0afc : 85 0e __ STA P1 
0afe : a9 46 __ LDA #$46
0b00 : 85 0f __ STA P2 
0b02 : a9 0d __ LDA #$0d
0b04 : 85 10 __ STA P3 
0b06 : 20 f1 0c JSR $0cf1 ; (opp::string::+string.s0 + 0)
0b09 : a9 ed __ LDA #$ed
0b0b : 85 0f __ STA P2 
0b0d : a9 9f __ LDA #$9f
0b0f : 85 10 __ STA P3 
0b11 : 18 __ __ CLC
0b12 : a5 23 __ LDA SP + 0 
0b14 : 69 08 __ ADC #$08
0b16 : 85 0d __ STA P0 
0b18 : a5 24 __ LDA SP + 1 
0b1a : 69 00 __ ADC #$00
0b1c : 85 0e __ STA P1 
0b1e : 20 58 0d JSR $0d58 ; (opp::string::+string.s0 + 0)
0b21 : 20 1c 0c JSR $0c1c ; (ScoreType::+ScoreType.s0 + 0)
0b24 : a9 ef __ LDA #$ef
0b26 : 85 13 __ STA P6 
0b28 : a9 9f __ LDA #$9f
0b2a : 85 14 __ STA P7 
0b2c : a0 00 __ LDY #$00
0b2e : b1 17 __ LDA (P10),y ; (this + 0)
0b30 : 85 11 __ STA P4 
0b32 : c8 __ __ INY
0b33 : b1 17 __ LDA (P10),y ; (this + 0)
0b35 : 85 12 __ STA P5 
0b37 : 20 a4 0d JSR $0da4 ; (ScoreType::operator=.s0 + 0)
0b3a : a9 f3 __ LDA #$f3
0b3c : 85 0d __ STA P0 
0b3e : a9 9f __ LDA #$9f
0b40 : 85 0e __ STA P1 
0b42 : 20 e3 0c JSR $0ce3 ; (opp::string::~string.s0 + 0)
0b45 : a9 ed __ LDA #$ed
0b47 : 85 0d __ STA P0 
0b49 : a9 9f __ LDA #$9f
0b4b : 85 0e __ STA P1 
0b4d : 20 e3 0c JSR $0ce3 ; (opp::string::~string.s0 + 0)
.s1001:
0b50 : 18 __ __ CLC
0b51 : a5 23 __ LDA SP + 0 
0b53 : 69 0a __ ADC #$0a
0b55 : 85 23 __ STA SP + 0 
0b57 : 90 02 __ BCC $0b5b ; (Score::+Score.s1001 + 11)
0b59 : e6 24 __ INC SP + 1 
0b5b : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::*ScoreType: ; ScoreType::*ScoreType(struct ScoreType*,const struct ScoreType*)->void
.s0:
0b5c : a5 13 __ LDA P6 ; (this + 0)
0b5e : 85 44 __ STA T0 + 0 
0b60 : 4c 79 0b JMP $0b79 ; (ScoreType::*ScoreType.l26 + 0)
.s2:
0b63 : a5 13 __ LDA P6 ; (this + 0)
0b65 : 85 11 __ STA P4 
0b67 : 18 __ __ CLC
0b68 : 69 06 __ ADC #$06
0b6a : 85 44 __ STA T0 + 0 
0b6c : 85 13 __ STA P6 ; (this + 0)
0b6e : a5 14 __ LDA P7 ; (this + 1)
0b70 : 85 12 __ STA P5 
0b72 : 69 00 __ ADC #$00
0b74 : 85 14 __ STA P7 ; (this + 1)
0b76 : 20 86 0b JSR $0b86 ; (ScoreType::+ScoreType.s0 + 0)
.l26:
0b79 : a5 14 __ LDA P7 ; (this + 1)
0b7b : c5 16 __ CMP P9 ; (end + 1)
0b7d : d0 e4 __ BNE $0b63 ; (ScoreType::*ScoreType.s2 + 0)
.s1002:
0b7f : a5 44 __ LDA T0 + 0 
0b81 : c5 15 __ CMP P8 ; (end + 0)
0b83 : d0 de __ BNE $0b63 ; (ScoreType::*ScoreType.s2 + 0)
.s1001:
0b85 : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::+ScoreType: ; ScoreType::+ScoreType(const struct ScoreType*)->void
.s0:
0b86 : a9 00 __ LDA #$00
0b88 : a8 __ __ TAY
0b89 : 91 11 __ STA (P4),y ; (this + 0)
0b8b : c8 __ __ INY
0b8c : 91 11 __ STA (P4),y ; (this + 0)
0b8e : c8 __ __ INY
0b8f : 91 11 __ STA (P4),y ; (this + 0)
0b91 : c8 __ __ INY
0b92 : 91 11 __ STA (P4),y ; (this + 0)
0b94 : 18 __ __ CLC
0b95 : a5 11 __ LDA P4 ; (this + 0)
0b97 : 69 04 __ ADC #$04
0b99 : 85 0d __ STA P0 
0b9b : a5 12 __ LDA P5 ; (this + 1)
0b9d : 69 00 __ ADC #$00
0b9f : 85 0e __ STA P1 
0ba1 : a9 00 __ LDA #$00
0ba3 : c8 __ __ INY
0ba4 : 91 11 __ STA (P4),y ; (this + 0)
0ba6 : c8 __ __ INY
0ba7 : 91 11 __ STA (P4),y ; (this + 0)
0ba9 : a9 1b __ LDA #$1b
0bab : 85 0f __ STA P2 
0bad : a9 0c __ LDA #$0c
0baf : 85 10 __ STA P3 
0bb1 : 4c b4 0b JMP $0bb4 ; (opp::string::operator=.s0 + 0)
--------------------------------------------------------------------
opp::string::operator=: ; opp::string::operator=(const struct opp::string*,const u8*)->struct opp::string&
.s0:
0bb4 : a0 00 __ LDY #$00
0bb6 : b1 0d __ LDA (P0),y ; (this + 0)
0bb8 : 85 1b __ STA ACCU + 0 
0bba : c8 __ __ INY
0bbb : b1 0d __ LDA (P0),y ; (this + 0)
0bbd : 85 1c __ STA ACCU + 1 
0bbf : 20 55 15 JSR $1555 ; (free + 0)
0bc2 : a5 10 __ LDA P3 ; (s + 1)
0bc4 : 05 0f __ ORA P2 ; (s + 0)
0bc6 : f0 0e __ BEQ $0bd6 ; (opp::string::operator=.s1006 + 0)
.s1:
0bc8 : a0 00 __ LDY #$00
0bca : f0 01 __ BEQ $0bcd ; (opp::string::operator=.l5 + 0)
.s6:
0bcc : c8 __ __ INY
.l5:
0bcd : b1 0f __ LDA (P2),y ; (s + 0)
0bcf : d0 fb __ BNE $0bcc ; (opp::string::operator=.s6 + 0)
.s7:
0bd1 : 98 __ __ TYA
0bd2 : d0 12 __ BNE $0be6 ; (opp::string::operator=.s9 + 0)
.s10:
0bd4 : a9 00 __ LDA #$00
.s1006:
0bd6 : a8 __ __ TAY
0bd7 : 91 0d __ STA (P0),y ; (this + 0)
0bd9 : a0 01 __ LDY #$01
0bdb : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0bdd : a5 0d __ LDA P0 ; (this + 0)
0bdf : 85 1b __ STA ACCU + 0 
0be1 : a5 0e __ LDA P1 ; (this + 1)
0be3 : 85 1c __ STA ACCU + 1 
0be5 : 60 __ __ RTS
.s9:
0be6 : 85 43 __ STA T0 + 0 
0be8 : 18 __ __ CLC
0be9 : 69 02 __ ADC #$02
0beb : 85 1b __ STA ACCU + 0 
0bed : a9 00 __ LDA #$00
0bef : 2a __ __ ROL
0bf0 : 85 1c __ STA ACCU + 1 
0bf2 : 20 96 14 JSR $1496 ; (malloc + 0)
0bf5 : a5 43 __ LDA T0 + 0 
0bf7 : a0 00 __ LDY #$00
0bf9 : 91 1b __ STA (ACCU + 0),y 
0bfb : a5 1b __ LDA ACCU + 0 
0bfd : 91 0d __ STA (P0),y ; (this + 0)
0bff : a5 1c __ LDA ACCU + 1 
0c01 : c8 __ __ INY
0c02 : 91 0d __ STA (P0),y ; (this + 0)
0c04 : e6 43 __ INC T0 + 0 
0c06 : f0 d5 __ BEQ $0bdd ; (opp::string::operator=.s1001 + 0)
.s18:
0c08 : e6 1b __ INC ACCU + 0 
0c0a : d0 02 __ BNE $0c0e ; (opp::string::operator=.s18 + 6)
0c0c : e6 1c __ INC ACCU + 1 
0c0e : 88 __ __ DEY
.l1004:
0c0f : b1 0f __ LDA (P2),y ; (s + 0)
0c11 : 91 1b __ STA (ACCU + 0),y 
0c13 : c8 __ __ INY
0c14 : c4 43 __ CPY T0 + 0 
0c16 : 90 f7 __ BCC $0c0f ; (opp::string::operator=.l1004 + 0)
0c18 : 4c dd 0b JMP $0bdd ; (opp::string::operator=.s1001 + 0)
--------------------------------------------------------------------
0c1b : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
ScoreType::+ScoreType: ; ScoreType::+ScoreType(const struct ScoreType*,bool,bool,i16,struct opp::string)->void
.s0:
0c1c : a0 02 __ LDY #$02
0c1e : b1 23 __ LDA (SP + 0),y 
0c20 : 85 48 __ STA T0 + 0 
0c22 : 18 __ __ CLC
0c23 : 69 04 __ ADC #$04
0c25 : 85 0d __ STA P0 ; (this + 0)
0c27 : c8 __ __ INY
0c28 : b1 23 __ LDA (SP + 0),y 
0c2a : 85 49 __ STA T0 + 1 
0c2c : 69 00 __ ADC #$00
0c2e : 85 0e __ STA P1 ; (this + 1)
0c30 : a9 00 __ LDA #$00
0c32 : c8 __ __ INY
0c33 : 91 48 __ STA (T0 + 0),y 
0c35 : c8 __ __ INY
0c36 : 91 48 __ STA (T0 + 0),y 
0c38 : 88 __ __ DEY
0c39 : b1 23 __ LDA (SP + 0),y 
0c3b : a0 00 __ LDY #$00
0c3d : 91 48 __ STA (T0 + 0),y 
0c3f : a0 05 __ LDY #$05
0c41 : b1 23 __ LDA (SP + 0),y 
0c43 : a0 01 __ LDY #$01
0c45 : 91 48 __ STA (T0 + 0),y 
0c47 : a0 06 __ LDY #$06
0c49 : b1 23 __ LDA (SP + 0),y 
0c4b : a0 02 __ LDY #$02
0c4d : 91 48 __ STA (T0 + 0),y 
0c4f : a0 07 __ LDY #$07
0c51 : b1 23 __ LDA (SP + 0),y 
0c53 : a0 03 __ LDY #$03
0c55 : 91 48 __ STA (T0 + 0),y 
0c57 : 18 __ __ CLC
0c58 : a5 23 __ LDA SP + 0 
0c5a : 69 08 __ ADC #$08
0c5c : 85 0f __ STA P2 ; (isAchievement + 0)
0c5e : a5 24 __ LDA SP + 1 
0c60 : 69 00 __ ADC #$00
0c62 : 85 10 __ STA P3 ; (isAchieved + 0)
0c64 : 20 72 0c JSR $0c72 ; (opp::string::operator=.s0 + 0)
0c67 : a5 0f __ LDA P2 ; (isAchievement + 0)
0c69 : 85 0d __ STA P0 ; (this + 0)
0c6b : a5 10 __ LDA P3 ; (isAchieved + 0)
0c6d : 85 0e __ STA P1 ; (this + 1)
0c6f : 4c e3 0c JMP $0ce3 ; (opp::string::~string.s0 + 0)
--------------------------------------------------------------------
opp::string::operator=: ; opp::string::operator=(const struct opp::string*,const struct opp::string&)->struct opp::string&
.s0:
0c72 : a0 00 __ LDY #$00
0c74 : b1 0d __ LDA (P0),y ; (this + 0)
0c76 : aa __ __ TAX
0c77 : b1 0f __ LDA (P2),y ; (s + 0)
0c79 : 85 46 __ STA T3 + 0 
0c7b : c8 __ __ INY
0c7c : b1 0f __ LDA (P2),y ; (s + 0)
0c7e : 85 47 __ STA T3 + 1 
0c80 : d1 0d __ CMP (P0),y ; (this + 0)
0c82 : f0 04 __ BEQ $0c88 ; (opp::string::operator=.s1004 + 0)
.s1008:
0c84 : 8a __ __ TXA
0c85 : 4c 8d 0c JMP $0c8d ; (opp::string::operator=.s1 + 0)
.s1004:
0c88 : 8a __ __ TXA
0c89 : e4 46 __ CPX T3 + 0 
0c8b : f0 4d __ BEQ $0cda ; (opp::string::operator=.s1001 + 0)
.s1:
0c8d : 85 1b __ STA ACCU + 0 
0c8f : b1 0d __ LDA (P0),y ; (this + 0)
0c91 : 85 1c __ STA ACCU + 1 
0c93 : 20 55 15 JSR $1555 ; (free + 0)
0c96 : a5 46 __ LDA T3 + 0 
0c98 : 05 47 __ ORA T3 + 1 
0c9a : d0 09 __ BNE $0ca5 ; (opp::string::operator=.s4 + 0)
.s5:
0c9c : a8 __ __ TAY
0c9d : 91 0d __ STA (P0),y ; (this + 0)
0c9f : a0 01 __ LDY #$01
0ca1 : 91 0d __ STA (P0),y ; (this + 0)
0ca3 : d0 35 __ BNE $0cda ; (opp::string::operator=.s1001 + 0)
.s4:
0ca5 : a0 00 __ LDY #$00
0ca7 : b1 46 __ LDA (T3 + 0),y 
0ca9 : 18 __ __ CLC
0caa : 69 02 __ ADC #$02
0cac : 85 43 __ STA T1 + 0 
0cae : 85 1b __ STA ACCU + 0 
0cb0 : 98 __ __ TYA
0cb1 : 2a __ __ ROL
0cb2 : 85 1c __ STA ACCU + 1 
0cb4 : 20 96 14 JSR $1496 ; (malloc + 0)
0cb7 : a5 1b __ LDA ACCU + 0 
0cb9 : a0 00 __ LDY #$00
0cbb : 91 0d __ STA (P0),y ; (this + 0)
0cbd : a5 1c __ LDA ACCU + 1 
0cbf : c8 __ __ INY
0cc0 : 91 0d __ STA (P0),y ; (this + 0)
0cc2 : a5 43 __ LDA T1 + 0 
0cc4 : f0 14 __ BEQ $0cda ; (opp::string::operator=.s1001 + 0)
.s13:
0cc6 : 88 __ __ DEY
0cc7 : b1 0f __ LDA (P2),y ; (s + 0)
0cc9 : 85 44 __ STA T2 + 0 
0ccb : c8 __ __ INY
0ccc : b1 0f __ LDA (P2),y ; (s + 0)
0cce : 85 45 __ STA T2 + 1 
0cd0 : 88 __ __ DEY
.l1006:
0cd1 : b1 44 __ LDA (T2 + 0),y 
0cd3 : 91 1b __ STA (ACCU + 0),y 
0cd5 : c8 __ __ INY
0cd6 : c4 43 __ CPY T1 + 0 
0cd8 : 90 f7 __ BCC $0cd1 ; (opp::string::operator=.l1006 + 0)
.s1001:
0cda : a5 0d __ LDA P0 ; (this + 0)
0cdc : 85 1b __ STA ACCU + 0 
0cde : a5 0e __ LDA P1 ; (this + 1)
0ce0 : 85 1c __ STA ACCU + 1 
0ce2 : 60 __ __ RTS
--------------------------------------------------------------------
opp::string::~string: ; opp::string::~string(const struct opp::string*)->void
.s0:
0ce3 : a0 00 __ LDY #$00
0ce5 : b1 0d __ LDA (P0),y ; (this + 0)
0ce7 : 85 1b __ STA ACCU + 0 
0ce9 : c8 __ __ INY
0cea : b1 0d __ LDA (P0),y ; (this + 0)
0cec : 85 1c __ STA ACCU + 1 
0cee : 4c 55 15 JMP $1555 ; (free + 0)
--------------------------------------------------------------------
opp::string::+string: ; opp::string::+string(const struct opp::string*,const u8*)->void
.s0:
0cf1 : a5 10 __ LDA P3 ; (s + 1)
0cf3 : 05 0f __ ORA P2 ; (s + 0)
0cf5 : f0 0e __ BEQ $0d05 ; (opp::string::+string.s56 + 0)
.s1:
0cf7 : a0 00 __ LDY #$00
0cf9 : b1 0f __ LDA (P2),y ; (s + 0)
0cfb : f0 05 __ BEQ $0d02 ; (opp::string::+string.s7 + 0)
.l6:
0cfd : c8 __ __ INY
0cfe : b1 0f __ LDA (P2),y ; (s + 0)
0d00 : d0 fb __ BNE $0cfd ; (opp::string::+string.l6 + 0)
.s7:
0d02 : 98 __ __ TYA
0d03 : d0 09 __ BNE $0d0e ; (opp::string::+string.s9 + 0)
.s56:
0d05 : a9 00 __ LDA #$00
0d07 : a8 __ __ TAY
0d08 : 91 0d __ STA (P0),y ; (this + 0)
0d0a : c8 __ __ INY
0d0b : 91 0d __ STA (P0),y ; (this + 0)
0d0d : 60 __ __ RTS
.s9:
0d0e : 85 43 __ STA T1 + 0 
0d10 : 18 __ __ CLC
0d11 : 69 02 __ ADC #$02
0d13 : 85 1b __ STA ACCU + 0 
0d15 : a9 00 __ LDA #$00
0d17 : 2a __ __ ROL
0d18 : 85 1c __ STA ACCU + 1 
0d1a : 20 96 14 JSR $1496 ; (malloc + 0)
0d1d : a5 43 __ LDA T1 + 0 
0d1f : a0 00 __ LDY #$00
0d21 : 91 1b __ STA (ACCU + 0),y 
0d23 : a5 1b __ LDA ACCU + 0 
0d25 : 91 0d __ STA (P0),y ; (this + 0)
0d27 : a5 1c __ LDA ACCU + 1 
0d29 : c8 __ __ INY
0d2a : 91 0d __ STA (P0),y ; (this + 0)
0d2c : 18 __ __ CLC
0d2d : a5 43 __ LDA T1 + 0 
0d2f : 69 01 __ ADC #$01
0d31 : f0 12 __ BEQ $0d45 ; (opp::string::+string.s1001 + 0)
.s17:
0d33 : 85 1d __ STA ACCU + 2 
0d35 : e6 1b __ INC ACCU + 0 
0d37 : d0 02 __ BNE $0d3b ; (opp::string::+string.s17 + 8)
0d39 : e6 1c __ INC ACCU + 1 
0d3b : 88 __ __ DEY
.l1004:
0d3c : b1 0f __ LDA (P2),y ; (s + 0)
0d3e : 91 1b __ STA (ACCU + 0),y 
0d40 : c8 __ __ INY
0d41 : c4 1d __ CPY ACCU + 2 
0d43 : 90 f7 __ BCC $0d3c ; (opp::string::+string.l1004 + 0)
.s1001:
0d45 : 60 __ __ RTS
--------------------------------------------------------------------
0d46 : __ __ __ BYT 47 6f 74 20 6f 66 66 20 73 63 72 65 65 6e 21 3f : Got off screen!?
0d56 : __ __ __ BYT 21 00                                           : !.
--------------------------------------------------------------------
opp::string::+string: ; opp::string::+string(const struct opp::string*,const struct opp::string&)->void
.s0:
0d58 : a0 00 __ LDY #$00
0d5a : b1 0f __ LDA (P2),y ; (s + 0)
0d5c : 85 45 __ STA T2 + 0 
0d5e : c8 __ __ INY
0d5f : b1 0f __ LDA (P2),y ; (s + 0)
0d61 : 85 46 __ STA T2 + 1 
0d63 : 05 45 __ ORA T2 + 0 
0d65 : d0 08 __ BNE $0d6f ; (opp::string::+string.s1 + 0)
.s2:
0d67 : a8 __ __ TAY
0d68 : 91 0d __ STA (P0),y ; (this + 0)
0d6a : a0 01 __ LDY #$01
0d6c : 91 0d __ STA (P0),y ; (this + 0)
0d6e : 60 __ __ RTS
.s1:
0d6f : 88 __ __ DEY
0d70 : b1 45 __ LDA (T2 + 0),y 
0d72 : 18 __ __ CLC
0d73 : 69 02 __ ADC #$02
0d75 : 85 45 __ STA T2 + 0 
0d77 : 85 1b __ STA ACCU + 0 
0d79 : 98 __ __ TYA
0d7a : 2a __ __ ROL
0d7b : 85 1c __ STA ACCU + 1 
0d7d : 20 96 14 JSR $1496 ; (malloc + 0)
0d80 : a5 1b __ LDA ACCU + 0 
0d82 : a0 00 __ LDY #$00
0d84 : 91 0d __ STA (P0),y ; (this + 0)
0d86 : a5 1c __ LDA ACCU + 1 
0d88 : c8 __ __ INY
0d89 : 91 0d __ STA (P0),y ; (this + 0)
0d8b : a5 45 __ LDA T2 + 0 
0d8d : f0 14 __ BEQ $0da3 ; (opp::string::+string.s1001 + 0)
.s9:
0d8f : 88 __ __ DEY
0d90 : b1 0f __ LDA (P2),y ; (s + 0)
0d92 : 85 43 __ STA T0 + 0 
0d94 : c8 __ __ INY
0d95 : b1 0f __ LDA (P2),y ; (s + 0)
0d97 : 85 44 __ STA T0 + 1 
0d99 : 88 __ __ DEY
.l1004:
0d9a : b1 43 __ LDA (T0 + 0),y 
0d9c : 91 1b __ STA (ACCU + 0),y 
0d9e : c8 __ __ INY
0d9f : c4 45 __ CPY T2 + 0 
0da1 : 90 f7 __ BCC $0d9a ; (opp::string::+string.l1004 + 0)
.s1001:
0da3 : 60 __ __ RTS
--------------------------------------------------------------------
ScoreType::operator=: ; ScoreType::operator=(const struct ScoreType*,const struct ScoreType&)->struct ScoreType&
.s0:
0da4 : a0 00 __ LDY #$00
0da6 : b1 13 __ LDA (P6),y ; (_ + 0)
0da8 : 91 11 __ STA (P4),y ; (this + 0)
0daa : c8 __ __ INY
0dab : b1 13 __ LDA (P6),y ; (_ + 0)
0dad : 91 11 __ STA (P4),y ; (this + 0)
0daf : c8 __ __ INY
0db0 : b1 13 __ LDA (P6),y ; (_ + 0)
0db2 : 91 11 __ STA (P4),y ; (this + 0)
0db4 : c8 __ __ INY
0db5 : b1 13 __ LDA (P6),y ; (_ + 0)
0db7 : 91 11 __ STA (P4),y ; (this + 0)
0db9 : 18 __ __ CLC
0dba : a5 11 __ LDA P4 ; (this + 0)
0dbc : 69 04 __ ADC #$04
0dbe : 85 0d __ STA P0 
0dc0 : a5 12 __ LDA P5 ; (this + 1)
0dc2 : 69 00 __ ADC #$00
0dc4 : 85 0e __ STA P1 
0dc6 : 18 __ __ CLC
0dc7 : a5 13 __ LDA P6 ; (_ + 0)
0dc9 : 69 04 __ ADC #$04
0dcb : 85 0f __ STA P2 
0dcd : a5 14 __ LDA P7 ; (_ + 1)
0dcf : 69 00 __ ADC #$00
0dd1 : 85 10 __ STA P3 
0dd3 : 20 72 0c JSR $0c72 ; (opp::string::operator=.s0 + 0)
0dd6 : a5 11 __ LDA P4 ; (this + 0)
0dd8 : 85 1b __ STA ACCU + 0 
0dda : a5 12 __ LDA P5 ; (this + 1)
0ddc : 85 1c __ STA ACCU + 1 
.s1001:
0dde : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::+BearSprite: ; BearSprite::+BearSprite(const struct BearSprite*)->void
.s0:
0ddf : a9 00 __ LDA #$00
0de1 : a0 08 __ LDY #$08
0de3 : 91 0d __ STA (P0),y ; (this + 0)
0de5 : c8 __ __ INY
0de6 : 91 0d __ STA (P0),y ; (this + 0)
0de8 : c8 __ __ INY
0de9 : 91 0d __ STA (P0),y ; (this + 0)
0deb : c8 __ __ INY
0dec : 91 0d __ STA (P0),y ; (this + 0)
0dee : a9 00 __ LDA #$00
0df0 : a0 00 __ LDY #$00
0df2 : 91 0d __ STA (P0),y ; (this + 0)
0df4 : a9 16 __ LDA #$16
0df6 : c8 __ __ INY
0df7 : 91 0d __ STA (P0),y ; (this + 0)
0df9 : a9 80 __ LDA #$80
0dfb : c8 __ __ INY
0dfc : 91 0d __ STA (P0),y ; (this + 0)
0dfe : a9 03 __ LDA #$03
0e00 : a8 __ __ TAY
0e01 : 91 0d __ STA (P0),y ; (this + 0)
0e03 : a9 c0 __ LDA #$c0
0e05 : c8 __ __ INY
0e06 : 91 0d __ STA (P0),y ; (this + 0)
0e08 : a9 03 __ LDA #$03
0e0a : c8 __ __ INY
0e0b : 91 0d __ STA (P0),y ; (this + 0)
0e0d : a9 00 __ LDA #$00
0e0f : c8 __ __ INY
0e10 : 91 0d __ STA (P0),y ; (this + 0)
0e12 : a9 04 __ LDA #$04
0e14 : c8 __ __ INY
0e15 : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0e17 : 60 __ __ RTS
--------------------------------------------------------------------
cwin_init: ; cwin_init(struct CharWin*,u8*,u8,u8,u8,u8)->void
.s0:
0e18 : a9 00 __ LDA #$00
0e1a : a0 04 __ LDY #$04
0e1c : 91 0d __ STA (P0),y ; (win + 0)
0e1e : c8 __ __ INY
0e1f : 91 0d __ STA (P0),y ; (win + 0)
0e21 : a5 11 __ LDA P4 ; (sx + 0)
0e23 : a0 00 __ LDY #$00
0e25 : 91 0d __ STA (P0),y ; (win + 0)
0e27 : a5 12 __ LDA P5 ; (sy + 0)
0e29 : c8 __ __ INY
0e2a : 91 0d __ STA (P0),y ; (win + 0)
0e2c : a5 13 __ LDA P6 ; (wx + 0)
0e2e : c8 __ __ INY
0e2f : 91 0d __ STA (P0),y ; (win + 0)
0e31 : a5 14 __ LDA P7 ; (wy + 0)
0e33 : c8 __ __ INY
0e34 : 91 0d __ STA (P0),y ; (win + 0)
0e36 : a5 12 __ LDA P5 ; (sy + 0)
0e38 : 0a __ __ ASL
0e39 : a8 __ __ TAY
0e3a : b9 80 16 LDA $1680,y ; (mul40 + 0)
0e3d : 85 12 __ STA P5 ; (sy + 0)
0e3f : 18 __ __ CLC
0e40 : 65 11 __ ADC P4 ; (sx + 0)
0e42 : aa __ __ TAX
0e43 : b9 81 16 LDA $1681,y ; (mul40 + 1)
0e46 : 85 1c __ STA ACCU + 1 
0e48 : 69 d8 __ ADC #$d8
0e4a : a0 09 __ LDY #$09
0e4c : 91 0d __ STA (P0),y ; (win + 0)
0e4e : 8a __ __ TXA
0e4f : 88 __ __ DEY
0e50 : 91 0d __ STA (P0),y ; (win + 0)
0e52 : 18 __ __ CLC
0e53 : a5 0f __ LDA P2 ; (screen + 0)
0e55 : 65 12 __ ADC P5 ; (sy + 0)
0e57 : aa __ __ TAX
0e58 : a5 10 __ LDA P3 ; (screen + 1)
0e5a : 65 1c __ ADC ACCU + 1 
0e5c : 85 1c __ STA ACCU + 1 
0e5e : 8a __ __ TXA
0e5f : 18 __ __ CLC
0e60 : 65 11 __ ADC P4 ; (sx + 0)
0e62 : a0 06 __ LDY #$06
0e64 : 91 0d __ STA (P0),y ; (win + 0)
0e66 : a5 1c __ LDA ACCU + 1 
0e68 : 69 00 __ ADC #$00
0e6a : c8 __ __ INY
0e6b : 91 0d __ STA (P0),y ; (win + 0)
.s1001:
0e6d : 60 __ __ RTS
--------------------------------------------------------------------
clrscr: ; clrscr()->void
.s0:
0e6e : 20 81 ff JSR $ff81 
.s1001:
0e71 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::getGameState: ; BearGame::getGameState(const struct BearGame*)->enum GameState
.s0:
0e72 : a0 00 __ LDY #$00
.s1001:
0e74 : b1 0d __ LDA (P0),y ; (this + 0)
0e76 : 60 __ __ RTS
--------------------------------------------------------------------
iocharmap: ; iocharmap(enum IOCharMap)->void
.s0:
0e77 : a5 0e __ LDA P1 ; (chmap + 0)
0e79 : 8d ef 15 STA $15ef ; (giocharmap + 0)
0e7c : c9 02 __ CMP #$02
0e7e : d0 04 __ BNE $0e84 ; (iocharmap.s2 + 0)
.s1:
0e80 : a9 8e __ LDA #$8e
0e82 : d0 07 __ BNE $0e8b ; (iocharmap.s1006 + 0)
.s2:
0e84 : c9 03 __ CMP #$03
0e86 : f0 01 __ BEQ $0e89 ; (iocharmap.s4 + 0)
.s1001:
0e88 : 60 __ __ RTS
.s4:
0e89 : a9 0e __ LDA #$0e
.s1006:
0e8b : 4c 8e 0e JMP $0e8e ; (putch.s1000 + 0)
--------------------------------------------------------------------
putch: ; putch(u8)->void
.s1000:
0e8e : 85 0d __ STA P0 
.s0:
0e90 : a5 0d __ LDA P0 
0e92 : 20 d2 ff JSR $ffd2 
.s1001:
0e95 : 60 __ __ RTS
--------------------------------------------------------------------
gotoxy: ; gotoxy(u8,u8)->void
.s0:
0e96 : a6 0e __ LDX P1 
0e98 : a4 0d __ LDY P0 
0e9a : 18 __ __ CLC
0e9b : 20 f0 ff JSR $fff0 
.s1001:
0e9e : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::operator<<: ; opp::ostream::operator<<(const struct opp::ostream*,const u8*)->struct opp::ostream&
.s0:
0e9f : a9 00 __ LDA #$00
0ea1 : 85 43 __ STA T0 + 0 
0ea3 : f0 11 __ BEQ $0eb6 ; (opp::ostream::operator<<.l1 + 0)
.s2:
0ea5 : a5 11 __ LDA P4 ; (this + 0)
0ea7 : 85 0e __ STA P1 
0ea9 : a5 12 __ LDA P5 ; (this + 1)
0eab : 85 0f __ STA P2 
0ead : b1 13 __ LDA (P6),y ; (p + 0)
0eaf : 85 10 __ STA P3 
0eb1 : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
0eb4 : e6 43 __ INC T0 + 0 
.l1:
0eb6 : a4 43 __ LDY T0 + 0 
0eb8 : b1 13 __ LDA (P6),y ; (p + 0)
0eba : d0 e9 __ BNE $0ea5 ; (opp::ostream::operator<<.s2 + 0)
.s3:
0ebc : a5 11 __ LDA P4 ; (this + 0)
0ebe : 85 1b __ STA ACCU + 0 
0ec0 : a5 12 __ LDA P5 ; (this + 1)
0ec2 : 85 1c __ STA ACCU + 1 
.s1001:
0ec4 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::bput$vcall: ; opp::ostream::bput$vcall(const struct opp::ostream*,u8)->void
.s0:
0ec5 : a0 00 __ LDY #$00
0ec7 : b1 0e __ LDA (P1),y ; (this + 0)
0ec9 : aa __ __ TAX
0eca : bd d6 0e LDA $0ed6,x ; (opp::ostream::bput$vcall.s0 + 17)
0ecd : 85 1b __ STA ACCU + 0 
0ecf : bd d8 0e LDA $0ed8,x ; (opp::ostream::bput$vtable + 1)
0ed2 : 85 1c __ STA ACCU + 1 
0ed4 : 6c 1b 00 JMP ($001b)
--------------------------------------------------------------------
opp::ostream::bput$vtable:
0ed7 : __ __ __ BYT db dc 0e 0e                                     : ....
--------------------------------------------------------------------
opp::ostream::bput: ; opp::ostream::bput(const struct opp::ostream*,u8)->void
.s1001:
0edb : 60 __ __ RTS
--------------------------------------------------------------------
opp::costream::bput: ; opp::costream::bput(const struct opp::costream*,u8)->void
.s0:
0edc : a5 10 __ LDA P3 ; (ch + 0)
0ede : 4c e1 0e JMP $0ee1 ; (putchar.s1000 + 0)
--------------------------------------------------------------------
putchar: ; putchar(u8)->void
.s1000:
0ee1 : 85 0d __ STA P0 
.s0:
0ee3 : a5 0d __ LDA P0 
0ee5 : 20 e9 0e JSR $0ee9 ; (putpch + 0)
.s1001:
0ee8 : 60 __ __ RTS
--------------------------------------------------------------------
putpch: ; putpch
0ee9 : ae ef 15 LDX $15ef ; (giocharmap + 0)
0eec : e0 01 __ CPX #$01
0eee : 90 26 __ BCC $0f16 ; (putpch + 45)
0ef0 : c9 0a __ CMP #$0a
0ef2 : d0 02 __ BNE $0ef6 ; (putpch + 13)
0ef4 : a9 0d __ LDA #$0d
0ef6 : c9 09 __ CMP #$09
0ef8 : f0 1f __ BEQ $0f19 ; (putpch + 48)
0efa : e0 02 __ CPX #$02
0efc : 90 18 __ BCC $0f16 ; (putpch + 45)
0efe : c9 41 __ CMP #$41
0f00 : 90 14 __ BCC $0f16 ; (putpch + 45)
0f02 : c9 7b __ CMP #$7b
0f04 : b0 10 __ BCS $0f16 ; (putpch + 45)
0f06 : c9 61 __ CMP #$61
0f08 : b0 04 __ BCS $0f0e ; (putpch + 37)
0f0a : c9 5b __ CMP #$5b
0f0c : b0 08 __ BCS $0f16 ; (putpch + 45)
0f0e : 49 20 __ EOR #$20
0f10 : e0 03 __ CPX #$03
0f12 : f0 02 __ BEQ $0f16 ; (putpch + 45)
0f14 : 29 df __ AND #$df
0f16 : 4c d2 ff JMP $ffd2 
0f19 : 38 __ __ SEC
0f1a : 20 f0 ff JSR $fff0 
0f1d : 98 __ __ TYA
0f1e : 29 03 __ AND #$03
0f20 : 49 03 __ EOR #$03
0f22 : aa __ __ TAX
0f23 : a9 20 __ LDA #$20
0f25 : 20 d2 ff JSR $ffd2 
0f28 : ca __ __ DEX
0f29 : 10 fa __ BPL $0f25 ; (putpch + 60)
0f2b : 60 __ __ RTS
--------------------------------------------------------------------
opp::ios::+ios: ; opp::ios::+ios(const struct opp::ios*)->void
.s0:
0f2c : a9 00 __ LDA #$00
0f2e : a8 __ __ TAY
0f2f : 91 0d __ STA (P0),y ; (this + 0)
0f31 : c8 __ __ INY
0f32 : 91 0d __ STA (P0),y ; (this + 0)
0f34 : c8 __ __ INY
0f35 : 91 0d __ STA (P0),y ; (this + 0)
0f37 : c8 __ __ INY
0f38 : 91 0d __ STA (P0),y ; (this + 0)
0f3a : c8 __ __ INY
0f3b : 91 0d __ STA (P0),y ; (this + 0)
0f3d : a9 06 __ LDA #$06
0f3f : c8 __ __ INY
0f40 : 91 0d __ STA (P0),y ; (this + 0)
0f42 : a9 20 __ LDA #$20
0f44 : c8 __ __ INY
0f45 : 91 0d __ STA (P0),y ; (this + 0)
.s1001:
0f47 : 60 __ __ RTS
--------------------------------------------------------------------
0f48 : __ __ __ BYT 53 45 54 55 50 00                               : SETUP.
--------------------------------------------------------------------
BearGame::setup: ; BearGame::setup(const struct BearGame*)->void
.s0:
0f4e : ad fb 9f LDA $9ffb ; (sstack + 2)
0f51 : 85 43 __ STA T0 + 0 
0f53 : ad fc 9f LDA $9ffc ; (sstack + 3)
0f56 : 85 44 __ STA T0 + 1 
0f58 : a0 02 __ LDY #$02
0f5a : b1 43 __ LDA (T0 + 0),y 
0f5c : 8d f9 9f STA $9ff9 ; (sstack + 0)
0f5f : c8 __ __ INY
0f60 : b1 43 __ LDA (T0 + 0),y 
0f62 : 8d fa 9f STA $9ffa ; (sstack + 1)
0f65 : 4c 68 0f JMP $0f68 ; (BearSprite::drawSprite.s0 + 0)
--------------------------------------------------------------------
BearSprite::drawSprite: ; BearSprite::drawSprite(const struct BearSprite*)->void
.s0:
0f68 : a9 00 __ LDA #$00
0f6a : 85 0d __ STA P0 
0f6c : 85 10 __ STA P3 
0f6e : 85 12 __ STA P5 
0f70 : 85 14 __ STA P7 
0f72 : 85 15 __ STA P8 
0f74 : 85 16 __ STA P9 
0f76 : 85 17 __ STA P10 
0f78 : a9 a0 __ LDA #$a0
0f7a : 85 0f __ STA P2 
0f7c : a9 64 __ LDA #$64
0f7e : 85 11 __ STA P4 
0f80 : a9 0f __ LDA #$0f
0f82 : 85 13 __ STA P6 
0f84 : ad f9 9f LDA $9ff9 ; (sstack + 0)
0f87 : 85 43 __ STA T0 + 0 
0f89 : ad fa 9f LDA $9ffa ; (sstack + 1)
0f8c : 85 44 __ STA T0 + 1 
0f8e : a0 00 __ LDY #$00
0f90 : b1 43 __ LDA (T0 + 0),y 
0f92 : 85 45 __ STA T1 + 0 
0f94 : c8 __ __ INY
0f95 : 84 0e __ STY P1 
0f97 : b1 43 __ LDA (T0 + 0),y 
0f99 : 85 46 __ STA T1 + 1 
0f9b : c8 __ __ INY
0f9c : b1 43 __ LDA (T0 + 0),y 
0f9e : 85 47 __ STA T2 + 0 
0fa0 : c8 __ __ INY
0fa1 : b1 43 __ LDA (T0 + 0),y 
0fa3 : 85 48 __ STA T2 + 1 
0fa5 : a0 7f __ LDY #$7f
.l1002:
0fa7 : b1 45 __ LDA (T1 + 0),y 
0fa9 : 91 47 __ STA (T2 + 0),y 
0fab : 88 __ __ DEY
0fac : d0 f9 __ BNE $0fa7 ; (BearSprite::drawSprite.l1002 + 0)
.s1003:
0fae : b1 45 __ LDA (T1 + 0),y 
0fb0 : 91 47 __ STA (T2 + 0),y 
0fb2 : a9 a0 __ LDA #$a0
0fb4 : a0 08 __ LDY #$08
0fb6 : 91 43 __ STA (T0 + 0),y 
0fb8 : a9 00 __ LDA #$00
0fba : c8 __ __ INY
0fbb : 91 43 __ STA (T0 + 0),y 
0fbd : a9 64 __ LDA #$64
0fbf : c8 __ __ INY
0fc0 : 91 43 __ STA (T0 + 0),y 
0fc2 : a9 00 __ LDA #$00
0fc4 : c8 __ __ INY
0fc5 : 91 43 __ STA (T0 + 0),y 
0fc7 : a0 06 __ LDY #$06
0fc9 : b1 43 __ LDA (T0 + 0),y 
0fcb : 18 __ __ CLC
0fcc : 69 f8 __ ADC #$f8
0fce : 8d f7 15 STA $15f7 ; (vspriteScreen + 0)
0fd1 : c8 __ __ INY
0fd2 : b1 43 __ LDA (T0 + 0),y 
0fd4 : 69 03 __ ADC #$03
0fd6 : 8d f8 15 STA $15f8 ; (vspriteScreen + 1)
0fd9 : 20 fb 0f JSR $0ffb ; (spr_set.s0 + 0)
0fdc : e6 0d __ INC P0 
0fde : e6 15 __ INC P8 
0fe0 : a9 00 __ LDA #$00
0fe2 : 85 10 __ STA P3 
0fe4 : c6 13 __ DEC P6 
0fe6 : a9 08 __ LDA #$08
0fe8 : 85 14 __ STA P7 
0fea : 20 fb 0f JSR $0ffb ; (spr_set.s0 + 0)
0fed : a9 09 __ LDA #$09
0fef : 8d 25 d0 STA $d025 
0ff2 : a9 01 __ LDA #$01
0ff4 : 8d 26 d0 STA $d026 
0ff7 : ee 20 d0 INC $d020 
.s1001:
0ffa : 60 __ __ RTS
--------------------------------------------------------------------
spr_set: ; spr_set(u8,bool,i16,i16,u8,u8,bool,bool,bool)->void
.s0:
0ffb : a6 0d __ LDX P0 ; (sp + 0)
0ffd : bd ba 16 LDA $16ba,x ; (bitshift + 8)
1000 : 85 1b __ STA ACCU + 0 
1002 : a5 0e __ LDA P1 ; (show + 0)
1004 : d0 0a __ BNE $1010 ; (spr_set.s3 + 0)
.s4:
1006 : a9 ff __ LDA #$ff
1008 : 45 1b __ EOR ACCU + 0 
100a : 2d 15 d0 AND $d015 
100d : 4c 15 10 JMP $1015 ; (spr_set.s19 + 0)
.s3:
1010 : a5 1b __ LDA ACCU + 0 
1012 : 0d 15 d0 ORA $d015 
.s19:
1015 : 8d 15 d0 STA $d015 
1018 : a5 15 __ LDA P8 ; (multi + 0)
101a : d0 0a __ BNE $1026 ; (spr_set.s6 + 0)
.s7:
101c : a9 ff __ LDA #$ff
101e : 45 1b __ EOR ACCU + 0 
1020 : 2d 1c d0 AND $d01c 
1023 : 4c 2b 10 JMP $102b ; (spr_set.s20 + 0)
.s6:
1026 : ad 1c d0 LDA $d01c 
1029 : 05 1b __ ORA ACCU + 0 
.s20:
102b : 8d 1c d0 STA $d01c 
102e : a5 16 __ LDA P9 ; (xexpand + 0)
1030 : d0 0a __ BNE $103c ; (spr_set.s9 + 0)
.s10:
1032 : a9 ff __ LDA #$ff
1034 : 45 1b __ EOR ACCU + 0 
1036 : 2d 1d d0 AND $d01d 
1039 : 4c 41 10 JMP $1041 ; (spr_set.s21 + 0)
.s9:
103c : ad 1d d0 LDA $d01d 
103f : 05 1b __ ORA ACCU + 0 
.s21:
1041 : 8d 1d d0 STA $d01d 
1044 : a5 17 __ LDA P10 ; (yexpand + 0)
1046 : d0 0a __ BNE $1052 ; (spr_set.s12 + 0)
.s13:
1048 : a9 ff __ LDA #$ff
104a : 45 1b __ EOR ACCU + 0 
104c : 2d 17 d0 AND $d017 
104f : 4c 57 10 JMP $1057 ; (spr_set.s14 + 0)
.s12:
1052 : ad 17 d0 LDA $d017 
1055 : 05 1b __ ORA ACCU + 0 
.s14:
1057 : 8d 17 d0 STA $d017 
105a : 8a __ __ TXA
105b : 0a __ __ ASL
105c : a8 __ __ TAY
105d : a5 11 __ LDA P4 ; (ypos + 0)
105f : 99 01 d0 STA $d001,y 
1062 : a5 0f __ LDA P2 ; (xpos + 0)
1064 : 99 00 d0 STA $d000,y 
1067 : 46 10 __ LSR P3 ; (xpos + 1)
1069 : 90 07 __ BCC $1072 ; (spr_set.s16 + 0)
.s15:
106b : a5 1b __ LDA ACCU + 0 
106d : 0d 10 d0 ORA $d010 
1070 : b0 07 __ BCS $1079 ; (spr_set.s17 + 0)
.s16:
1072 : a9 ff __ LDA #$ff
1074 : 45 1b __ EOR ACCU + 0 
1076 : 2d 10 d0 AND $d010 
.s17:
1079 : 8d 10 d0 STA $d010 
107c : ad f7 15 LDA $15f7 ; (vspriteScreen + 0)
107f : 18 __ __ CLC
1080 : 65 0d __ ADC P0 ; (sp + 0)
1082 : 85 1b __ STA ACCU + 0 
1084 : ad f8 15 LDA $15f8 ; (vspriteScreen + 1)
1087 : 69 00 __ ADC #$00
1089 : 85 1c __ STA ACCU + 1 
108b : a5 13 __ LDA P6 ; (image + 0)
108d : a0 00 __ LDY #$00
108f : 91 1b __ STA (ACCU + 0),y 
1091 : a5 14 __ LDA P7 ; (color + 0)
1093 : 9d 27 d0 STA $d027,x 
.s1001:
1096 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::operator<<: ; opp::ostream::operator<<(const struct opp::ostream*,i16)->struct opp::ostream&
.s0:
1097 : ad fc 9f LDA $9ffc ; (sstack + 3)
109a : 85 49 __ STA T0 + 0 
109c : 85 17 __ STA P10 
109e : ad fd 9f LDA $9ffd ; (sstack + 4)
10a1 : 85 4a __ STA T0 + 1 
10a3 : 85 18 __ STA P11 
10a5 : 2c ff 9f BIT $9fff ; (sstack + 6)
10a8 : 10 19 __ BPL $10c3 ; (opp::ostream::operator<<.s2 + 0)
.s1:
10aa : a9 2d __ LDA #$2d
10ac : 8d fb 9f STA $9ffb ; (sstack + 2)
10af : 38 __ __ SEC
10b0 : a9 00 __ LDA #$00
10b2 : ed fe 9f SBC $9ffe ; (sstack + 5)
10b5 : 8d f9 9f STA $9ff9 ; (sstack + 0)
10b8 : a9 00 __ LDA #$00
10ba : ed ff 9f SBC $9fff ; (sstack + 6)
10bd : 8d fa 9f STA $9ffa ; (sstack + 1)
10c0 : 4c dc 10 JMP $10dc ; (opp::ostream::operator<<.s1001 + 0)
.s2:
10c3 : ad fe 9f LDA $9ffe ; (sstack + 5)
10c6 : 8d f9 9f STA $9ff9 ; (sstack + 0)
10c9 : ad ff 9f LDA $9fff ; (sstack + 6)
10cc : 8d fa 9f STA $9ffa ; (sstack + 1)
10cf : a0 02 __ LDY #$02
10d1 : b1 49 __ LDA (T0 + 0),y 
10d3 : 29 08 __ AND #$08
10d5 : f0 02 __ BEQ $10d9 ; (opp::ostream::operator<<.s1002 + 0)
.s4:
10d7 : a9 2b __ LDA #$2b
.s1002:
10d9 : 8d fb 9f STA $9ffb ; (sstack + 2)
.s1001:
10dc : 20 e8 10 JSR $10e8 ; (opp::ostream::numput.s0 + 0)
10df : a5 49 __ LDA T0 + 0 
10e1 : 85 1b __ STA ACCU + 0 
10e3 : a5 4a __ LDA T0 + 1 
10e5 : 85 1c __ STA ACCU + 1 ; (this + 0)
10e7 : 60 __ __ RTS
--------------------------------------------------------------------
opp::ostream::numput: ; opp::ostream::numput(const struct opp::ostream*,u16,u8)->void
.s0:
10e8 : a0 01 __ LDY #$01
10ea : b1 17 __ LDA (P10),y ; (this + 0)
10ec : 85 43 __ STA T0 + 0 
10ee : c8 __ __ INY
10ef : 29 08 __ AND #$08
10f1 : f0 04 __ BEQ $10f7 ; (opp::ostream::numput.s2 + 0)
.s1:
10f3 : a2 10 __ LDX #$10
10f5 : d0 0a __ BNE $1101 ; (opp::ostream::numput.s3 + 0)
.s2:
10f7 : 06 43 __ ASL T0 + 0 
10f9 : 10 04 __ BPL $10ff ; (opp::ostream::numput.s1004 + 0)
.s1005:
10fb : a2 08 __ LDX #$08
10fd : d0 02 __ BNE $1101 ; (opp::ostream::numput.s3 + 0)
.s1004:
10ff : a2 0a __ LDX #$0a
.s3:
1101 : a9 00 __ LDA #$00
1103 : 85 47 __ STA T3 + 0 
1105 : ad fa 9f LDA $9ffa ; (sstack + 1)
1108 : 85 44 __ STA T0 + 1 
110a : b1 17 __ LDA (P10),y ; (this + 0)
110c : 29 30 __ AND #$30
110e : d0 70 __ BNE $1180 ; (opp::ostream::numput.s7 + 0)
.s9:
1110 : ad f9 9f LDA $9ff9 ; (sstack + 0)
1113 : a8 __ __ TAY
1114 : 05 44 __ ORA T0 + 1 
1116 : f0 36 __ BEQ $114e ; (opp::ostream::numput.s12 + 0)
.s39:
1118 : a9 57 __ LDA #$57
.s28:
111a : 86 46 __ STX T1 + 0 
111c : 84 1b __ STY ACCU + 0 ; (sign + 0)
111e : 85 48 __ STA T4 + 0 
.l11:
1120 : a5 44 __ LDA T0 + 1 
1122 : 85 1c __ STA ACCU + 1 
1124 : a5 46 __ LDA T1 + 0 
1126 : 85 03 __ STA WORK + 0 
1128 : a9 00 __ LDA #$00
112a : 85 04 __ STA WORK + 1 
112c : 20 11 14 JSR $1411 ; (divmod + 0)
112f : a5 1c __ LDA ACCU + 1 
1131 : 85 44 __ STA T0 + 1 
1133 : a5 05 __ LDA WORK + 2 
1135 : c9 0a __ CMP #$0a
1137 : 90 06 __ BCC $113f ; (opp::ostream::numput.s13 + 0)
.s14:
1139 : 18 __ __ CLC
113a : 65 48 __ ADC T4 + 0 
113c : 4c 41 11 JMP $1141 ; (opp::ostream::numput.s15 + 0)
.s13:
113f : 69 30 __ ADC #$30
.s15:
1141 : a6 47 __ LDX T3 + 0 
1143 : 9d ef 9f STA $9fef,x ; (buffer + 0)
1146 : e6 47 __ INC T3 + 0 
1148 : a5 1b __ LDA ACCU + 0 ; (sign + 0)
114a : 05 1c __ ORA ACCU + 1 
114c : d0 d2 __ BNE $1120 ; (opp::ostream::numput.l11 + 0)
.s12:
114e : a5 17 __ LDA P10 ; (this + 0)
1150 : 85 11 __ STA P4 
1152 : a5 18 __ LDA P11 ; (this + 1)
1154 : 85 12 __ STA P5 
1156 : a9 ef __ LDA #$ef
1158 : 85 13 __ STA P6 
115a : a9 9f __ LDA #$9f
115c : 85 14 __ STA P7 
115e : a5 47 __ LDA T3 + 0 
1160 : d0 09 __ BNE $116b ; (opp::ostream::numput.s55 + 0)
.s16:
1162 : a9 30 __ LDA #$30
1164 : 8d ef 9f STA $9fef ; (buffer + 0)
1167 : e6 47 __ INC T3 + 0 
1169 : a5 47 __ LDA T3 + 0 
.s55:
116b : 85 15 __ STA P8 
116d : ad fb 9f LDA $9ffb ; (sstack + 2)
1170 : f0 07 __ BEQ $1179 ; (opp::ostream::numput.s21 + 0)
.s19:
1172 : a6 15 __ LDX P8 
1174 : 9d ef 9f STA $9fef,x ; (buffer + 0)
1177 : e6 47 __ INC T3 + 0 
.s21:
1179 : a5 47 __ LDA T3 + 0 
117b : 85 16 __ STA P9 
117d : 4c 8c 11 JMP $118c ; (opp::ostream::putnum.s0 + 0)
.s7:
1180 : ad f9 9f LDA $9ff9 ; (sstack + 0)
1183 : a8 __ __ TAY
1184 : 05 44 __ ORA T0 + 1 
1186 : f0 c6 __ BEQ $114e ; (opp::ostream::numput.s12 + 0)
.s38:
1188 : a9 37 __ LDA #$37
118a : d0 8e __ BNE $111a ; (opp::ostream::numput.s28 + 0)
--------------------------------------------------------------------
opp::ostream::putnum: ; opp::ostream::putnum(const struct opp::ostream*,const u8*,u8,u8)->void
.s0:
118c : a5 16 __ LDA P9 ; (size + 0)
118e : a0 04 __ LDY #$04
1190 : d1 11 __ CMP (P4),y ; (this + 0)
1192 : 90 04 __ BCC $1198 ; (opp::ostream::putnum.s1 + 0)
.s78:
1194 : a9 00 __ LDA #$00
1196 : b0 05 __ BCS $119d ; (opp::ostream::putnum.s3 + 0)
.s1:
1198 : b1 11 __ LDA (P4),y ; (this + 0)
119a : 38 __ __ SEC
119b : e5 16 __ SBC P9 ; (size + 0)
.s3:
119d : 85 43 __ STA T4 + 0 
119f : a0 01 __ LDY #$01
11a1 : b1 11 __ LDA (P4),y ; (this + 0)
11a3 : 29 b0 __ AND #$b0
11a5 : 85 44 __ STA T5 + 0 
11a7 : c9 10 __ CMP #$10
11a9 : d0 1f __ BNE $11ca ; (opp::ostream::putnum.s6 + 0)
.s7:
11ab : a5 15 __ LDA P8 ; (prefix + 0)
11ad : c5 16 __ CMP P9 ; (size + 0)
11af : b0 19 __ BCS $11ca ; (opp::ostream::putnum.s6 + 0)
.l8:
11b1 : a5 11 __ LDA P4 ; (this + 0)
11b3 : 85 0e __ STA P1 
11b5 : a5 12 __ LDA P5 ; (this + 1)
11b7 : 85 0f __ STA P2 
11b9 : c6 16 __ DEC P9 ; (size + 0)
11bb : a4 16 __ LDY P9 ; (size + 0)
11bd : b1 13 __ LDA (P6),y ; (buffer + 0)
11bf : 85 10 __ STA P3 
11c1 : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
11c4 : a5 15 __ LDA P8 ; (prefix + 0)
11c6 : c5 16 __ CMP P9 ; (size + 0)
11c8 : 90 e7 __ BCC $11b1 ; (opp::ostream::putnum.l8 + 0)
.s6:
11ca : a5 44 __ LDA T5 + 0 
11cc : c9 20 __ CMP #$20
11ce : f0 19 __ BEQ $11e9 ; (opp::ostream::putnum.s16 + 0)
.s13:
11d0 : a5 43 __ LDA T4 + 0 
11d2 : f0 15 __ BEQ $11e9 ; (opp::ostream::putnum.s16 + 0)
.l14:
11d4 : a5 11 __ LDA P4 ; (this + 0)
11d6 : 85 0e __ STA P1 
11d8 : a5 12 __ LDA P5 ; (this + 1)
11da : 85 0f __ STA P2 
11dc : a0 06 __ LDY #$06
11de : b1 11 __ LDA (P4),y ; (this + 0)
11e0 : 85 10 __ STA P3 
11e2 : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
11e5 : c6 43 __ DEC T4 + 0 
11e7 : d0 eb __ BNE $11d4 ; (opp::ostream::putnum.l14 + 0)
.s16:
11e9 : a5 16 __ LDA P9 ; (size + 0)
11eb : f0 1f __ BEQ $120c ; (opp::ostream::putnum.s19 + 0)
.s23:
11ed : a5 13 __ LDA P6 ; (buffer + 0)
11ef : 85 44 __ STA T5 + 0 
11f1 : a5 14 __ LDA P7 ; (buffer + 1)
11f3 : 85 45 __ STA T5 + 1 
.l17:
11f5 : a5 11 __ LDA P4 ; (this + 0)
11f7 : 85 0e __ STA P1 
11f9 : a5 12 __ LDA P5 ; (this + 1)
11fb : 85 0f __ STA P2 
11fd : c6 16 __ DEC P9 ; (size + 0)
11ff : a4 16 __ LDY P9 ; (size + 0)
1201 : b1 44 __ LDA (T5 + 0),y 
1203 : 85 10 __ STA P3 
1205 : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
1208 : a5 16 __ LDA P9 ; (size + 0)
120a : d0 e9 __ BNE $11f5 ; (opp::ostream::putnum.l17 + 0)
.s19:
120c : a5 43 __ LDA T4 + 0 
120e : f0 17 __ BEQ $1227 ; (opp::ostream::putnum.s21 + 0)
.l20:
1210 : a5 11 __ LDA P4 ; (this + 0)
1212 : 85 0e __ STA P1 
1214 : a5 12 __ LDA P5 ; (this + 1)
1216 : 85 0f __ STA P2 
1218 : a0 06 __ LDY #$06
121a : b1 11 __ LDA (P4),y ; (this + 0)
121c : 85 10 __ STA P3 
121e : 20 c5 0e JSR $0ec5 ; (opp::ostream::bput$vcall.s0 + 0)
1221 : c6 43 __ DEC T4 + 0 
1223 : a5 43 __ LDA T4 + 0 
1225 : d0 e9 __ BNE $1210 ; (opp::ostream::putnum.l20 + 0)
.s21:
1227 : a0 01 __ LDY #$01
1229 : 91 11 __ STA (P4),y ; (this + 0)
122b : c8 __ __ INY
122c : 91 11 __ STA (P4),y ; (this + 0)
122e : a0 04 __ LDY #$04
1230 : 91 11 __ STA (P4),y ; (this + 0)
1232 : a9 20 __ LDA #$20
1234 : a0 06 __ LDY #$06
1236 : 91 11 __ STA (P4),y ; (this + 0)
.s1001:
1238 : 60 __ __ RTS
--------------------------------------------------------------------
1239 : __ __ __ BYT 4c 65 76 65 6c 3a 20 00                         : Level: .
--------------------------------------------------------------------
BearGame::getLevel: ; BearGame::getLevel(const struct BearGame*)->i16
.s0:
1241 : a0 04 __ LDY #$04
1243 : b1 0d __ LDA (P0),y ; (this + 0)
1245 : 85 1b __ STA ACCU + 0 
1247 : c8 __ __ INY
1248 : b1 0d __ LDA (P0),y ; (this + 0)
124a : 85 1c __ STA ACCU + 1 
.s1001:
124c : 60 __ __ RTS
--------------------------------------------------------------------
124d : __ __ __ BYT 20 53 63 6f 72 65 3a 20 00                      :  Score: .
--------------------------------------------------------------------
Score::getScore: ; Score::getScore(const struct Score*)->i16
.s0:
1256 : a0 02 __ LDY #$02
1258 : b1 0d __ LDA (P0),y ; (this + 0)
125a : 85 1b __ STA ACCU + 0 
125c : c8 __ __ INY
125d : b1 0d __ LDA (P0),y ; (this + 0)
125f : 85 1c __ STA ACCU + 1 
.s1001:
1261 : 60 __ __ RTS
--------------------------------------------------------------------
1262 : __ __ __ BYT 50 4c 41 59 00                                  : PLAY.
--------------------------------------------------------------------
BearGame::play: ; BearGame::play(const struct BearGame*)->void
.s0:
1267 : a0 01 __ LDY #$01
1269 : b1 13 __ LDA (P6),y ; (this + 0)
126b : c9 01 __ CMP #$01
126d : f0 10 __ BEQ $127f ; (BearGame::play.s3 + 0)
.s6:
126f : 09 00 __ ORA #$00
1271 : f0 01 __ BEQ $1274 ; (BearGame::play.s2 + 0)
.s1001:
1273 : 60 __ __ RTS
.s2:
1274 : a5 13 __ LDA P6 ; (this + 0)
1276 : 85 11 __ STA P4 
1278 : a5 14 __ LDA P7 ; (this + 1)
127a : 85 12 __ STA P5 
127c : 4c 8a 12 JMP $128a ; (BearGame::getUserInput.s0 + 0)
.s3:
127f : a5 13 __ LDA P6 ; (this + 0)
1281 : 85 11 __ STA P4 
1283 : a5 14 __ LDA P7 ; (this + 1)
1285 : 85 12 __ STA P5 
1287 : 4c f3 12 JMP $12f3 ; (BearGame::updateGame.s1000 + 0)
--------------------------------------------------------------------
BearGame::getUserInput: ; BearGame::getUserInput(const struct BearGame*)->void
.s0:
128a : a9 00 __ LDA #$00
128c : 20 b3 12 JSR $12b3 ; (joy_poll.s0 + 0)
128f : ad fb 15 LDA $15fb ; (joyx + 0)
1292 : c9 ff __ CMP #$ff
1294 : f0 06 __ BEQ $129c ; (BearGame::getUserInput.s18 + 0)
.s7:
1296 : c9 01 __ CMP #$01
1298 : f0 02 __ BEQ $129c ; (BearGame::getUserInput.s18 + 0)
.s5:
129a : a9 00 __ LDA #$00
.s18:
129c : aa __ __ TAX
129d : ad f9 15 LDA $15f9 ; (joyy + 0)
12a0 : c9 ff __ CMP #$ff
12a2 : f0 06 __ BEQ $12aa ; (BearGame::getUserInput.s9 + 0)
.s15:
12a4 : c9 01 __ CMP #$01
12a6 : f0 02 __ BEQ $12aa ; (BearGame::getUserInput.s9 + 0)
.s13:
12a8 : a9 00 __ LDA #$00
.s9:
12aa : a0 0b __ LDY #$0b
12ac : 91 11 __ STA (P4),y ; (this + 0)
12ae : 8a __ __ TXA
12af : 88 __ __ DEY
12b0 : 91 11 __ STA (P4),y ; (this + 0)
.s1001:
12b2 : 60 __ __ RTS
--------------------------------------------------------------------
joy_poll: ; joy_poll(u8)->void
.s0:
12b3 : aa __ __ TAX
12b4 : bd 00 dc LDA $dc00,x 
12b7 : a8 __ __ TAY
12b8 : 29 10 __ AND #$10
12ba : f0 04 __ BEQ $12c0 ; (joy_poll.s1005 + 0)
.s1006:
12bc : a9 00 __ LDA #$00
12be : f0 02 __ BEQ $12c2 ; (joy_poll.s1007 + 0)
.s1005:
12c0 : a9 01 __ LDA #$01
.s1007:
12c2 : 9d fd 15 STA $15fd,x ; (joyb + 0)
12c5 : 98 __ __ TYA
12c6 : 4a __ __ LSR
12c7 : b0 04 __ BCS $12cd ; (joy_poll.s2 + 0)
.s1:
12c9 : a9 ff __ LDA #$ff
12cb : 90 0b __ BCC $12d8 ; (joy_poll.s15 + 0)
.s2:
12cd : 98 __ __ TYA
12ce : 29 02 __ AND #$02
12d0 : f0 04 __ BEQ $12d6 ; (joy_poll.s1008 + 0)
.s1009:
12d2 : a9 00 __ LDA #$00
12d4 : b0 02 __ BCS $12d8 ; (joy_poll.s15 + 0)
.s1008:
12d6 : a9 01 __ LDA #$01
.s15:
12d8 : 9d f9 15 STA $15f9,x ; (joyy + 0)
12db : 98 __ __ TYA
12dc : 29 04 __ AND #$04
12de : d0 04 __ BNE $12e4 ; (joy_poll.s8 + 0)
.s7:
12e0 : a9 ff __ LDA #$ff
12e2 : d0 0b __ BNE $12ef ; (joy_poll.s1001 + 0)
.s8:
12e4 : 98 __ __ TYA
12e5 : 29 08 __ AND #$08
12e7 : f0 04 __ BEQ $12ed ; (joy_poll.s1011 + 0)
.s1012:
12e9 : a9 00 __ LDA #$00
12eb : f0 02 __ BEQ $12ef ; (joy_poll.s1001 + 0)
.s1011:
12ed : a9 01 __ LDA #$01
.s1001:
12ef : 9d fb 15 STA $15fb,x ; (joyx + 0)
12f2 : 60 __ __ RTS
--------------------------------------------------------------------
BearGame::updateGame: ; BearGame::updateGame(const struct BearGame*)->void
.s1000:
12f3 : 38 __ __ SEC
12f4 : a5 23 __ LDA SP + 0 
12f6 : e9 0a __ SBC #$0a
12f8 : 85 23 __ STA SP + 0 
12fa : b0 02 __ BCS $12fe ; (BearGame::updateGame.s0 + 0)
12fc : c6 24 __ DEC SP + 1 
.s0:
12fe : a0 02 __ LDY #$02
1300 : b1 11 __ LDA (P4),y ; (this + 0)
1302 : 85 0d __ STA P0 
1304 : c8 __ __ INY
1305 : b1 11 __ LDA (P4),y ; (this + 0)
1307 : 85 0e __ STA P1 
1309 : 20 9a 13 JSR $139a ; (BearSprite::getX.s0 + 0)
130c : 24 1c __ BIT ACCU + 1 
130e : 30 27 __ BMI $1337 ; (BearGame::updateGame.s1 + 0)
.s6:
1310 : 20 9a 13 JSR $139a ; (BearSprite::getX.s0 + 0)
1313 : a5 1c __ LDA ACCU + 1 
1315 : 49 80 __ EOR #$80
1317 : c9 81 __ CMP #$81
1319 : d0 04 __ BNE $131f ; (BearGame::updateGame.s1005 + 0)
.s1004:
131b : a5 1b __ LDA ACCU + 0 
131d : c9 41 __ CMP #$41
.s1005:
131f : b0 16 __ BCS $1337 ; (BearGame::updateGame.s1 + 0)
.s5:
1321 : 20 a6 13 JSR $13a6 ; (BearSprite::getY.s0 + 0)
1324 : 24 1c __ BIT ACCU + 1 
1326 : 30 0f __ BMI $1337 ; (BearGame::updateGame.s1 + 0)
.s4:
1328 : 20 a6 13 JSR $13a6 ; (BearSprite::getY.s0 + 0)
132b : a5 1c __ LDA ACCU + 1 
132d : 30 5f __ BMI $138e ; (BearGame::updateGame.s1001 + 0)
.s1003:
132f : d0 06 __ BNE $1337 ; (BearGame::updateGame.s1 + 0)
.s1002:
1331 : a9 c8 __ LDA #$c8
1333 : c5 1b __ CMP ACCU + 0 
1335 : b0 57 __ BCS $138e ; (BearGame::updateGame.s1001 + 0)
.s1:
1337 : 18 __ __ CLC
1338 : a5 11 __ LDA P4 ; (this + 0)
133a : 69 06 __ ADC #$06
133c : 85 0d __ STA P0 
133e : a0 02 __ LDY #$02
1340 : 91 23 __ STA (SP + 0),y 
1342 : a5 12 __ LDA P5 ; (this + 1)
1344 : 69 00 __ ADC #$00
1346 : 85 0e __ STA P1 
1348 : c8 __ __ INY
1349 : 91 23 __ STA (SP + 0),y 
134b : 20 05 14 JSR $1405 ; (Score::getScoreTypes.s0 + 0)
134e : a0 00 __ LDY #$00
1350 : b1 1b __ LDA (ACCU + 0),y 
1352 : a0 04 __ LDY #$04
1354 : 91 23 __ STA (SP + 0),y 
1356 : a0 01 __ LDY #$01
1358 : b1 1b __ LDA (ACCU + 0),y 
135a : a0 05 __ LDY #$05
135c : 91 23 __ STA (SP + 0),y 
135e : a0 02 __ LDY #$02
1360 : b1 1b __ LDA (ACCU + 0),y 
1362 : a0 06 __ LDY #$06
1364 : 91 23 __ STA (SP + 0),y 
1366 : a0 03 __ LDY #$03
1368 : b1 1b __ LDA (ACCU + 0),y 
136a : a0 07 __ LDY #$07
136c : 91 23 __ STA (SP + 0),y 
136e : 18 __ __ CLC
136f : a5 23 __ LDA SP + 0 
1371 : 69 08 __ ADC #$08
1373 : 85 0d __ STA P0 
1375 : a5 24 __ LDA SP + 1 
1377 : 69 00 __ ADC #$00
1379 : 85 0e __ STA P1 
137b : 18 __ __ CLC
137c : a5 1b __ LDA ACCU + 0 
137e : 69 04 __ ADC #$04
1380 : 85 0f __ STA P2 
1382 : a5 1c __ LDA ACCU + 1 
1384 : 69 00 __ ADC #$00
1386 : 85 10 __ STA P3 
1388 : 20 58 0d JSR $0d58 ; (opp::string::+string.s0 + 0)
138b : 20 b2 13 JSR $13b2 ; (Score::updateScore.s0 + 0)
.s1001:
138e : 18 __ __ CLC
138f : a5 23 __ LDA SP + 0 
1391 : 69 0a __ ADC #$0a
1393 : 85 23 __ STA SP + 0 
1395 : 90 02 __ BCC $1399 ; (BearGame::updateGame.s1001 + 11)
1397 : e6 24 __ INC SP + 1 
1399 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::getX: ; BearSprite::getX(const struct BearSprite*)->i16
.s0:
139a : a0 08 __ LDY #$08
139c : b1 0d __ LDA (P0),y ; (this + 0)
139e : 85 1b __ STA ACCU + 0 
13a0 : c8 __ __ INY
13a1 : b1 0d __ LDA (P0),y ; (this + 0)
13a3 : 85 1c __ STA ACCU + 1 
.s1001:
13a5 : 60 __ __ RTS
--------------------------------------------------------------------
BearSprite::getY: ; BearSprite::getY(const struct BearSprite*)->i16
.s0:
13a6 : a0 0a __ LDY #$0a
13a8 : b1 0d __ LDA (P0),y ; (this + 0)
13aa : 85 1b __ STA ACCU + 0 
13ac : c8 __ __ INY
13ad : b1 0d __ LDA (P0),y ; (this + 0)
13af : 85 1c __ STA ACCU + 1 
.s1001:
13b1 : 60 __ __ RTS
--------------------------------------------------------------------
Score::updateScore: ; Score::updateScore(const struct Score*,struct ScoreType)->void
.s0:
13b2 : 18 __ __ CLC
13b3 : a5 23 __ LDA SP + 0 
13b5 : 69 04 __ ADC #$04
13b7 : 85 0d __ STA P0 ; (this + 0)
13b9 : a5 24 __ LDA SP + 1 
13bb : 69 00 __ ADC #$00
13bd : 85 0e __ STA P1 ; (this + 1)
13bf : 20 72 0e JSR $0e72 ; (BearGame::getGameState.s0 + 0)
13c2 : 09 00 __ ORA #$00
13c4 : f0 0d __ BEQ $13d3 ; (Score::updateScore.s3 + 0)
.s1:
13c6 : 20 00 14 JSR $1400 ; (ScoreType::getIsAchieved.s0 + 0)
13c9 : 09 00 __ ORA #$00
13cb : d0 06 __ BNE $13d3 ; (Score::updateScore.s3 + 0)
.s4:
13cd : a9 01 __ LDA #$01
13cf : a0 05 __ LDY #$05
13d1 : 91 23 __ STA (SP + 0),y 
.s3:
13d3 : 20 56 12 JSR $1256 ; (Score::getScore.s0 + 0)
13d6 : a0 02 __ LDY #$02
13d8 : b1 23 __ LDA (SP + 0),y 
13da : 85 43 __ STA T2 + 0 
13dc : c8 __ __ INY
13dd : b1 23 __ LDA (SP + 0),y 
13df : 85 44 __ STA T2 + 1 
13e1 : 18 __ __ CLC
13e2 : 88 __ __ DEY
13e3 : b1 43 __ LDA (T2 + 0),y 
13e5 : 65 1b __ ADC ACCU + 0 
13e7 : 91 43 __ STA (T2 + 0),y 
13e9 : c8 __ __ INY
13ea : b1 43 __ LDA (T2 + 0),y 
13ec : 65 1c __ ADC ACCU + 1 
13ee : 91 43 __ STA (T2 + 0),y 
13f0 : 18 __ __ CLC
13f1 : a5 23 __ LDA SP + 0 
13f3 : 69 08 __ ADC #$08
13f5 : 85 0d __ STA P0 ; (this + 0)
13f7 : a5 24 __ LDA SP + 1 
13f9 : 69 00 __ ADC #$00
13fb : 85 0e __ STA P1 ; (this + 1)
13fd : 4c e3 0c JMP $0ce3 ; (opp::string::~string.s0 + 0)
--------------------------------------------------------------------
ScoreType::getIsAchieved: ; ScoreType::getIsAchieved(const struct ScoreType*)->bool
.s0:
1400 : a0 01 __ LDY #$01
.s1001:
1402 : b1 0d __ LDA (P0),y ; (this + 0)
1404 : 60 __ __ RTS
--------------------------------------------------------------------
Score::getScoreTypes: ; Score::getScoreTypes(const struct Score*)->struct ScoreType*
.s0:
1405 : a0 00 __ LDY #$00
1407 : b1 0d __ LDA (P0),y ; (this + 0)
1409 : 85 1b __ STA ACCU + 0 
140b : c8 __ __ INY
140c : b1 0d __ LDA (P0),y ; (this + 0)
140e : 85 1c __ STA ACCU + 1 
.s1001:
1410 : 60 __ __ RTS
--------------------------------------------------------------------
divmod: ; divmod
1411 : a5 1c __ LDA ACCU + 1 
1413 : d0 31 __ BNE $1446 ; (divmod + 53)
1415 : a5 04 __ LDA WORK + 1 
1417 : d0 1e __ BNE $1437 ; (divmod + 38)
1419 : 85 06 __ STA WORK + 3 
141b : a2 04 __ LDX #$04
141d : 06 1b __ ASL ACCU + 0 
141f : 2a __ __ ROL
1420 : c5 03 __ CMP WORK + 0 
1422 : 90 02 __ BCC $1426 ; (divmod + 21)
1424 : e5 03 __ SBC WORK + 0 
1426 : 26 1b __ ROL ACCU + 0 
1428 : 2a __ __ ROL
1429 : c5 03 __ CMP WORK + 0 
142b : 90 02 __ BCC $142f ; (divmod + 30)
142d : e5 03 __ SBC WORK + 0 
142f : 26 1b __ ROL ACCU + 0 
1431 : ca __ __ DEX
1432 : d0 eb __ BNE $141f ; (divmod + 14)
1434 : 85 05 __ STA WORK + 2 
1436 : 60 __ __ RTS
1437 : a5 1b __ LDA ACCU + 0 
1439 : 85 05 __ STA WORK + 2 
143b : a5 1c __ LDA ACCU + 1 
143d : 85 06 __ STA WORK + 3 
143f : a9 00 __ LDA #$00
1441 : 85 1b __ STA ACCU + 0 
1443 : 85 1c __ STA ACCU + 1 
1445 : 60 __ __ RTS
1446 : a5 04 __ LDA WORK + 1 
1448 : d0 1f __ BNE $1469 ; (divmod + 88)
144a : a5 03 __ LDA WORK + 0 
144c : 30 1b __ BMI $1469 ; (divmod + 88)
144e : a9 00 __ LDA #$00
1450 : 85 06 __ STA WORK + 3 
1452 : a2 10 __ LDX #$10
1454 : 06 1b __ ASL ACCU + 0 
1456 : 26 1c __ ROL ACCU + 1 
1458 : 2a __ __ ROL
1459 : c5 03 __ CMP WORK + 0 
145b : 90 02 __ BCC $145f ; (divmod + 78)
145d : e5 03 __ SBC WORK + 0 
145f : 26 1b __ ROL ACCU + 0 
1461 : 26 1c __ ROL ACCU + 1 
1463 : ca __ __ DEX
1464 : d0 f2 __ BNE $1458 ; (divmod + 71)
1466 : 85 05 __ STA WORK + 2 
1468 : 60 __ __ RTS
1469 : a9 00 __ LDA #$00
146b : 85 05 __ STA WORK + 2 
146d : 85 06 __ STA WORK + 3 
146f : 84 02 __ STY $02 
1471 : a0 10 __ LDY #$10
1473 : 18 __ __ CLC
1474 : 26 1b __ ROL ACCU + 0 
1476 : 26 1c __ ROL ACCU + 1 
1478 : 26 05 __ ROL WORK + 2 
147a : 26 06 __ ROL WORK + 3 
147c : 38 __ __ SEC
147d : a5 05 __ LDA WORK + 2 
147f : e5 03 __ SBC WORK + 0 
1481 : aa __ __ TAX
1482 : a5 06 __ LDA WORK + 3 
1484 : e5 04 __ SBC WORK + 1 
1486 : 90 04 __ BCC $148c ; (divmod + 123)
1488 : 86 05 __ STX WORK + 2 
148a : 85 06 __ STA WORK + 3 
148c : 88 __ __ DEY
148d : d0 e5 __ BNE $1474 ; (divmod + 99)
148f : 26 1b __ ROL ACCU + 0 
1491 : 26 1c __ ROL ACCU + 1 
1493 : a4 02 __ LDY $02 
1495 : 60 __ __ RTS
--------------------------------------------------------------------
malloc: ; malloc
1496 : 18 __ __ CLC
1497 : a5 1b __ LDA ACCU + 0 
1499 : 69 02 __ ADC #$02
149b : 85 03 __ STA WORK + 0 
149d : a5 1c __ LDA ACCU + 1 
149f : 69 00 __ ADC #$00
14a1 : 85 04 __ STA WORK + 1 
14a3 : ad ec 16 LDA $16ec ; (HeapNode + 2)
14a6 : d0 1f __ BNE $14c7 ; (malloc + 49)
14a8 : a9 00 __ LDA #$00
14aa : 8d f0 16 STA $16f0 
14ad : 8d f1 16 STA $16f1 
14b0 : ee ec 16 INC $16ec ; (HeapNode + 2)
14b3 : a9 f0 __ LDA #$f0
14b5 : 8d ea 16 STA $16ea ; (HeapNode + 0)
14b8 : a9 16 __ LDA #$16
14ba : 8d eb 16 STA $16eb ; (HeapNode + 1)
14bd : a9 00 __ LDA #$00
14bf : 8d f2 16 STA $16f2 
14c2 : a9 90 __ LDA #$90
14c4 : 8d f3 16 STA $16f3 
14c7 : a9 ea __ LDA #$ea
14c9 : a2 16 __ LDX #$16
14cb : 85 1d __ STA ACCU + 2 
14cd : 86 1e __ STX ACCU + 3 
14cf : 18 __ __ CLC
14d0 : a0 00 __ LDY #$00
14d2 : b1 1d __ LDA (ACCU + 2),y 
14d4 : 85 1b __ STA ACCU + 0 
14d6 : 65 03 __ ADC WORK + 0 
14d8 : 85 05 __ STA WORK + 2 
14da : c8 __ __ INY
14db : b1 1d __ LDA (ACCU + 2),y 
14dd : 85 1c __ STA ACCU + 1 
14df : f0 18 __ BEQ $14f9 ; (malloc + 99)
14e1 : 65 04 __ ADC WORK + 1 
14e3 : 85 06 __ STA WORK + 3 
14e5 : a0 02 __ LDY #$02
14e7 : b1 1b __ LDA (ACCU + 0),y 
14e9 : c5 05 __ CMP WORK + 2 
14eb : c8 __ __ INY
14ec : b1 1b __ LDA (ACCU + 0),y 
14ee : e5 06 __ SBC WORK + 3 
14f0 : b0 08 __ BCS $14fa ; (malloc + 100)
14f2 : a5 1b __ LDA ACCU + 0 
14f4 : a6 1c __ LDX ACCU + 1 
14f6 : 4c cb 14 JMP $14cb ; (malloc + 53)
14f9 : 60 __ __ RTS
14fa : 18 __ __ CLC
14fb : a5 05 __ LDA WORK + 2 
14fd : 69 03 __ ADC #$03
14ff : 29 fc __ AND #$fc
1501 : 85 07 __ STA WORK + 4 
1503 : a5 06 __ LDA WORK + 3 
1505 : 69 00 __ ADC #$00
1507 : 85 08 __ STA WORK + 5 
1509 : a0 02 __ LDY #$02
150b : a5 07 __ LDA WORK + 4 
150d : d1 1b __ CMP (ACCU + 0),y 
150f : d0 15 __ BNE $1526 ; (malloc + 144)
1511 : c8 __ __ INY
1512 : a5 08 __ LDA WORK + 5 
1514 : d1 1b __ CMP (ACCU + 0),y 
1516 : d0 0e __ BNE $1526 ; (malloc + 144)
1518 : a0 00 __ LDY #$00
151a : b1 1b __ LDA (ACCU + 0),y 
151c : 91 1d __ STA (ACCU + 2),y 
151e : c8 __ __ INY
151f : b1 1b __ LDA (ACCU + 0),y 
1521 : 91 1d __ STA (ACCU + 2),y 
1523 : 4c 43 15 JMP $1543 ; (malloc + 173)
1526 : a0 00 __ LDY #$00
1528 : b1 1b __ LDA (ACCU + 0),y 
152a : 91 07 __ STA (WORK + 4),y 
152c : a5 07 __ LDA WORK + 4 
152e : 91 1d __ STA (ACCU + 2),y 
1530 : c8 __ __ INY
1531 : b1 1b __ LDA (ACCU + 0),y 
1533 : 91 07 __ STA (WORK + 4),y 
1535 : a5 08 __ LDA WORK + 5 
1537 : 91 1d __ STA (ACCU + 2),y 
1539 : c8 __ __ INY
153a : b1 1b __ LDA (ACCU + 0),y 
153c : 91 07 __ STA (WORK + 4),y 
153e : c8 __ __ INY
153f : b1 1b __ LDA (ACCU + 0),y 
1541 : 91 07 __ STA (WORK + 4),y 
1543 : a0 00 __ LDY #$00
1545 : a5 05 __ LDA WORK + 2 
1547 : 91 1b __ STA (ACCU + 0),y 
1549 : c8 __ __ INY
154a : a5 06 __ LDA WORK + 3 
154c : 91 1b __ STA (ACCU + 0),y 
154e : a5 1b __ LDA ACCU + 0 
1550 : 09 02 __ ORA #$02
1552 : 85 1b __ STA ACCU + 0 
1554 : 60 __ __ RTS
--------------------------------------------------------------------
free: ; free
1555 : a5 1b __ LDA ACCU + 0 
1557 : 29 fc __ AND #$fc
1559 : 85 1b __ STA ACCU + 0 
155b : 05 1c __ ORA ACCU + 1 
155d : d0 01 __ BNE $1560 ; (free + 11)
155f : 60 __ __ RTS
1560 : 18 __ __ CLC
1561 : a0 00 __ LDY #$00
1563 : b1 1b __ LDA (ACCU + 0),y 
1565 : 69 03 __ ADC #$03
1567 : 29 fc __ AND #$fc
1569 : 85 1d __ STA ACCU + 2 
156b : c8 __ __ INY
156c : b1 1b __ LDA (ACCU + 0),y 
156e : 69 00 __ ADC #$00
1570 : 85 1e __ STA ACCU + 3 
1572 : a9 ea __ LDA #$ea
1574 : a2 16 __ LDX #$16
1576 : 85 05 __ STA WORK + 2 
1578 : 86 06 __ STX WORK + 3 
157a : a0 01 __ LDY #$01
157c : b1 05 __ LDA (WORK + 2),y 
157e : f0 28 __ BEQ $15a8 ; (free + 83)
1580 : aa __ __ TAX
1581 : 88 __ __ DEY
1582 : b1 05 __ LDA (WORK + 2),y 
1584 : e4 1e __ CPX ACCU + 3 
1586 : 90 ee __ BCC $1576 ; (free + 33)
1588 : d0 1e __ BNE $15a8 ; (free + 83)
158a : c5 1d __ CMP ACCU + 2 
158c : 90 e8 __ BCC $1576 ; (free + 33)
158e : d0 18 __ BNE $15a8 ; (free + 83)
1590 : a0 00 __ LDY #$00
1592 : b1 1d __ LDA (ACCU + 2),y 
1594 : 91 1b __ STA (ACCU + 0),y 
1596 : c8 __ __ INY
1597 : b1 1d __ LDA (ACCU + 2),y 
1599 : 91 1b __ STA (ACCU + 0),y 
159b : c8 __ __ INY
159c : b1 1d __ LDA (ACCU + 2),y 
159e : 91 1b __ STA (ACCU + 0),y 
15a0 : c8 __ __ INY
15a1 : b1 1d __ LDA (ACCU + 2),y 
15a3 : 91 1b __ STA (ACCU + 0),y 
15a5 : 4c bd 15 JMP $15bd ; (free + 104)
15a8 : a0 00 __ LDY #$00
15aa : b1 05 __ LDA (WORK + 2),y 
15ac : 91 1b __ STA (ACCU + 0),y 
15ae : c8 __ __ INY
15af : b1 05 __ LDA (WORK + 2),y 
15b1 : 91 1b __ STA (ACCU + 0),y 
15b3 : c8 __ __ INY
15b4 : a5 1d __ LDA ACCU + 2 
15b6 : 91 1b __ STA (ACCU + 0),y 
15b8 : c8 __ __ INY
15b9 : a5 1e __ LDA ACCU + 3 
15bb : 91 1b __ STA (ACCU + 0),y 
15bd : a0 02 __ LDY #$02
15bf : b1 05 __ LDA (WORK + 2),y 
15c1 : c5 1b __ CMP ACCU + 0 
15c3 : d0 1d __ BNE $15e2 ; (free + 141)
15c5 : c8 __ __ INY
15c6 : b1 05 __ LDA (WORK + 2),y 
15c8 : c5 1c __ CMP ACCU + 1 
15ca : d0 16 __ BNE $15e2 ; (free + 141)
15cc : a0 00 __ LDY #$00
15ce : b1 1b __ LDA (ACCU + 0),y 
15d0 : 91 05 __ STA (WORK + 2),y 
15d2 : c8 __ __ INY
15d3 : b1 1b __ LDA (ACCU + 0),y 
15d5 : 91 05 __ STA (WORK + 2),y 
15d7 : c8 __ __ INY
15d8 : b1 1b __ LDA (ACCU + 0),y 
15da : 91 05 __ STA (WORK + 2),y 
15dc : c8 __ __ INY
15dd : b1 1b __ LDA (ACCU + 0),y 
15df : 91 05 __ STA (WORK + 2),y 
15e1 : 60 __ __ RTS
15e2 : a0 00 __ LDY #$00
15e4 : a5 1b __ LDA ACCU + 0 
15e6 : 91 05 __ STA (WORK + 2),y 
15e8 : c8 __ __ INY
15e9 : a5 1c __ LDA ACCU + 1 
15eb : 91 05 __ STA (WORK + 2),y 
15ed : 60 __ __ RTS
--------------------------------------------------------------------
spentry:
15ee : __ __ __ BYT 00                                              : .
--------------------------------------------------------------------
giocharmap:
15ef : __ __ __ BYT 01                                              : .
--------------------------------------------------------------------
opp::cout:
15f0 : __ __ __ BYT 00 00 00 00 00 00 00                            : .......
--------------------------------------------------------------------
vspriteScreen:
15f7 : __ __ __ BSS	2
--------------------------------------------------------------------
joyy:
15f9 : __ __ __ BSS	2
--------------------------------------------------------------------
joyx:
15fb : __ __ __ BSS	2
--------------------------------------------------------------------
joyb:
15fd : __ __ __ BSS	2
--------------------------------------------------------------------
sp_data:
1600 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 28 a4 20 2a : ............(. *
1610 : __ __ __ BYT a9 60 0a a5 60 0a a5 60 0a aa 60 02 ef 40 02 ef : .`..`..`..`..@..
1620 : __ __ __ BYT 80 02 aa a0 0a 85 90 0a a5 50 0a a6 60 02 a9 40 : .........P..`..@
1630 : __ __ __ BYT 01 55 40 00 55 00 00 28 00 00 00 00 00 00 00 98 : .U@.U..(........
1640 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 38 00 38 24 10 48 20 : .........8.8$.H 
1650 : __ __ __ BYT 10 08 39 87 18 01 01 00 01 00 00 00 28 00 04 6c : ..9.........(..l
1660 : __ __ __ BYT 20 04 00 20 08 38 10 08 10 10 08 92 10 04 7c 20 :  .. .8........| 
1670 : __ __ __ BYT 04 00 20 03 81 c0 00 7e 00 00 00 00 00 00 00 10 : .. ....~........
--------------------------------------------------------------------
mul40:
1680 : __ __ __ BYT 00 00 28 00 50 00 78 00 a0 00 c8 00 f0 00 18 01 : ..(.P.x.........
1690 : __ __ __ BYT 40 01 68 01 90 01 b8 01 e0 01 08 02 30 02 58 02 : @.h.........0.X.
16a0 : __ __ __ BYT 80 02 a8 02 d0 02 f8 02 20 03 48 03 70 03 98 03 : ........ .H.p...
16b0 : __ __ __ BYT c0 03                                           : ..
--------------------------------------------------------------------
bitshift:
16b2 : __ __ __ BYT 00 00 00 00 00 00 00 00 01 02 04 08 10 20 40 80 : ............. @.
16c2 : __ __ __ BYT 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 : ................
16d2 : __ __ __ BYT 80 40 20 10 08 04 02 01 00 00 00 00 00 00 00 00 : .@ .............
16e2 : __ __ __ BYT 00 00 00 00 00 00 00 00                         : ........
--------------------------------------------------------------------
HeapNode:
16ea : __ __ __ BSS	4

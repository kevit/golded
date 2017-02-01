; $Id: 1251_i-5.chs,v 1.1 2006/01/06 22:20:31 stas_degteff Exp $
; This file is a charset conversion module for Golded+
; Source charset is CP1251, 8-bit russian charset (Windows ANSI)
; Destination charset is ISO8859-5, 8-bit russian charset
;
; Copyleft (c) Stas Degteff 2:5080/102@fidonet stas_degteff@users.sourceforge.net
;
; Format: ID, version, level,
;         from charset, to charset,
;         128 entries: first & second byte
;	  "END"
; Lines beginning with a ";" or a ";" after the entries are comments
;
; Unkown characters are mapped to the "?" character.
;
; \ is the escape character: \0 means decimal zero,
; \dnnn where nnn is a decimal number is the ordinal value of the character
; \xnn where nn is a hexadecimal number
; e.g.: \d32 is the ASCII space character
; Two \\ is the character "\" itself.
;
0
0
;
2
cp1251	; from charset
iso8859-5	; to charset
;
\0 \xa2	; CYRILLIC CAPITAL LETTER DJE
\0 \xa3	; CYRILLIC CAPITAL LETTER GJE
\0 \x2c	; COMMA
\0 \xf3	; CYRILLIC SMALL LETTER GJE
\x2c \x2c	; COMMA + COMMA
\x2e \x2e \x2e	; FULL STOP + FULL STOP + FULL STOP
\0 ?	; (DAGGER)
\0 ?	; (DOUBLE DAGGER)
\0 ?	; (EURO SIGN)
\0 ?	; (PER MILLE SIGN)
\0 \xa9	; CYRILLIC CAPITAL LETTER LJE
\0 ?	; (SINGLE LEFT-POINTING ANGLE QUOTATION MARK)
\0 \xaa	; CYRILLIC CAPITAL LETTER NJE
\0 \xac	; CYRILLIC CAPITAL LETTER KJE
\0 \xab	; CYRILLIC CAPITAL LETTER TSHE
\0 \xaf	; CYRILLIC CAPITAL LETTER DZHE
\0 \xf2	; CYRILLIC SMALL LETTER DJE
\0 \x27	; APOSTROPHE
\0 \x27	; APOSTROPHE
\0 \x22	; QUOTATION MARK
\0 \x22	; QUOTATION MARK
\0 ?	; (BULLET)
\0 ?	; (EN DASH)
\0 ?	; (EM DASH)
\0 ?	; not defined
\x54 \x4d	; LATIN CAPITAL LETTER T + LATIN CAPITAL LETTER M
\0 \xf9	; CYRILLIC SMALL LETTER LJE
\0 ?	; (SINGLE RIGHT-POINTING ANGLE QUOTATION MARK)
\0 \xfa	; CYRILLIC SMALL LETTER NJE
\0 \xfc	; CYRILLIC SMALL LETTER KJE
\0 \xfb	; CYRILLIC SMALL LETTER TSHE
\0 \xff	; CYRILLIC SMALL LETTER DZHE
\0 \xa0	; NO-BREAK SPACE
\0 \xae	; CYRILLIC CAPITAL LETTER SHORT U
\0 \xfe	; CYRILLIC SMALL LETTER SHORT U
\0 \xa8	; CYRILLIC CAPITAL LETTER JE
\0 ?	; (CURRENCY SIGN)
\0 \xb3	; CYRILLIC CAPITAL LETTER GHE [WITH UPTURN]
\0 ?	; (BROKEN BAR)
\0 \xfd	; SECTION SIGN
\0 \xa1	; CYRILLIC CAPITAL LETTER IO
\x28 \x43 \x29	; LEFT PARENTHESIS + LATIN CAPITAL LETTER C + RIGHT PARENTHESIS
\0 \xa4	; CYRILLIC CAPITAL LETTER UKRAINIAN IE
\x3c \x3c	; LESS-THAN SIGN + LESS-THAN SIGN
\0 ?	; (NOT SIGN)
\0 \xad	; SOFT HYPHEN
\x28 \x52 \x29	; LEFT PARENTHESIS + LATIN CAPITAL LETTER R + RIGHT PARENTHESIS
\0 \xa7	; CYRILLIC CAPITAL LETTER YI
\0 ?	; (DEGREE SIGN)
\x2b \x2d	; PLUS SIGN + HYPHEN-MINUS
\0 \xa6	; CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
\0 \xf6	; CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
\0 \xd3	; CYRILLIC SMALL LETTER GHE [WITH UPTURN]
\0 ?	; (MICRO SIGN)
\0 ?	; (PILCROW SIGN)
\0 ?	; (MIDDLE DOT)
\0 \xf1	; CYRILLIC SMALL LETTER IO
\0 \xf0	; NUMERO SIGN
\0 \xf4	; CYRILLIC SMALL LETTER UKRAINIAN IE
\x3e \x3e	; GREATER-THAN SIGN + GREATER-THAN SIGN
\0 \xf8	; CYRILLIC SMALL LETTER JE
\0 \xa5	; CYRILLIC CAPITAL LETTER DZE
\0 \xf5	; CYRILLIC SMALL LETTER DZE
\0 \xf7	; CYRILLIC SMALL LETTER YI
\0 \xb0	; CYRILLIC CAPITAL LETTER A
\0 \xb1	; CYRILLIC CAPITAL LETTER BE
\0 \xb2	; CYRILLIC CAPITAL LETTER VE
\0 \xb3	; CYRILLIC CAPITAL LETTER GHE
\0 \xb4	; CYRILLIC CAPITAL LETTER DE
\0 \xb5	; CYRILLIC CAPITAL LETTER IE
\0 \xb6	; CYRILLIC CAPITAL LETTER ZHE
\0 \xb7	; CYRILLIC CAPITAL LETTER ZE
\0 \xb8	; CYRILLIC CAPITAL LETTER I
\0 \xb9	; CYRILLIC CAPITAL LETTER SHORT I
\0 \xba	; CYRILLIC CAPITAL LETTER KA
\0 \xbb	; CYRILLIC CAPITAL LETTER EL
\0 \xbc	; CYRILLIC CAPITAL LETTER EM
\0 \xbd	; CYRILLIC CAPITAL LETTER EN
\0 \xbe	; CYRILLIC CAPITAL LETTER O
\0 \xbf	; CYRILLIC CAPITAL LETTER PE
\0 \xc0	; CYRILLIC CAPITAL LETTER ER
\0 \xc1	; CYRILLIC CAPITAL LETTER ES
\0 \xc2	; CYRILLIC CAPITAL LETTER TE
\0 \xc3	; CYRILLIC CAPITAL LETTER U
\0 \xc4	; CYRILLIC CAPITAL LETTER EF
\0 \xc5	; CYRILLIC CAPITAL LETTER HA
\0 \xc6	; CYRILLIC CAPITAL LETTER TSE
\0 \xc7	; CYRILLIC CAPITAL LETTER CHE
\0 \xc8	; CYRILLIC CAPITAL LETTER SHA
\0 \xc9	; CYRILLIC CAPITAL LETTER SHCHA
\0 \xca	; CYRILLIC CAPITAL LETTER HARD SIGN
\0 \xcb	; CYRILLIC CAPITAL LETTER YERU
\0 \xcc	; CYRILLIC CAPITAL LETTER SOFT SIGN
\0 \xcd	; CYRILLIC CAPITAL LETTER E
\0 \xce	; CYRILLIC CAPITAL LETTER YU
\0 \xcf	; CYRILLIC CAPITAL LETTER YA
\0 \xd0	; CYRILLIC SMALL LETTER A
\0 \xd1	; CYRILLIC SMALL LETTER BE
\0 \xd2	; CYRILLIC SMALL LETTER VE
\0 \xd3	; CYRILLIC SMALL LETTER GHE
\0 \xd4	; CYRILLIC SMALL LETTER DE
\0 \xd5	; CYRILLIC SMALL LETTER IE
\0 \xd6	; CYRILLIC SMALL LETTER ZHE
\0 \xd7	; CYRILLIC SMALL LETTER ZE
\0 \xd8	; CYRILLIC SMALL LETTER I
\0 \xd9	; CYRILLIC SMALL LETTER SHORT I
\0 \xda	; CYRILLIC SMALL LETTER KA
\0 \xdb	; CYRILLIC SMALL LETTER EL
\0 \xdc	; CYRILLIC SMALL LETTER EM
\0 \xdd	; CYRILLIC SMALL LETTER EN
\0 \xde	; CYRILLIC SMALL LETTER O
\0 \xdf	; CYRILLIC SMALL LETTER PE
\0 \xe0	; CYRILLIC SMALL LETTER ER
\0 \xe1	; CYRILLIC SMALL LETTER ES
\0 \xe2	; CYRILLIC SMALL LETTER TE
\0 \xe3	; CYRILLIC SMALL LETTER U
\0 \xe4	; CYRILLIC SMALL LETTER EF
\0 \xe5	; CYRILLIC SMALL LETTER HA
\0 \xe6	; CYRILLIC SMALL LETTER TSE
\0 \xe7	; CYRILLIC SMALL LETTER CHE
\0 \xe8	; CYRILLIC SMALL LETTER SHA
\0 \xe9	; CYRILLIC SMALL LETTER SHCHA
\0 \xea	; CYRILLIC SMALL LETTER HARD SIGN
\0 \xeb	; CYRILLIC SMALL LETTER YERU
\0 \xec	; CYRILLIC SMALL LETTER SOFT SIGN
\0 \xed	; CYRILLIC SMALL LETTER E
\0 \xee	; CYRILLIC SMALL LETTER YU
\0 \xef	; CYRILLIC SMALL LETTER YA
END

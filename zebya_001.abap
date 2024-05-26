*&---------------------------------------------------------------------*
*& Report  ZEBYA_001
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zebya_001.

DATA text1 TYPE c LENGTH 5.
DATA text2(5) TYPE c.

DATA number(5) TYPE n.

DATA int TYPE i.

DATA: data TYPE d VALUE '20240110', "YYYYMMDD"
      time TYPE t.

DATA: gv_text(5) TYPE c,
      gv_result TYPE p LENGTH 5 DECIMALS 3,
      gv_string TYPE string.

gv_text = 'AKSAN'.
int = 5000.

WRITE: gv_text, /.


****MATEMATİKSEL İŞLEMLER****

DATA: gv_sonuc TYPE p LENGTH 5 DECIMALS 2,
      gv_num1 TYPE i VALUE 5,
      gv_num2 TYPE i VALUE 4.

*1-TOPLAMA
gv_sonuc = gv_num1 + gv_num2.
WRITE: 'Toplama İşlemi Sonucu: ', gv_sonuc, /.

*2-ÇIKARMA
gv_sonuc = gv_num1 - gv_num2.
WRITE: 'Çıkarma İşlemi Sonucu: ', gv_sonuc, /.

*3-ÇARPMA
gv_sonuc = gv_num1 * gv_num2.
WRITE: 'Çarpma İşlemi Sonucu: ', gv_sonuc, /.

*4-BÖLME
gv_sonuc = gv_num1 / gv_num2.
WRITE: 'Bölme İşlemi Sonucu: ', gv_sonuc, /.

*5-ÜS ALMA
gv_sonuc = gv_num1 ** gv_num2.

WRITE: gv_num1, ' üssü ', gv_num2, ' eşittir ', gv_sonuc, /.

*6-MOD ALMA
gv_sonuc = gv_num1 MOD gv_num2.
WRITE: gv_num1, 'in ', gv_num2, 'e bölümünden kalan: ', gv_sonuc, /.

*Karşılaştırma Operatörleri
IF gv_num1 > gv_num2.
  WRITE: gv_num1, gv_num2, 'den büyüktür.', /.
ELSE.
  WRITE: gv_num1, gv_num2, 'den küçüktür.', /.
ENDIF.

*< LT   Less Then
*> GT   Greater Then
*<= LE  Less Equal
*>= GE  Greater Equal
*=  EQ  Equal
*<> NE  Not Equal

IF gv_num1 LT gv_num2 OR gv_num1 EQ gv_num2.
  WRITE 'TRUE'.
ELSE.
  WRITE: 'FALSE', /.
ENDIF.

*OR - VEYA
*AND - VE
*NOT - DEĞİL

*CASE WHEN

DATA: gv_day TYPE n VALUE '3'.

CASE gv_day.
  WHEN '1'.
    WRITE: 'Bugün günlerden Pazartesi', /.
  WHEN '2'.
    WRITE: 'Bugün günlerden Salı', /.
  WHEN '3'.
    WRITE: 'Bugün günlerden Çarşamba', /.
  WHEN '4'.
    WRITE: 'Bugün günlerden Perşembe', /.
  WHEN '5'.
    WRITE: 'Bugün günlerden Cuma', /.
  WHEN '6'.
    WRITE: 'Bugün günlerden Cumartesi', /.
  WHEN '7'.
    WRITE: 'Bugün günlerden Pazar', /.
  WHEN OTHERS.
    WRITE: 'hatalı gün seçimi!', /.
ENDCASE.

*TYPES VE LIKE

TYPES:  gty_name(20),
        gty_phone(10) TYPE n,
        gty_tckn(11),
        gty_result(5) TYPE p DECIMALS 2.

DATA: gv_name TYPE gty_name,
      gv_surname TYPE gty_name.

DATA: gv_name2 LIKE gv_name.


*TYPE .......... = değişken belirtmeni bekliyor
*LIKE .......... = data belirtmeni bekliyor

*TYPE-POOLS

*BOŞLUK BIRAKMADAN YAZMA

WRITE: 'No' NO-GAP, 'Gap' NO-GAP, 'AKSAN'.

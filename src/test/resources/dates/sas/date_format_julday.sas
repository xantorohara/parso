options bufsize=8192 pagesize=100;

data dev.date_format_julday(drop=v);
    format JULDAY JULDAY. JULDAY3 JULDAY3. JULDAY4 JULDAY4. JULDAY32 JULDAY32.;

    input v DATE9.;
    JULDAY=v; JULDAY3=v; JULDAY4=v; JULDAY32=v;
    datalines;
01JAN1582
31DEC1582
31DEC1959
01JAN1960
31DEC1969
01JAN1970
01JAN9999
31DEC9999

30NOV2019
25OCT2019
22SEP2019
19AUG2019
15JUL2019
13JUN2019
10MAY2019
09APR2019
02MAR2019
01FEB2019
;
run;
#include <stdio.h>
#include "hcode.h"
extern int prstat;
extern unsigned long int convtr();
extern unsigned long int convk8();
extern unsigned long int convh3();


/* ------------------------------------------------------
	Hangul Output Routine
	pr2m - KS, TR, KS8 and ISO
	pr3b - print keys come from Trigem code: NByte, Rom, and Key.
	prstat : PRNONE - No Hangul has been printed
	     : PRINTING - Hangul Printing operation
	     : PRINTED - at least one Hangul was printed
  ------------------------------------------------------- */


void pr2m(wc, fpout, outCode)
unsigned long int wc;
FILE *fpout;
int outCode;
{
	static unsigned long int (*conv)();
	static unsigned int MSB=0xff;
        static unsigned char StartC=NULL, EndC=NULL;

	if ( prstat == PRNONE ) {
		prstat = PRENG;
        	if (outCode==IS||outCode==SD) {
			MSB = 0x7f;
			StartC = '\016';
			EndC = '\017';
		}
		if ( outCode == TR ) 
			conv = convtr;
		else if ( outCode == H3 )
			conv = convh3;
		else
			conv = convk8;
	}

        if ( wc>>8 == 0 ) {
                if (prstat==PRINTING && EndC!=NULL) putc(EndC,fpout);
                if (prstat == PRINTING) prstat = PRINTED;
		if ( wc == StartC ) putc((char)wc,fpout);
                putc((char)wc,fpout);
                return;
        }

        if ( prstat == PRENG && (outCode==IS||outCode==SD) ) {
		fputs("\033$)C\n",fpout);
		putc(StartC,fpout);
	}

	wc = (*conv)(wc);

	if ( prstat == PRINTED && StartC != NULL )
		putc(StartC,fpout);

	if ( wc>>16 == 0 ||  wc>>16 == 0x8ffb ) {	/* TR, KS */
		fprintf(fpout,"%c%c",(char)(wc>>8)&MSB, (char)wc&MSB);
	} else if (wc>>24 == 0x8f) {			/* han3 */
	     fprintf(fpout,"%c%c%c%c",(char)0x8f,(char)(wc>>16)&0xff,
                                      (char)(wc>>8)&0xff,(char)wc&0xff);
	} else {					/* KS8 */
		fprintf(fpout,"%c%c",(char)0xa4&MSB, (char)0xd4&MSB);
		fprintf(fpout,"%c%c",(char)0xa4&MSB, (char)(wc>>16)&MSB);
		fprintf(fpout,"%c%c",(char)0xa4&MSB, (char)(wc>>8)&MSB);
		fprintf(fpout,"%c%c",(char)0xa4&MSB, (char)wc&MSB);
	}
	prstat=PRINTING;
}

#include "h3Bcode.h"
void pr3b(wc, fpout, outCode)
unsigned long int wc;
FILE *fpout;
int outCode;
{
	static int C;
        int ch,ju,jo;
	static unsigned char StartC=NULL, EndC=NULL;

        if ( prstat == PRNONE ) {
        	C=outCode-NB;
		StartC = StartCode[C];
		EndC = EndCode[C];
		prstat = PRENG;
        }

        if ( wc>>8 == 0 ) {
                if (prstat == PRINTING && EndC != NULL) putc(EndC,fpout);
		if (prstat == PRINTING) prstat = PRINTED;
		if ( wc == StartC ) putc((char)wc,fpout);
                putc((char)wc,fpout);
                return;
        }

	wc = convtr(wc);

	ch = ( wc >> 10 ) & 0x1f;
	ju = ( wc >>  5 ) & 0x1f;
	jo = ( wc       ) & 0x1f;
	if ( ch==01 || ju==02 ) {
		if (prstat == PRINTING)
			fprintf(fpout,"%c%c",EndC,StartC);
		else if ( prstat == PRINTED || prstat == PRENG )
			putc(StartC,fpout);
		if ( ju==2 && jo!=1 )		/* Nbyte Final Only */
			fprintf(fpout,"%s%s%s%c",Jamo[C][0][ch],
			NbFinalOnly[C],Jamo[C][2][jo],EndC);
		else 
			fprintf(fpout,"%s%s%s%c",Jamo[C][0][ch],
			Jamo[C][1][ju],Jamo[C][2][jo],EndC);
		prstat = PRINTED;
	} else {
		if (prstat == PRINTING && outCode==RO)
			fprintf(fpout,"-");
		else if ( prstat == PRINTED || prstat == PRENG )
			putc(StartC,fpout);
		fprintf(fpout,"%s%s%s",Jamo[C][0][ch],
			Jamo[C][1][ju],Jamo[C][2][jo]);
		prstat = PRINTING;
	}
}

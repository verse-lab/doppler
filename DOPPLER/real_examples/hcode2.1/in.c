/* ***********************************************************
		Trigem Code Input Section
*********************************************************** */
unsigned long int gettr(c)
unsigned char c;
{
	static unsigned long int first=0;
	unsigned long int tmp;

	if ( first == 0 ) {
		if ( c<0x80 )			/* ASC */
			return c;
		first = c;			/* First Byte */
		return 0;
	}

	tmp = (first<<8) + c;			/* Second Byte */
	first = 0;
	return tmp;
}


/* ***********************************************************
		KS5601, Han3 Code Input Section
*********************************************************** */
unsigned long int getks(c)
unsigned char c;
{
	static unsigned long int first=0, all=0, a4=0;
	unsigned long int tmp;
	
	if ( c<0x80 ) {				/* ASC */
		first = 0;
		return c;
	}

	if ( first == 0 ) {			/* First MSB Char */
		first = c;
		return 0;
	} else if ( first == 0xa4 ) {
		if ( c == 0xd4 ) {		/* KSC FILL */
			first = 0xd4;
			return 0;
		} else {			/* Separate Jamo */
			first = 0;
			return (0x8ffba400L) + c;
		}
	} else if ( first==0x8f || first==0xd4 ) {	/* han3 or KS-8 */
		if ( first==0x8f || a4==1 ) {
			all = (all<<8) + c;
			a4 = 0;
		} else if ( c == 0xa4 ) {
			a4 = 1;
		}
		if ( all <= 0xffff ) {
			return 0;
		} else {
			tmp = (first<<24) + all;
			all = 0;
			first = 0;
			return tmp;
		}
	} else {				/* Usual 2byte KSC */
		tmp = (0x8ffb0000L) + (first<<8) + c;
		first = 0;
		return tmp;
	}
}


/* ***********************************************************
		ISO-2022-KR Code Input Section
*********************************************************** */
#define SO '\016'
#define SI '\017'
#define SP '\040'
#define TAB '\011'
unsigned long int getiso(c)
unsigned char c;
{
	static int shift=0;
	if ( shift == 0 && c != SO ) {
		return c;
	} else if ( shift == 0 ) {
		shift = 1;
		return 0;
	} else if ( shift ==1 && c == SO ) {
		shift = 0;
		return c;
	} else if ( shift == 1 && c == SI ) {
		shift = 0;
		return 0;
	} else if ( c == SP || c == TAB ) {
		return c;
	} else {
		return getks(c|0x80);
	}
}

/* ***********************************************************
		N-Byte Code Input Section

	Hangul Char in Multibyte is defined like 
		(C*   V+   C*)  (C   V+  C*) *    (C  {V+|EOF} )
	Pointer  1    p1   p2        p3
	Next_Step                1   p1  p2        p3
*********************************************************** */

#include  "hcode.h"
extern int inNB;
extern int isCV();
extern int strNcmp();
extern unsigned long int NbCode();

unsigned long int getnb(c)
unsigned char c;
{
	static int mulstat=MULNONE;
	static unsigned char buf[20];
	static int p1,p2;
	unsigned long int getone;
	int checkCV;

	if ( mulstat == MULNONE ) {
		if ( c == StartCode[inNB] ) {
			mulstat = MULSTART;
			return 0;
		} else
			return c;
	}

	getone = 0;
	if ( (checkCV=isCV(c)) == 1 ) {
		buf[++buf[0]] = c;
		if ( mulstat == MULSTART ) {
			mulstat = MULC;
		} else if ( mulstat == MULCV ) {
			p2 = buf[0]; mulstat = MULCVC;
		}
	} else if ( checkCV == 2 ) {
		buf[++buf[0]] = c;
		if ( mulstat == MULSTART ) {
			p1 = 1; mulstat = MULCV;
		} else if ( mulstat == MULC ) {
			p1 = buf[0]; mulstat = MULCV;
		} else if ( mulstat == MULCVC ) {
			getone = NbCode(buf, p1,p2,(int)(buf[0]-1));
			buf[1] = buf[buf[0]-1];
			buf[2] = buf[buf[0]];
			buf[0] = 2; p1 = 2; p2 = p1;
			mulstat = MULCV;
		}
	} else if ( c==EndCode[inNB] && mulstat==MULSTART && inNB==(RO-NB)) {
			mulstat = MULNONE;
			return 0xb441;			/* {} = I-Eung */
	} else if ( c==EndCode[inNB] && mulstat==MULSTART ) {
			mulstat = MULNONE;
			return 0x8441;			/* Else ^N^O=NULL */
	} else if ( c==EndCode[inNB] ) {
		if ( mulstat == MULC )  p1 = p2 =  buf[0]+1;
		else if ( mulstat == MULCV )  p2 = buf[0]+1;
		getone = NbCode(buf,p1,p2,(int)(buf[0]+1));
		buf[0] = 0; mulstat = MULNONE;
	} else if ( c == StartCode[inNB] ) {
		getone = c;
		buf[0] = 0; mulstat = MULNONE;
	} else if ( c == NbFinalOnly[inNB][0] ) {
		p1 = p2 = buf[0]+1; mulstat = MULCV;
	} else if ( checkCV == 0 ) {
		if ( mulstat == MULC )  p1 = p2 =  buf[0]+1;
		else if ( mulstat == MULCV )  p2 = buf[0]+1;
		getone = NbCode(buf,p1,p2,(int)(buf[0]+1));
		buf[0] = 0; mulstat = MULSTART;
	}
	return getone;
}


static int KeyCV[]={1,2,1,1,1,1,1,2,2,2,2,2,2,2,2,2,1,1,1,1,2,1,1,1,2,1};
static int RomCV[]={2,0,1,0,2,0,1,1,2,0,1,1,1,1,2,1,0,1,1,1,2,0,2,0,2,0};
                  /*A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z*/
int isCV(c)
unsigned char c;
{
	if ( inNB == 0 ) {				/* N-byte */
		if (c>='A'&&c<='^') return 1;
		if (c>='b'&&c<='|') return 2;
		return 0;
	} else if ( inNB == 1 ) {			/* Key Sim */
		if ( c>='A'&&c<='z')
			return KeyCV[(c&0xdf)-'A'];
		else
			return 0;
	} else {
		if ( c>='A'&&c<='z')
			return RomCV[(c&0xdf)-'A'];
		else if ( c=='@' )
			return 1;
		else
			return 0;
	}
}		

int strNcmp(test,table,size)
unsigned char test[], table[];
int size;
{	int i;
	if ( inNB != RO-NB ) {
		for ( i=0; i<size; i++ )
			if ( test[i] > table[i] ) return(1);
			else if ( test[i] < table[i] ) return(-1);
	} else {					/* For Roman */
		for ( i=0; i<size; i++ )
			if ( (0xdf&test[i]) > (0xdf&table[i]) ) return(1);
			else if ( (0xdf&test[i]) < (0xdf&table[i]) ) return(-1);
	}
	if ( table[size] != '\0' ) return(-1);
	return(0);
}
		

/* ------------------------------------------------
	ChoSung and JungSung and Jongsung is already
		separated by p1,p2,p3 in buf
	convert each portion by 3B table look up method
	And then join three of them into one Integer Code
	If any of them is missing, then
		correspoding code will be the lower limit (01,02,01).
   ------------------------------------------------ */

#include "h3Bcode.h"
unsigned long int NbCode(buf, p1,p2,p3)
unsigned char buf[];
int p1,p2,p3;
{
	int ch,ju,jo;

	for (ch=1; ch<=20; ch++)
		if (strNcmp(buf+1,Jamo[inNB][0][ch],p1-1)==0) break;
	for (ju=2; ju<=29; ju+=(1+2*((ju&0x7)==7)))
		if (strNcmp(buf+p1,Jamo[inNB][1][ju],p2-p1)==0) break;
	for (jo=1; jo<=29; jo+=(1+(jo==17)))
		if (strNcmp(buf+p2,Jamo[inNB][2][jo],p3-p2)==0) break;
	if (ch>20) ch=1;
	if (ju>29) ju=2;
	if (jo>29) jo=1;
	return ( 0x8000|(ch<<10)|(ju<<5)|jo );
}


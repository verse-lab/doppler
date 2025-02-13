#include <stdio.h>
#include "hcode.h"
#include "h4Bcode.h"

extern unsigned long int t2k();
extern unsigned long int k2t();
extern unsigned long int c3h();
extern unsigned long int convtr();
extern unsigned long int convk8();
extern unsigned long int convh3();


unsigned long int convtr(wc)
unsigned long int wc;
{
	unsigned int ch,ju,jo;

	if ( wc>>16 == 0 )				/* TR */
		return wc;
	if ( wc>>16 == 0x8ffb )				/* KSC 5601 */
		return k2t(wc);

	if ( wc>>24 == 0xd4 )				/* KS-8 */
		wc = c3h(wc);
	if ( wc>>24 == 0x8f ) {				/* HAN3 */
		ch = CON[((wc>>16)&0xff)-0xa1][1];
		ju = VOW[((wc>>8)&0xff)-0xa1][1];
		jo = CON[(wc&0xff)-0xa1][2];
		if ( ch<0x8000||ju<0x8000||jo<0x8000 )
			fprintf(stderr,"%x is not valid in Trigem Code\n",wc);
		return (ch&0xfc00)+(ju&0x03e0)+(jo&0x1f);
	}

	return 0xff000000L;
}

unsigned long int convk8(wc)
unsigned long int wc;
{
	unsigned long int check, tr;
	unsigned long int ch,ju,jo;

	if ( wc>>16 == 0x8ffb ) 			/* KS */
		return wc ;

	if ( wc>>16 == 0 ) {				/* TR */
		tr = wc;
	} else {
		if ( wc>>24 != 0x8f ) 			/* KS-8 */
			wc = c3h(wc);
		// ch = CON[((wc>>16)&0xff)-0xa1][1];	/* HAN3 */
		// ju = VOW[((wc>>8)&0xff)-0xa1][1];
		// jo = CON[(wc&0xff)-0xa1][2];
		tr = (ch&0xfc00)+(ju&0x03e0)+(jo&0x1f);
	}
	if ( (check=t2k(tr))>>16 == 0x8ffb )
		return check;

	/* There is no Char in KSC5601 then Use KS-8 */

	if ( wc>>16 == 0 ) 				/* TR */
		wc = c3h(wc);

	// ch = CON[((wc>>16)&0xff)-0xa1][3];		/* Else Already HAN3 */
	// ju = VOW[((wc>>8)&0xff)-0xa1][2];
	// jo = CON[(wc&0xff)-0xa1][3];
	if ( ch<0x100||ju<0x100||jo<0x100 )
		fprintf(stderr,"is not valid in KS8 Code\n");
	return (0xd4L<<24) + ((ch&0xff)<<16) + ((ju&0xff)<<8) +(jo&0xff);
}
	
unsigned long int convh3(wc)
unsigned long int wc;
{
	unsigned long int check, tr, h3;
	unsigned int ch,ju,jo;

	if ( wc>>16 == 0x8ffb ) 				/* KS */
		return wc ;

	if ( wc>>16 == 0 ) {					/* TR */
		tr = wc;
	} else {
		if ( wc>>24 != 0x8f ) 				/* KS 8 */
			h3 = c3h(wc);
		else
			h3 = wc;				/* HAN 3 */
		ch = CON[(((h3>>16))&0xff)-0xa1][1];
		ju = VOW[(((h3>>8))&0xff)-0xa1][1];
		jo = CON[(h3&0xff)-0xa1][2];
		tr = (ch&0xfc00)+(ju&0x03e0)+(jo&0x1f);
	}

	if ( (check=t2k(tr))>>16 == 0x8ffb )
		return check;

	if ( wc>>16 == 0 ) 					/* TR */
		h3 = c3h(wc);
	return h3;
}

unsigned long int c3h(wc)
unsigned long int wc;
{
	int ch,ju,jo;

	if ( wc>>16 == 0 ) {    /* Trigem */
		for (ch=NoCON-1; ch>0; ch--)
			if (CON[ch][1]==(wc&0x7c00)+0x8041) break;
		for (ju=NoVOW-1; ju>0; ju--)
			if (VOW[ju][1]==(wc&0x03e0)+0x8401) break;
		for (jo=NoCON-1; jo>0; jo--)
			if (CON[jo][2]==(wc&0x001f)+0x8440) break;
	} else if ( wc>>24==0xd4 ) { /* KS-8 */
		for (ch=NoCON-1; ch>0; ch--)
			if (CON[ch][3]==0xa400+((wc>>16)&0xff)) break;
		for (ju=NoVOW-1; ju>0; ju--)
			if (VOW[ju][2]==0xa400+((wc>>8)&0xff)) break;
		for (jo=NoCON-1; jo>0; jo--)
			if (CON[jo][3]==0xa400+(wc&0xff)) break;
	}
	return 0x8f000000L; // + ((long)CON[ch][0]<<16) + (VOW[ju][0]<<8) + CON[jo][0];
}

#include  "h2Bcode.h"
unsigned long int k2t(wc)
unsigned long int wc;
{
	unsigned int test;
	int l,m,u;

	l = NoUnSorted;
	u = NoKSC-1;
	wc = wc & 0xffff;

	while ( l<=u ) {
		test = TwoConvert[(m=(l+u)/2)][1];
		if ( test > wc ) u=m-1;
		else if ( test < wc ) l=m+1;
		else {
			return(TwoConvert[m][0]);
		}
	}
	for (m=0; m<NoUnSorted; m++) 
		if ( TwoConvert[m][1] == wc ) {
			return(TwoConvert[m][0]);
		}
	return (0xff000000L+TwoConvert[m][0]);
}

unsigned long int t2k(wc)
unsigned long int wc;
{
	unsigned int test;
	int l,m,u;

	l = NoUnSorted;
	u = NoKSC-1;
	wc = wc & 0xffff;

	while ( l<=u ) {
		test = TwoConvert[(m=(l+u)/2)][0];
		if ( test > wc ) u=m-1;
		else if ( test < wc ) l=m+1;
		else {
			return(0x8ffb0000L+TwoConvert[m][1]);
		}
	}
	for (m=0; m<NoUnSorted-NoFinal; m++) 
		if ( TwoConvert[m][0] == wc ) {
			return(0x8ffb0000L+TwoConvert[m][1]);
		}
	return (0xff000000L+TwoConvert[m][1]);
}


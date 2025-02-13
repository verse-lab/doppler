#include <stdio.h>
#include <klee/klee.h>

/* ------------------------------------------------------
	Search for Starting Mark and print out (ENGLISH) prologue
	mark : Starting Code
	Two file pointer   : fhin, fhout
  ------------------------------------------------------- */

void rmprolog(mark,fpin,fpout)
char mark[];
FILE *fpin, *fpout;
{
	char c;
	int i,p=0,len=strlen(mark);

	while( (c=getc(fpin)) !=EOF ) {
		if (c==mark[p]) {
			if (p==len-1) {
				if ( c=getc(fpin) != '\n') ungetc(c,fpin);
				return;
			} else {
				p++;
			}
		} else {
			for ( i=0; i<p; i++ )
				putc(mark[i],fpout);
			p=0;
			putc(c,fpout);
		}
	}
	ungetc(c,fpin);
}


/* ------------------------------------------------------
	Read and write the headers (until \n).
	if there is any KSC char, Printout through prwc
	Two file pointer : fhin, fhout
	function pointer : prwc

	A hacked version of sdn2ks by Uhhyung Choi.
	Modified by jylee on Dec, 1, 1992.
  ------------------------------------------------------- */

extern void base64_to_string();
extern void string_to_base64();

void rmSDNheader(fpin,fpout,outCode,prwc)
FILE *fpin, *fpout;
int outCode;
void (*prwc)();
{
        unsigned char ibuf[1024],obuf[1024],tbuf[1024];
        unsigned char *iptr, *optr, *tptr;
	unsigned long int outwc;

    do {
	iptr = ibuf;
	fgets(ibuf,1024,fpin);
	while (*iptr) {
		if (!strncmp("=?B?EUC-KR?",iptr,11)) {
			iptr+=11;
        		tptr = tbuf;
                       	while (strncmp("?=",iptr,2)) *tptr++ = *iptr++;
		        *tptr = NULL;
			iptr++; iptr++;
			base64_to_string(obuf, tbuf);
			for (optr=obuf; *optr; optr++) {
			    if (*optr>0x80) {
				outwc = 0x8ffb00 + *optr;
				outwc = (outwc<<8) + *(++optr);
			    } else
				outwc = *optr;
			    (*prwc)(outwc,fpout,outCode);
					
			}
		} else fputc(*iptr++,fpout);
	}
    } while (ibuf[0]!='\n');
}

extern void pr2m();
extern unsigned long int convk8();

// void putSDN(Printwc,fpout,outCode)
// unsigned long int Printwc;
// FILE *fpout;
// int outCode;
// {
// 	static int cp=0;
// 	unsigned char ibuf[1024],obuf[1024],tbuf[1024];
// 	unsigned char *iptr, *tptr;
// 	klee_make_symbolic(&ibuf, sizeof(ibuf), "ibuf");
// 	klee_make_symbolic(&obuf, sizeof(obuf), "obuf");
// 	klee_make_symbolic(&cp, sizeof(cp), "cp");

// 	if ( cp >= 1024 ) {
// 		pr2m(Printwc,fpout,outCode);
// 		return;
// 	}

// 	if ( Printwc == '\n' ) {		/* End of Line */
// 		if ( cp == 0 ) {
// 			cp = 1024;
// 			fputc('\n',fpout);
// 			return;
// 		}
// 		ibuf[cp++] = '\n';
// 		ibuf[cp] = NULL;
// 		cp = 0;
// 		iptr = ibuf;
// 		while (*iptr) {
// 			tptr = tbuf;
// 			while (*iptr && *iptr<0x80) fputc(*iptr++,fpout);
// 			while (*iptr && (*iptr>0x80 || *iptr ==' ')) *tptr++ = *iptr++;
// 			*tptr = NULL;
// 			if (tbuf[0]!=NULL) {
// 				string_to_base64(obuf, tbuf);
// 				fprintf(fpout,"=?B?EUC-KR?%s?=",obuf);
// 			}
// 		}
// 		return;
// 	}

// 	if ( Printwc < 0x100 ) {		/* ASC */
// 		ibuf[cp++] = Printwc;
// 		return;
// 	}

// 	Printwc = convk8(Printwc);		/* NON-ASC */
// 	if ( (Printwc>>16) == 0x8ffb ) {
// 		ibuf[cp++] = (Printwc>>8)&0xff;
// 		ibuf[cp++] = Printwc&0xff;
// 	} else {
// 		ibuf[cp++] = 0xa4;
// 		ibuf[cp++] = (Printwc>>24)&0xff;
// 		ibuf[cp++] = 0xa4;
// 		ibuf[cp++] = (Printwc>>16)&0xff;
// 		ibuf[cp++] = 0xa4;
// 		ibuf[cp++] = (Printwc>>8)&0xff;
// 		ibuf[cp++] = 0xa4;
// 		ibuf[cp++] = Printwc & 0xff;
// 	}
// }

/*
   These subroutines come in bq.c with Hangul Mailing Package SDN/KS
   @(#)bq.c:encode/decode modules	is@ev.trigem.co.kr	1992.7.22

   To compile this subroutine under the sysyem without sys/type.h
   I have copied one line from sys/type.h
	typedef unsigned long   u_long;

   June-Yub Lee at Courant Institute on Dec, 1 , 1992
   jylee@kitty.cims.nyu.edu or jylee@math1.kaist.ac.kr
*/

typedef unsigned long   u_long;


/**** B A S E 6 4 _ T O _ S T R I N G ****/

void base64_to_string(obuf, ibuf)
char *obuf, *ibuf;
{
        register u_long btmp = 0;
        register short int count = 0;

        while (*ibuf)
        {
                if (*ibuf == '+')
                        btmp = (btmp << 6) | 62;
                else if (*ibuf == '/')
                        btmp = (btmp << 6) | 63;
                else if (isdigit(*ibuf))
                        btmp = (btmp << 6) | (52 + *ibuf - '0');
                else if (isupper(*ibuf))
                        btmp = (btmp << 6) | (*ibuf - 'A');
                else if (islower(*ibuf))
                        btmp = (btmp << 6) | (26 + *ibuf - 'a');
                else  /* In case of pad and error. */
                        btmp = (btmp << 6) | 0;

                if (++count >= 4)
                {
                        *obuf++ = (char)((btmp & 0x0ff0000) >> 16);
                        *obuf++ = (char)((btmp & 0x000ff00) >> 8);
                        *obuf++ = (char)(btmp & 0x00000ff);

                        btmp = 0;
                        count = 0;
                }

                ibuf++;
        }

        *obuf = '\0';

        return;
}  /* end of base64_to_string(). */


/**** S T R I N G _ T O _ B A S E 6 4 ****/

#define B64_0                   0x0fc0000
#define B64_1                   0x003f000
#define B64_2                   0x0000fc0
#define B64_3                   0x000003f
#define PAD                     64

static char *b64_alphabet =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

void string_to_base64(obuf, ibuf)
char *obuf, *ibuf;
{
        register u_long btmp;
        register short int i, count;

        while (*ibuf)
        {
                for (i = count = 0, btmp = 0; i < 3; i++)
                        if (*ibuf)
                        {
                                btmp = (btmp << 8) | (u_long)(*ibuf++ & 0x0ff);
                                count++;
                        }
                        else
                                btmp = (btmp << 8) | (u_long)0;

                *obuf++ = b64_alphabet[(B64_0 & btmp) >> 18];
                *obuf++ = b64_alphabet[(B64_1 & btmp) >> 12];
                *obuf++ = b64_alphabet[count >= 2 ? (B64_2 & btmp) >> 6 : PAD];
                *obuf++ = b64_alphabet[count == 3 ? (B64_3 & btmp) : PAD];
        }

        *obuf = '\0';
        return;

}  /* end of string_to_base64(). */


/* ***********************************************************
 Program : Hangul Code Conversion Program
 Author :  June-Yub Lee (jylee@kitty.cims.nyu.edu:jylee@math1.kaist.ac.kr)
 Created : Jan, 07, 1992
 Modified : Ver. 1.1  Feb, 29, 1992 
 Modified : Ver. 1.2  Oct, 03, 1992
 Modified : Ver. 2.0  Dec, 06, 1992
 Modified : Ver. 2.1  Sep, 18, 1994

 This Program is free software under the GNU General Public License.
 If you are installing this program for your own work or other users,
 please send me a e-mail so that I can fix any possible bug and
 update for new Hangul Code including UNICODE.
************************************************************ */

#include <stdio.h>
#include <klee/klee.h>
#include "hcode.h"

extern void pr2m();
extern void pr3b();
// extern void putSDN();
extern unsigned long int gettr();
extern unsigned long int getks();
extern unsigned long int getiso();
extern unsigned long int getnb();
extern void opt_check();
extern void rmprolog();
extern void rmSDNheader();

void putSDN(Printwc,fpout,outCode)
unsigned long int Printwc;
FILE *fpout;
int outCode;
{
	static int cp=0;
	unsigned char ibuf[1024],obuf[1024],tbuf[1024];
	unsigned char *iptr, *tptr;
	klee_make_symbolic(&obuf, sizeof(obuf), "obuf");
    klee_make_symbolic(&tbuf, sizeof(tbuf), "tbuf");
    klee_make_symbolic(&iptr, sizeof(iptr), "iptr");
    klee_make_symbolic(&tptr, sizeof(tptr), "tptr");


//	if ( cp >= 1024 ) {
//		pr2m(Printwc,fpout,outCode);
//		return;
//	}

	if ( Printwc == '\n' ) {		/* End of Line */
		if ( cp == 0 ) {
			cp = 1024;
			fputc('\n',fpout);
			return;
		}
		ibuf[cp++] = '\n';
		ibuf[cp] = NULL;
		cp = 0;
		iptr = ibuf;
		while (*iptr) {
			tptr = tbuf;
			while (*iptr && *iptr<0x80) fputc(*iptr++,fpout);
			while (*iptr && (*iptr>0x80 || *iptr ==' ')) *tptr++ = *iptr++;
			*tptr = NULL;
			if (tbuf[0]!=NULL) {
				string_to_base64(obuf, tbuf);
				fprintf(fpout,"=?B?EUC-KR?%s?=",obuf);
			}
		}
		return;
	}

	if ( Printwc < 0x100 ) {		/* ASC */
		ibuf[cp++] = Printwc;
		// return;
	}

	Printwc = convk8(Printwc);		/* NON-ASC */
	if ( (Printwc>>16) == 0x8ffb ) {
		ibuf[cp++] = (Printwc>>8)&0xff;
		ibuf[cp++] = Printwc&0xff;
	} else {
		ibuf[cp++] = 0xa4;
		ibuf[cp++] = (Printwc>>24)&0xff;
		ibuf[cp++] = 0xa4;
		ibuf[cp++] = (Printwc>>16)&0xff;
		ibuf[cp++] = 0xa4;
		ibuf[cp++] = (Printwc>>8)&0xff;
		ibuf[cp++] = 0xa4;
		ibuf[cp++] = Printwc & 0xff;
	}
    exit(0);
}

int inNB;
int prstat=PRNONE;

main(argc,argv)
int argc;
char *argv[];
{
	int inCode, outCode;
	FILE *fpin, *fpout;
	void (*prwc)();
	unsigned char c;
	unsigned long int (*getwc)();
	unsigned long int PrintChar=0;

    klee_make_symbolic(&inCode, sizeof(inCode), "inCode");
    klee_make_symbolic(&outCode, sizeof(outCode), "outCode");
    klee_make_symbolic(&fpin, sizeof(fpin), "fpin");
    klee_make_symbolic(&fpout, sizeof(fpout), "fpout");
    klee_make_symbolic(&getwc, sizeof(getwc), "getwc");
    klee_make_symbolic(&c, sizeof(c), "c");


    opt_check(argc,argv,&inCode,&outCode, &fpin, &fpout);

	// if ( outCode >= NB ) {
	// 	prwc = pr3b;
	// } else if ( outCode == SD ) {
	// 	prwc = putSDN;
	// } else {
	// 	prwc = pr2m;
	// }

//	if ( inCode == KS || inCode == H3 )
//		getwc = getks;
//	else if ( inCode == TR)
//		getwc = gettr;
//	else if ( inCode == IS ) {
//		getwc = getiso;
//		rmprolog("\033$)C",fpin,fpout);
//	} else if ( inCode == SD) {
//		getwc = getiso;
//		rmSDNheader(fpin,fpout,outCode,putSDN);
//		rmprolog("\033$)C",fpin,fpout);
//	} else if ( inCode >= NB ) {
//		getwc = getnb;
//		inNB = inCode - NB;
//	}

    // PrintChar = (*getwc)(c);
    klee_make_symbolic(&PrintChar, sizeof(PrintChar), "PrintChar");
    putSDN(PrintChar,fpout,outCode);

//    while ( (c=getc(fpin)) != (unsigned char) EOF ) {
//	PrintChar = (*getwc)(c);
//	if ( PrintChar != 0 ) putSDN(PrintChar,fpout,outCode);
//	PrintChar = 0;
//    }

/* Error Codes */

	fclose(fpin);
	fclose(fpout);
	return( inCode*(prstat==PRINTED||prstat==PRINTING) );
}

/* ------------------------------------------------------
	Command Line Option Check Routine
	Two integes Return : inCode and outCode
	Two file pointer   : fhin, fhout
	Defaults : from_IS, to_KS, stdin, stdout;
  ------------------------------------------------------- */

void opt_check(argc, argv, inCode, outCode, fhin, fhout)
char *argv[];
FILE **fhin, **fhout;
int argc, *inCode, *outCode;
{
	char *program = argv[0];
	*inCode = InDEF;
	*outCode = OutDEF;
	while (--argc) {
		argv++;
		if ( argv[0][0]!='-' || argv[0][1]=='\0' ) {
			break;
		} else if ( argv[0][2]=='\0' ) {
			*inCode = in_choice [ tolower(argv[0][1])-'a' ];
		} else if ( argv[0][3]=='\0' ) {
			*inCode = in_choice [ tolower(argv[0][1])-'a' ];
			*outCode = out_choice [ tolower(argv[0][2])-'a' ];
		} else  {
			fprintf(stderr,"Usage: %s %s\n",program,syn);
			exit(-1);
		}
		if ( *inCode == 0 ) {
			fprintf(stderr,"Unknown InCode: %s %s\n",program,syn);
			exit(-1);
		} else if ( *outCode == 0 ) {
			fprintf(stderr,"Unknown OutCode: %s %s\n",program,syn);
			exit(-1);
		}
	}

	*fhin = stdin;
	*fhout = stdout;
	if ( argc > 2 ) {
		fprintf(stderr,"Unknown Syntax: %s %s\n",program,syn);
		exit(-1);
	} else if ( argc == 2 ) {
		if ( argv[0][0]!='-' && (*fhin=fopen(argv[0],"r"))==NULL ) {
   			fprintf(stderr,"%s: Read Err on %s\n",program,argv[0]);
   			exit(1);
		}
		if ( (*fhout=fopen(argv[1],"w")) == NULL ) {
   			fprintf(stderr,"%s: Write Err on %s\n",program,argv[1]);
   			exit(1);
		}
	} else if ( argc == 1 ) {
		if ( argv[0][0]!='-' && (*fhin=fopen(argv[0],"r"))==NULL ) {
   			fprintf(stderr,"%s: Read Err on %s\n",program,argv[0]);
   			exit(1);
		}
	}
}

/* ----------------------------------------------------------
    Hangul Code Choice Table -- Order SHOULD be preserved
	Unknown ::
	 :: ISO-2022 : SDN : ____ 2 Byte code without table ____
	 :: KS-5601 : ____ 2 Byte Codes without jump ____
	 :: Han3 code
	 :: TR ::  NB : ____ Multibyte Codes without jump ____
  ----------------------------------------------------------- */
#define  UN  0      /* UNknown  */
#define  IS  10     /* ISO-2022 */
#define  SD  11     /* ISO-2022-KR or SDN Hangul mailing code */
#define  KS  20     /* KS-5601-1987  */
#define  H3  28     /* Han3 code */
#define  TR  30     /* TRigem johap */
#define  NB  40     /* N-Byte */
#define  SK  41     /* Simulation Keyinput */
#define  RO  42     /* ROman char */

/* ----------------------------------------------------------
	Hangul Code Table Size
  ----------------------------------------------------------- */
#define  No2Bcode   2	/* Trigem2byte and KS2byte */
#define  No3Bcode   3	/* NB, SK, RO */
#define  NoFinal   11   /* 27-16 Common with Init */
#define  NoUnSorted 51	/* 19+21+11 */
#define  NoKSC   2401	/* 19+21+11+2350 */

/* ----------------------------------------------------------
	System Parameters ( Main & PrintOut Routine )
  ----------------------------------------------------------- */
#define  MULNONE   40
#define  MULSTART  50
#define  MULC      51
#define  MULCV     52
#define  MULCVC    53

#define  PRNONE     0
#define  PRENG      1
#define  PRINTING   2
#define  PRINTED    3 /* Output Routine Inner Stat */

/* ----------------------------------------------------------
	Multibyte Code Starting and Ending Codes
  ----------------------------------------------------------- */
static char StartCode[No3Bcode] = { '\016','{','{' };
static char EndCode[No3Bcode] = { '\017','}','}' };
static char NbFinalOnly[No3Bcode][2] = { "a","L","!"};

/* ----------------------------------------------------------
	Option Check Routine Static Variables
  ----------------------------------------------------------- */
#define InDEF    IS
#define OutDEF   KS

static char syn[]= " [-a[b]]  [ in_file(-) [out_file] ]\n\n\
Choices of a-Input_Code and b-Output_Code\n\
\t<k>SC : KSC-5601-1987 with 8byte extension\n\
\t      : also accepts Han3 Code in input mode\n\
\t<h>an3 : meaningful only for output code.\n\
\t<i>SO-2022-kr : Hangul Mailing Codes\n\
\tS<d>N : B_encoded_Header+\\n+Body_in_ISO2022\n\
\t<t>rigem : 15 bit Trigem Combination Code\n\
\t<r>oman : Hangul Romanization Code\n\
\t<n>Byte : Old starndard in Unix system\n\
\t<s>im_Key : Simulation of 2 set Keyboard\n\
\t\tVersion 2.1 By jylee@kitty.cims.nyu.edu\n";

static int in_choice[] =
         { UN, UN, UN, SD, UN, UN, UN, H3, IS, UN, KS, UN, UN,
           NB, UN, UN, UN, RO, SK, TR, UN, UN, UN, UN, UN, UN };
static int out_choice[] =
         { UN, UN, UN, SD, UN, UN, UN, H3, IS, UN, KS, UN, UN,
           NB, UN, UN, UN, RO, SK, TR, UN, UN, UN, UN, UN, UN };

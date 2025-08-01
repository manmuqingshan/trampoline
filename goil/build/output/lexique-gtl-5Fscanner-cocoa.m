//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

#import "lexique-gtl-5Fscanner-cocoa.h"
#import "PMDebug.h"

//--------------------------------------------------------------------------------------------------

@implementation OC_Lexique_gtl_scanner

//--------------------------------------------------------------------------------------------------
//
//                           Template Replacements
//
//--------------------------------------------------------------------------------------------------

static NSArray * kTemplateReplacementArray_gtl_5F_scanner ; // Of NSString 


//--------------------------------------------------------------------------------------------------
//
//                           Template Delimiters
//
//--------------------------------------------------------------------------------------------------

static NSArray * kTemplateDefinitionArray_gtl_5F_scanner ;

//--------------------------------------------------------------------------------------------------

- (instancetype) init {
  self = [super init] ;
  if (self) {
    noteObjectAllocation (self) ;
    mLexicalAttribute_a_string = [[NSMutableString alloc] init] ;
    mLexicalAttribute_charValue = 0 ;
    mLexicalAttribute_floatValue = 0.0 ;
    mLexicalAttribute_functionContent = [[NSMutableString alloc] init] ;
    mLexicalAttribute_identifierString = [[NSMutableString alloc] init] ;
    mLexicalAttribute_intValue = [[NSMutableString alloc] init] ;
    mLexicalAttribute_tokenString = [[NSMutableString alloc] init] ;
    mLexicalAttribute_uint32value = 0 ;
  }
  if (nil == kTemplateDefinitionArray_gtl_5F_scanner) {
    kTemplateDefinitionArray_gtl_5F_scanner = [NSArray arrayWithObjects:
      [[OC_GGS_TemplateDelimiter alloc] initWithStartString:@"%" endString:@"%" discardStartString:YES],
      nil
    ] ;
  }
  if (nil == kTemplateReplacementArray_gtl_5F_scanner) {

    kTemplateReplacementArray_gtl_5F_scanner = [NSArray arrayWithObjects:
      @"\\%",       @"\\n",       @"\\\\",       nil
    ] ;
  }
  return self ;
}

//--------------------------------------------------------------------------------------------------

- (void) dealloc {
  noteObjectDeallocation (self) ;
}

//--------------------------------------------------------------------------------------------------
//
//                 I N D E X I N G    T I T L E S
//
//--------------------------------------------------------------------------------------------------

- (NSArray *) indexingTitles { // Array of NSString

  return [NSArray array] ;
}

//--------------------------------------------------------------------------------------------------
//
//            Terminal Symbols as end of script in template mark
//
//--------------------------------------------------------------------------------------------------

static const BOOL kEndOfScriptInTemplateArray_gtl_5F_scanner [115] = {
  NO /* identifier */,
  NO /* literal_enum */,
  NO /* literal_double */,
  NO /* signed_literal_integer_bigint */,
  NO /* - */,
  NO /* . */,
  NO /* .= */,
  NO /* ... */,
  NO /* literal_char */,
  NO /* string */,
  NO /* comment */,
  NO /* after */,
  NO /* before */,
  NO /* between */,
  NO /* by */,
  NO /* default */,
  NO /* display */,
  NO /* do */,
  NO /* down */,
  NO /* else */,
  NO /* elsif */,
  NO /* emptylist */,
  NO /* emptymap */,
  NO /* end */,
  NO /* error */,
  NO /* exists */,
  NO /* false */,
  NO /* for */,
  NO /* foreach */,
  NO /* from */,
  NO /* func */,
  NO /* here */,
  NO /* if */,
  NO /* in */,
  NO /* import */,
  NO /* listof */,
  NO /* let */,
  NO /* loop */,
  NO /* mapof */,
  NO /* mod */,
  NO /* no */,
  NO /* not */,
  NO /* or */,
  NO /* print */,
  NO /* println */,
  NO /* seed */,
  NO /* repeat */,
  NO /* sort */,
  NO /* step */,
  NO /* tab */,
  NO /* template */,
  NO /* then */,
  NO /* to */,
  NO /* true */,
  NO /* typeof */,
  NO /* up */,
  NO /* yes */,
  NO /* warning */,
  NO /* while */,
  NO /* write */,
  NO /* executable */,
  NO /* variables */,
  NO /* getter */,
  NO /* unlet */,
  NO /* setter */,
  NO /* libraries */,
  NO /* input */,
  NO /* break */,
  NO /* __VARS__ */,
  NO /* * */,
  NO /* | */,
  NO /* , */,
  NO /* + */,
  NO /* :: */,
  NO /* > */,
  NO /* : */,
  NO /* ( */,
  NO /* ) */,
  NO /* -> */,
  NO /* ? */,
  NO /* == */,
  NO /* ! */,
  NO /* := */,
  NO /* [ */,
  NO /* ] */,
  NO /* += */,
  NO /* -= */,
  NO /* / */,
  NO /* != */,
  NO /* >= */,
  NO /* & */,
  NO /* <= */,
  NO /* { */,
  NO /* } */,
  NO /* < */,
  NO /* ^ */,
  NO /* >> */,
  NO /* ~ */,
  NO /* <- */,
  NO /* << */,
  NO /* @ */,
  NO /* *= */,
  NO /* /= */,
  NO /* &= */,
  NO /* |= */,
  NO /* <<= */,
  NO /* >>= */,
  NO /* mod= */,
  NO /* ^= */,
  NO /* @[ */,
  NO /* @( */,
  NO /* @{ */,
  NO /* [! */,
  NO /* @! */,
  NO /* @? */
} ;


//--------------------------------------------------------------------------------------------------
//
//             Key words table 'goilTemplateKeyWordList'      
//
//--------------------------------------------------------------------------------------------------

static const C_cocoa_lexique_table_entry ktable_for_gtl_5F_scanner_goilTemplateKeyWordList [58] = {
  {"by", gtl_scanner_1_by},
  {"do", gtl_scanner_1_do},
  {"if", gtl_scanner_1_if},
  {"in", gtl_scanner_1_in},
  {"no", gtl_scanner_1_no},
  {"or", gtl_scanner_1_or},
  {"to", gtl_scanner_1_to},
  {"up", gtl_scanner_1_up},
  {"end", gtl_scanner_1_end},
  {"for", gtl_scanner_1_for},
  {"let", gtl_scanner_1_let},
  {"mod", gtl_scanner_1_mod},
  {"not", gtl_scanner_1_not},
  {"tab", gtl_scanner_1_tab},
  {"yes", gtl_scanner_1_yes},
  {"down", gtl_scanner_1_down},
  {"else", gtl_scanner_1_else},
  {"from", gtl_scanner_1_from},
  {"func", gtl_scanner_1_func},
  {"here", gtl_scanner_1_here},
  {"loop", gtl_scanner_1_loop},
  {"seed", gtl_scanner_1_seed},
  {"sort", gtl_scanner_1_sort},
  {"step", gtl_scanner_1_step},
  {"then", gtl_scanner_1_then},
  {"true", gtl_scanner_1_true},
  {"after", gtl_scanner_1_after},
  {"break", gtl_scanner_1_break},
  {"elsif", gtl_scanner_1_elsif},
  {"error", gtl_scanner_1_error},
  {"false", gtl_scanner_1_false},
  {"input", gtl_scanner_1_input},
  {"mapof", gtl_scanner_1_mapof},
  {"print", gtl_scanner_1_print},
  {"unlet", gtl_scanner_1_unlet},
  {"while", gtl_scanner_1_while},
  {"write", gtl_scanner_1_write},
  {"before", gtl_scanner_1_before},
  {"exists", gtl_scanner_1_exists},
  {"getter", gtl_scanner_1_getter},
  {"import", gtl_scanner_1_import},
  {"listof", gtl_scanner_1_listof},
  {"repeat", gtl_scanner_1_repeat},
  {"setter", gtl_scanner_1_setter},
  {"typeof", gtl_scanner_1_typeof},
  {"between", gtl_scanner_1_between},
  {"default", gtl_scanner_1_default},
  {"display", gtl_scanner_1_display},
  {"foreach", gtl_scanner_1_foreach},
  {"println", gtl_scanner_1_println},
  {"warning", gtl_scanner_1_warning},
  {"__VARS__", gtl_scanner_1__5F__5F_VARS_5F__5F_},
  {"emptymap", gtl_scanner_1_emptymap},
  {"template", gtl_scanner_1_template},
  {"emptylist", gtl_scanner_1_emptylist},
  {"libraries", gtl_scanner_1_libraries},
  {"variables", gtl_scanner_1_variables},
  {"executable", gtl_scanner_1_executable}
} ;

static NSInteger search_into_gtl_5F_scanner_goilTemplateKeyWordList (NSString * inSearchedString) {
  return searchStringInTable (inSearchedString, ktable_for_gtl_5F_scanner_goilTemplateKeyWordList, 58) ;
}


//--------------------------------------------------------------------------------------------------
//
//               I N T E R N A L    P A R S E    L E X I C A L    T O K E N
//
//--------------------------------------------------------------------------------------------------

- (BOOL) internalParseLexicalTokenForLexicalColoring {
  BOOL scanningOk = YES ;
  [mLexicalAttribute_a_string setString:@""] ;
  mLexicalAttribute_charValue = 0 ;
  mLexicalAttribute_floatValue = 0.0 ;
  [mLexicalAttribute_functionContent setString:@""] ;
  [mLexicalAttribute_identifierString setString:@""] ;
  [mLexicalAttribute_intValue setString:@""] ;
  [mLexicalAttribute_tokenString setString:@""] ;
  mLexicalAttribute_uint32value = 0 ;
  mTokenStartLocation = mCurrentLocation ;
  if (scanningOk && ([self testForInputFromChar:97 toChar:122] || [self testForInputFromChar:65 toChar:90] || [self testForInputChar:95])) {
    BOOL loop2079 = YES ;
    do {
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_identifierString, mPreviousChar) ;
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
      if (scanningOk && ([self testForInputFromChar:97 toChar:122] || [self testForInputFromChar:65 toChar:90] || [self testForInputChar:95] || [self testForInputFromChar:48 toChar:57])) {
      }else{
        loop2079 = NO ;
      }
    }while (loop2079 && scanningOk) ;
    if (mTokenCode == 0) {
      mTokenCode = search_into_gtl_5F_scanner_goilTemplateKeyWordList (mLexicalAttribute_identifierString) ;
    }
    if (mTokenCode == 0) {
      mTokenCode = gtl_scanner_1_identifier ;
    }
  }else if (scanningOk && ([self testForInputChar:36])) {
    BOOL loop2484 = YES ;
    do {
      if (scanningOk && ([self testForInputFromChar:97 toChar:122] || [self testForInputFromChar:65 toChar:90] || [self testForInputChar:95] || [self testForInputFromChar:48 toChar:57])) {
        scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
      }else{
        loop2484 = NO ;
      }
    }while (loop2484 && scanningOk) ;
    mTokenCode = gtl_scanner_1_literal_5F_enum ;
  }else if (scanningOk && [self testForInputString:@"mod=" advance:YES]) {
    mTokenCode = gtl_scanner_1_mod_3D_ ;
  }else if (scanningOk && [self testForInputString:@">>=" advance:YES]) {
    mTokenCode = gtl_scanner_1__3E__3E__3D_ ;
  }else if (scanningOk && [self testForInputString:@"<<=" advance:YES]) {
    mTokenCode = gtl_scanner_1__3C__3C__3D_ ;
  }else if (scanningOk && [self testForInputString:@"|=" advance:YES]) {
    mTokenCode = gtl_scanner_1__7C__3D_ ;
  }else if (scanningOk && [self testForInputString:@"^=" advance:YES]) {
    mTokenCode = gtl_scanner_1__5E__3D_ ;
  }else if (scanningOk && [self testForInputString:@"[!" advance:YES]) {
    mTokenCode = gtl_scanner_1__5B__21_ ;
  }else if (scanningOk && [self testForInputString:@"@{" advance:YES]) {
    mTokenCode = gtl_scanner_1__40__7B_ ;
  }else if (scanningOk && [self testForInputString:@"@[" advance:YES]) {
    mTokenCode = gtl_scanner_1__40__5B_ ;
  }else if (scanningOk && [self testForInputString:@"@\?" advance:YES]) {
    mTokenCode = gtl_scanner_1__40__3F_ ;
  }else if (scanningOk && [self testForInputString:@"@(" advance:YES]) {
    mTokenCode = gtl_scanner_1__40__28_ ;
  }else if (scanningOk && [self testForInputString:@"@!" advance:YES]) {
    mTokenCode = gtl_scanner_1__40__21_ ;
  }else if (scanningOk && [self testForInputString:@">>" advance:YES]) {
    mTokenCode = gtl_scanner_1__3E__3E_ ;
  }else if (scanningOk && [self testForInputString:@">=" advance:YES]) {
    mTokenCode = gtl_scanner_1__3E__3D_ ;
  }else if (scanningOk && [self testForInputString:@"==" advance:YES]) {
    mTokenCode = gtl_scanner_1__3D__3D_ ;
  }else if (scanningOk && [self testForInputString:@"<=" advance:YES]) {
    mTokenCode = gtl_scanner_1__3C__3D_ ;
  }else if (scanningOk && [self testForInputString:@"<<" advance:YES]) {
    mTokenCode = gtl_scanner_1__3C__3C_ ;
  }else if (scanningOk && [self testForInputString:@"<-" advance:YES]) {
    mTokenCode = gtl_scanner_1__3C__2D_ ;
  }else if (scanningOk && [self testForInputString:@":=" advance:YES]) {
    mTokenCode = gtl_scanner_1__3A__3D_ ;
  }else if (scanningOk && [self testForInputString:@"::" advance:YES]) {
    mTokenCode = gtl_scanner_1__3A__3A_ ;
  }else if (scanningOk && [self testForInputString:@"/=" advance:YES]) {
    mTokenCode = gtl_scanner_1__2F__3D_ ;
  }else if (scanningOk && [self testForInputString:@"->" advance:YES]) {
    mTokenCode = gtl_scanner_1__2D__3E_ ;
  }else if (scanningOk && [self testForInputString:@"-=" advance:YES]) {
    mTokenCode = gtl_scanner_1__2D__3D_ ;
  }else if (scanningOk && [self testForInputString:@"+=" advance:YES]) {
    mTokenCode = gtl_scanner_1__2B__3D_ ;
  }else if (scanningOk && [self testForInputString:@"*=" advance:YES]) {
    mTokenCode = gtl_scanner_1__2A__3D_ ;
  }else if (scanningOk && [self testForInputString:@"&=" advance:YES]) {
    mTokenCode = gtl_scanner_1__26__3D_ ;
  }else if (scanningOk && [self testForInputString:@"!=" advance:YES]) {
    mTokenCode = gtl_scanner_1__21__3D_ ;
  }else if (scanningOk && [self testForInputString:@"~" advance:YES]) {
    mTokenCode = gtl_scanner_1__7E_ ;
  }else if (scanningOk && [self testForInputString:@"}" advance:YES]) {
    mTokenCode = gtl_scanner_1__7D_ ;
  }else if (scanningOk && [self testForInputString:@"|" advance:YES]) {
    mTokenCode = gtl_scanner_1__7C_ ;
  }else if (scanningOk && [self testForInputString:@"{" advance:YES]) {
    mTokenCode = gtl_scanner_1__7B_ ;
  }else if (scanningOk && [self testForInputString:@"^" advance:YES]) {
    mTokenCode = gtl_scanner_1__5E_ ;
  }else if (scanningOk && [self testForInputString:@"]" advance:YES]) {
    mTokenCode = gtl_scanner_1__5D_ ;
  }else if (scanningOk && [self testForInputString:@"[" advance:YES]) {
    mTokenCode = gtl_scanner_1__5B_ ;
  }else if (scanningOk && [self testForInputString:@"@" advance:YES]) {
    mTokenCode = gtl_scanner_1__40_ ;
  }else if (scanningOk && [self testForInputString:@"\?" advance:YES]) {
    mTokenCode = gtl_scanner_1__3F_ ;
  }else if (scanningOk && [self testForInputString:@">" advance:YES]) {
    mTokenCode = gtl_scanner_1__3E_ ;
  }else if (scanningOk && [self testForInputString:@"<" advance:YES]) {
    mTokenCode = gtl_scanner_1__3C_ ;
  }else if (scanningOk && [self testForInputString:@":" advance:YES]) {
    mTokenCode = gtl_scanner_1__3A_ ;
  }else if (scanningOk && [self testForInputString:@"/" advance:YES]) {
    mTokenCode = gtl_scanner_1__2F_ ;
  }else if (scanningOk && [self testForInputString:@"," advance:YES]) {
    mTokenCode = gtl_scanner_1__2C_ ;
  }else if (scanningOk && [self testForInputString:@"+" advance:YES]) {
    mTokenCode = gtl_scanner_1__2B_ ;
  }else if (scanningOk && [self testForInputString:@"*" advance:YES]) {
    mTokenCode = gtl_scanner_1__2A_ ;
  }else if (scanningOk && [self testForInputString:@")" advance:YES]) {
    mTokenCode = gtl_scanner_1__29_ ;
  }else if (scanningOk && [self testForInputString:@"(" advance:YES]) {
    mTokenCode = gtl_scanner_1__28_ ;
  }else if (scanningOk && [self testForInputString:@"&" advance:YES]) {
    mTokenCode = gtl_scanner_1__26_ ;
  }else if (scanningOk && [self testForInputString:@"!" advance:YES]) {
    mTokenCode = gtl_scanner_1__21_ ;
  }else if (scanningOk && ([self testForInputChar:45])) {
    if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, 45) ;
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
      BOOL loop3821 = YES ;
      do {
        if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
        }else if (scanningOk && ([self testForInputChar:95])) {
        }else{
          loop3821 = NO ;
        }
      }while (loop3821 && scanningOk) ;
      if (scanningOk && ([self testForInputChar:46])) {
        scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, 46) ;
        BOOL loop4005 = YES ;
        do {
          if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
            scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
          }else if (scanningOk && ([self testForInputChar:95])) {
          }else{
            loop4005 = NO ;
          }
        }while (loop4005 && scanningOk) ;
        scanner_cocoa_routine_convertStringToDouble (& scanningOk, mLexicalAttribute_tokenString, & mLexicalAttribute_floatValue) ;
        mTokenCode = gtl_scanner_1_literal_5F_double ;
      }else{
        scanner_cocoa_routine_convertDecimalStringIntoBigInt (& scanningOk, mLexicalAttribute_tokenString, mLexicalAttribute_intValue) ;
        mTokenCode = gtl_scanner_1_signed_5F_literal_5F_integer_5F_bigint ;
      }
    }else{
      mTokenCode = gtl_scanner_1__2D_ ;
    }
  }else if (scanningOk && ([self testForInputString:@"0x" advance:YES] || [self testForInputString:@"0X" advance:YES])) {
    BOOL loop4428 = YES ;
    do {
      if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
        scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
      }else{
        loop4428 = NO ;
      }
    }while (loop4428 && scanningOk) ;
    scanner_cocoa_routine_convertHexStringIntoBigInt (& scanningOk, mLexicalAttribute_tokenString, mLexicalAttribute_intValue) ;
    mTokenCode = gtl_scanner_1_signed_5F_literal_5F_integer_5F_bigint ;
  }else if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
    scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
    BOOL loop4708 = YES ;
    do {
      if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
        scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
      }else if (scanningOk && ([self testForInputChar:95])) {
      }else{
        loop4708 = NO ;
      }
    }while (loop4708 && scanningOk) ;
    if (scanningOk && ([self testForInputChar:46])) {
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, 46) ;
      BOOL loop4876 = YES ;
      do {
        if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
        }else if (scanningOk && ([self testForInputChar:95])) {
        }else{
          loop4876 = NO ;
        }
      }while (loop4876 && scanningOk) ;
      scanner_cocoa_routine_convertStringToDouble (& scanningOk, mLexicalAttribute_tokenString, & mLexicalAttribute_floatValue) ;
      mTokenCode = gtl_scanner_1_literal_5F_double ;
    }else{
      scanner_cocoa_routine_convertDecimalStringIntoBigInt (& scanningOk, mLexicalAttribute_tokenString, mLexicalAttribute_intValue) ;
      mTokenCode = gtl_scanner_1_signed_5F_literal_5F_integer_5F_bigint ;
    }
  }else if (scanningOk && ([self testForInputChar:46])) {
    if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, 48) ;
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, 46) ;
      scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
      BOOL loop5731 = YES ;
      do {
        if (scanningOk && ([self testForInputFromChar:48 toChar:57])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
        }else if (scanningOk && ([self testForInputChar:95])) {
        }else{
          loop5731 = NO ;
        }
      }while (loop5731 && scanningOk) ;
      scanner_cocoa_routine_convertStringToDouble (& scanningOk, mLexicalAttribute_tokenString, & mLexicalAttribute_floatValue) ;
      mTokenCode = gtl_scanner_1_literal_5F_double ;
    }else{
      if (scanningOk && ([self testForInputString:@".." advance:YES])) {
        mTokenCode = gtl_scanner_1__2E__2E__2E_ ;
      }else if (scanningOk && ([self testForInputString:@"=" advance:YES])) {
        mTokenCode = gtl_scanner_1__2E__3D_ ;
      }else{
        mTokenCode = gtl_scanner_1__2E_ ;
      }
    }
  }else if (scanningOk && ([self testForInputChar:39])) {
    if (scanningOk && ([self testForInputChar:92])) {
      if (scanningOk && ([self testForInputChar:102])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 12) ;
      }else if (scanningOk && ([self testForInputChar:110])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 10) ;
      }else if (scanningOk && ([self testForInputChar:114])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 13) ;
      }else if (scanningOk && ([self testForInputChar:116])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 9) ;
      }else if (scanningOk && ([self testForInputChar:118])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 11) ;
      }else if (scanningOk && ([self testForInputChar:92])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 92) ;
      }else if (scanningOk && ([self testForInputChar:48])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 0) ;
      }else if (scanningOk && ([self testForInputChar:39])) {
        scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, 39) ;
      }else if (scanningOk && ([self testForInputChar:117])) {
        if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
          scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
          if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
            scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
            if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
              scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
              if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                scanner_cocoa_routine_convertUnsignedNumberToUnicodeChar (& scanningOk, & mLexicalAttribute_uint32value, & mLexicalAttribute_charValue) ;
              }else{
                scanningOk = NO ;
              }
            }else{
              scanningOk = NO ;
            }
          }else{
            scanningOk = NO ;
          }
        }else{
          scanningOk = NO ;
        }
      }else if (scanningOk && ([self testForInputChar:85])) {
        if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
          scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
          if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
            scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
            if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
              scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
              if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                  scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                  if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                    scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                    if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                      scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                      if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                        scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                        scanner_cocoa_routine_convertUnsignedNumberToUnicodeChar (& scanningOk, & mLexicalAttribute_uint32value, & mLexicalAttribute_charValue) ;
                      }else{
                        scanningOk = NO ;
                      }
                    }else{
                      scanningOk = NO ;
                    }
                  }else{
                    scanningOk = NO ;
                  }
                }else{
                  scanningOk = NO ;
                }
              }else{
                scanningOk = NO ;
              }
            }else{
              scanningOk = NO ;
            }
          }else{
            scanningOk = NO ;
          }
        }else{
          scanningOk = NO ;
        }
      }else if (scanningOk && ([self testForInputChar:38])) {
        BOOL loop10712 = YES ;
        do {
          if (scanningOk && ([self notTestForInputString:@";" error:& scanningOk])) {
            scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_tokenString, mPreviousChar) ;
          }else{
            loop10712 = NO ;
          }
        }while (loop10712 && scanningOk) ;
        scanner_cocoa_routine_convertHTMLSequenceToUnicodeCharacter (& scanningOk, mLexicalAttribute_tokenString, & mLexicalAttribute_charValue) ;
      }else{
        scanningOk = NO ;
      }
    }else if (scanningOk && ([self testForInputFromChar:32 toChar:65533])) {
      scanner_cocoa_routine_enterCharacterIntoCharacter (& scanningOk, & mLexicalAttribute_charValue, mPreviousChar) ;
    }else{
      scanningOk = NO ;
    }
    if (scanningOk && ([self testForInputChar:39])) {
      mTokenCode = gtl_scanner_1_literal_5F_char ;
    }else{
      scanningOk = NO ;
    }
  }else if (scanningOk && ([self testForInputChar:34])) {
    BOOL loop11300 = YES ;
    do {
      if (scanningOk && ([self testForInputChar:92])) {
        if (scanningOk && ([self testForInputChar:102])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 12) ;
        }else if (scanningOk && ([self testForInputChar:110])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 10) ;
        }else if (scanningOk && ([self testForInputChar:114])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 13) ;
        }else if (scanningOk && ([self testForInputChar:116])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 9) ;
        }else if (scanningOk && ([self testForInputChar:118])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 11) ;
        }else if (scanningOk && ([self testForInputChar:92])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 92) ;
        }else if (scanningOk && ([self testForInputChar:34])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 34) ;
        }else if (scanningOk && ([self testForInputChar:39])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 39) ;
        }else if (scanningOk && ([self testForInputChar:63])) {
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, 63) ;
        }else if (scanningOk && ([self testForInputChar:38])) {
          BOOL loop11948 = YES ;
          do {
            if (scanningOk && ([self notTestForInputString:@";" error:& scanningOk])) {
              scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_identifierString, mPreviousChar) ;
            }else{
              loop11948 = NO ;
            }
          }while (loop11948 && scanningOk) ;
          scanner_cocoa_routine_convertHTMLSequenceToUnicodeCharacter (& scanningOk, mLexicalAttribute_identifierString, & mLexicalAttribute_charValue) ;
          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, mLexicalAttribute_charValue) ;
        }else if (scanningOk && ([self testForInputChar:117])) {
          if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
            scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
            if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
              scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
              if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                  scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                  scanner_cocoa_routine_convertUnsignedNumberToUnicodeChar (& scanningOk, & mLexicalAttribute_uint32value, & mLexicalAttribute_charValue) ;
                  scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, mLexicalAttribute_charValue) ;
                }else{
                  scanningOk = NO ;
                }
              }else{
                scanningOk = NO ;
              }
            }else{
              scanningOk = NO ;
            }
          }else{
            scanningOk = NO ;
          }
        }else if (scanningOk && ([self testForInputChar:85])) {
          if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
            scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
            if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
              scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
              if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                  scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                  if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                    scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                    if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                      scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                      if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                        scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                        if (scanningOk && ([self testForInputFromChar:48 toChar:57] || [self testForInputFromChar:97 toChar:102] || [self testForInputFromChar:65 toChar:70])) {
                          scanner_cocoa_routine_enterHexDigitIntoUInt (& scanningOk, mPreviousChar, & mLexicalAttribute_uint32value) ;
                          scanner_cocoa_routine_convertUnsignedNumberToUnicodeChar (& scanningOk, & mLexicalAttribute_uint32value, & mLexicalAttribute_charValue) ;
                          scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, mLexicalAttribute_charValue) ;
                        }else{
                          scanningOk = NO ;
                        }
                      }else{
                        scanningOk = NO ;
                      }
                    }else{
                      scanningOk = NO ;
                    }
                  }else{
                    scanningOk = NO ;
                  }
                }else{
                  scanningOk = NO ;
                }
              }else{
                scanningOk = NO ;
              }
            }else{
              scanningOk = NO ;
            }
          }else{
            scanningOk = NO ;
          }
        }else{
          scanningOk = NO ;
        }
      }else if (scanningOk && ([self testForInputChar:32] || [self testForInputChar:33] || [self testForInputFromChar:35 toChar:65533])) {
        scanner_cocoa_routine_enterCharacterIntoString (& scanningOk, mLexicalAttribute_a_string, mPreviousChar) ;
      }else{
        loop11300 = NO ;
      }
    }while (loop11300 && scanningOk) ;
    if (scanningOk && ([self testForInputChar:34])) {
      mTokenCode = gtl_scanner_1_string ;
    }else{
      scanningOk = NO ;
    }
  }else if (scanningOk && ([self testForInputChar:35])) {
    BOOL loop16010 = YES ;
    do {
      if (scanningOk && ([self testForInputFromChar:1 toChar:9] || [self testForInputChar:11] || [self testForInputChar:12] || [self testForInputFromChar:14 toChar:65533])) {
      }else{
        loop16010 = NO ;
      }
    }while (loop16010 && scanningOk) ;
    mTokenCode = gtl_scanner_1_comment ;
  }else if (scanningOk && ([self testForInputFromChar:1 toChar:32])) {
  }else   if ([self testForInputChar:'\0']) { // End of source text ?
    mTokenCode = gtl_scanner_1_ ; // Empty string code
  }else{ // Unknown input character
    scanningOk = NO ;
    [self advance] ;
  }
  return scanningOk ;
}

//--------------------------------------------------------------------------------------------------
//
//               P A R S E    L E X I C A L    T O K E N
//
//--------------------------------------------------------------------------------------------------

- (void) parseLexicalTokenForLexicalColoring {
  BOOL scanningOk = YES ;
  mTokenCode = 0 ;
  while ((mTokenCode == 0) && (mCurrentChar != '\0')) {
    if ((mMatchedTemplateDelimiterIndex >= 0) && ([[kTemplateDefinitionArray_gtl_5F_scanner objectAtIndex:(NSUInteger) mMatchedTemplateDelimiterIndex] startString].length > 0)) {
      const BOOL foundEndDelimitor = [self testForInputString:[[kTemplateDefinitionArray_gtl_5F_scanner objectAtIndex:(NSUInteger) mMatchedTemplateDelimiterIndex] endString] advance:YES] ;
      if (foundEndDelimitor) {
        mMatchedTemplateDelimiterIndex = -1 ;
      }
    }
    while ((mMatchedTemplateDelimiterIndex < 0) && (mCurrentChar != '\0')) {
      
      [self searchForReplacementPattern:kTemplateReplacementArray_gtl_5F_scanner] ;
      
      mMatchedTemplateDelimiterIndex = [self findTemplateDelimiterIndex:kTemplateDefinitionArray_gtl_5F_scanner] ;
      if (mMatchedTemplateDelimiterIndex < 0) {
        [self advance] ;
        mTokenCode = -2 ;
      }
    }
    if ((mMatchedTemplateDelimiterIndex >= 0) && (mTokenCode == 0) && (mCurrentChar != '\0') && scanningOk) {
      scanningOk = [self internalParseLexicalTokenForLexicalColoring] ;
    }
    if ((mTokenCode > 0) && kEndOfScriptInTemplateArray_gtl_5F_scanner [mTokenCode - 1]) {
      mMatchedTemplateDelimiterIndex = -1 ;
    }
  }
//--- Error ?
  if (! scanningOk) {
    mTokenCode = -1 ;
  }
}

//--------------------------------------------------------------------------------------------------
//
//                   T E R M I N A L    C O U N T
//
//--------------------------------------------------------------------------------------------------

- (NSUInteger) terminalVocabularyCount {
  return 115 ;
}

//--------------------------------------------------------------------------------------------------
//
//                     S T Y L E   C O U N T
//
//--------------------------------------------------------------------------------------------------

- (NSUInteger) styleCount {
  return 9 ;
}

//--------------------------------------------------------------------------------------------------
//
//                I S    T E M P L A T E    L E X I Q U E
//
//--------------------------------------------------------------------------------------------------

- (BOOL) isTemplateLexique {
  return YES ;
}

//--------------------------------------------------------------------------------------------------
//
//   S T Y L E   I N D E X    F O R    T E R M I N A L
//
//--------------------------------------------------------------------------------------------------

- (NSUInteger) styleIndexForTerminal: (NSInteger) inTerminal {
  static const NSUInteger kTerminalSymbolStyles [116] = {0,
    0 /* gtl_scanner_1_identifier */,
    0 /* gtl_scanner_1_literal_5F_enum */,
    5 /* gtl_scanner_1_literal_5F_double */,
    4 /* gtl_scanner_1_signed_5F_literal_5F_integer_5F_bigint */,
    2 /* gtl_scanner_1__2D_ */,
    2 /* gtl_scanner_1__2E_ */,
    2 /* gtl_scanner_1__2E__3D_ */,
    2 /* gtl_scanner_1__2E__2E__2E_ */,
    8 /* gtl_scanner_1_literal_5F_char */,
    6 /* gtl_scanner_1_string */,
    7 /* gtl_scanner_1_comment */,
    1 /* gtl_scanner_1_after */,
    1 /* gtl_scanner_1_before */,
    1 /* gtl_scanner_1_between */,
    1 /* gtl_scanner_1_by */,
    1 /* gtl_scanner_1_default */,
    1 /* gtl_scanner_1_display */,
    1 /* gtl_scanner_1_do */,
    1 /* gtl_scanner_1_down */,
    1 /* gtl_scanner_1_else */,
    1 /* gtl_scanner_1_elsif */,
    1 /* gtl_scanner_1_emptylist */,
    1 /* gtl_scanner_1_emptymap */,
    1 /* gtl_scanner_1_end */,
    1 /* gtl_scanner_1_error */,
    1 /* gtl_scanner_1_exists */,
    1 /* gtl_scanner_1_false */,
    1 /* gtl_scanner_1_for */,
    1 /* gtl_scanner_1_foreach */,
    1 /* gtl_scanner_1_from */,
    1 /* gtl_scanner_1_func */,
    1 /* gtl_scanner_1_here */,
    1 /* gtl_scanner_1_if */,
    1 /* gtl_scanner_1_in */,
    1 /* gtl_scanner_1_import */,
    1 /* gtl_scanner_1_listof */,
    1 /* gtl_scanner_1_let */,
    1 /* gtl_scanner_1_loop */,
    1 /* gtl_scanner_1_mapof */,
    1 /* gtl_scanner_1_mod */,
    1 /* gtl_scanner_1_no */,
    1 /* gtl_scanner_1_not */,
    1 /* gtl_scanner_1_or */,
    1 /* gtl_scanner_1_print */,
    1 /* gtl_scanner_1_println */,
    1 /* gtl_scanner_1_seed */,
    1 /* gtl_scanner_1_repeat */,
    1 /* gtl_scanner_1_sort */,
    1 /* gtl_scanner_1_step */,
    1 /* gtl_scanner_1_tab */,
    1 /* gtl_scanner_1_template */,
    1 /* gtl_scanner_1_then */,
    1 /* gtl_scanner_1_to */,
    1 /* gtl_scanner_1_true */,
    1 /* gtl_scanner_1_typeof */,
    1 /* gtl_scanner_1_up */,
    1 /* gtl_scanner_1_yes */,
    1 /* gtl_scanner_1_warning */,
    1 /* gtl_scanner_1_while */,
    1 /* gtl_scanner_1_write */,
    1 /* gtl_scanner_1_executable */,
    1 /* gtl_scanner_1_variables */,
    1 /* gtl_scanner_1_getter */,
    1 /* gtl_scanner_1_unlet */,
    1 /* gtl_scanner_1_setter */,
    1 /* gtl_scanner_1_libraries */,
    1 /* gtl_scanner_1_input */,
    1 /* gtl_scanner_1_break */,
    1 /* gtl_scanner_1__5F__5F_VARS_5F__5F_ */,
    2 /* gtl_scanner_1__2A_ */,
    2 /* gtl_scanner_1__7C_ */,
    2 /* gtl_scanner_1__2C_ */,
    2 /* gtl_scanner_1__2B_ */,
    2 /* gtl_scanner_1__3A__3A_ */,
    2 /* gtl_scanner_1__3E_ */,
    2 /* gtl_scanner_1__3A_ */,
    2 /* gtl_scanner_1__28_ */,
    2 /* gtl_scanner_1__29_ */,
    2 /* gtl_scanner_1__2D__3E_ */,
    2 /* gtl_scanner_1__3F_ */,
    2 /* gtl_scanner_1__3D__3D_ */,
    2 /* gtl_scanner_1__21_ */,
    2 /* gtl_scanner_1__3A__3D_ */,
    2 /* gtl_scanner_1__5B_ */,
    2 /* gtl_scanner_1__5D_ */,
    2 /* gtl_scanner_1__2B__3D_ */,
    2 /* gtl_scanner_1__2D__3D_ */,
    2 /* gtl_scanner_1__2F_ */,
    2 /* gtl_scanner_1__21__3D_ */,
    2 /* gtl_scanner_1__3E__3D_ */,
    2 /* gtl_scanner_1__26_ */,
    2 /* gtl_scanner_1__3C__3D_ */,
    2 /* gtl_scanner_1__7B_ */,
    2 /* gtl_scanner_1__7D_ */,
    2 /* gtl_scanner_1__3C_ */,
    2 /* gtl_scanner_1__5E_ */,
    2 /* gtl_scanner_1__3E__3E_ */,
    2 /* gtl_scanner_1__7E_ */,
    2 /* gtl_scanner_1__3C__2D_ */,
    2 /* gtl_scanner_1__3C__3C_ */,
    2 /* gtl_scanner_1__40_ */,
    2 /* gtl_scanner_1__2A__3D_ */,
    2 /* gtl_scanner_1__2F__3D_ */,
    2 /* gtl_scanner_1__26__3D_ */,
    2 /* gtl_scanner_1__7C__3D_ */,
    2 /* gtl_scanner_1__3C__3C__3D_ */,
    2 /* gtl_scanner_1__3E__3E__3D_ */,
    2 /* gtl_scanner_1_mod_3D_ */,
    2 /* gtl_scanner_1__5E__3D_ */,
    2 /* gtl_scanner_1__40__5B_ */,
    2 /* gtl_scanner_1__40__28_ */,
    2 /* gtl_scanner_1__40__7B_ */,
    2 /* gtl_scanner_1__5B__21_ */,
    2 /* gtl_scanner_1__40__21_ */,
    2 /* gtl_scanner_1__40__3F_ */
  } ;
  return kTerminalSymbolStyles [inTerminal] ;
}

//--------------------------------------------------------------------------------------------------
//
//    A T O M I C    S E L E C T I O N   F O R    T E R M I N A L
//
//--------------------------------------------------------------------------------------------------

- (BOOL) atomicSelectionForToken: (NSUInteger) inTokenIndex {
  static const BOOL kTerminalAtomicSelection [116] = {NO,
    YES /* gtl_scanner_1_identifier */,
    YES /* gtl_scanner_1_literal_5F_enum */,
    YES /* gtl_scanner_1_literal_5F_double */,
    YES /* gtl_scanner_1_signed_5F_literal_5F_integer_5F_bigint */,
    YES /* gtl_scanner_1__2D_ */,
    YES /* gtl_scanner_1__2E_ */,
    YES /* gtl_scanner_1__2E__3D_ */,
    YES /* gtl_scanner_1__2E__2E__2E_ */,
    YES /* gtl_scanner_1_literal_5F_char */,
    YES /* gtl_scanner_1_string */,
    YES /* gtl_scanner_1_comment */,
    YES /* gtl_scanner_1_after */,
    YES /* gtl_scanner_1_before */,
    YES /* gtl_scanner_1_between */,
    YES /* gtl_scanner_1_by */,
    YES /* gtl_scanner_1_default */,
    YES /* gtl_scanner_1_display */,
    YES /* gtl_scanner_1_do */,
    YES /* gtl_scanner_1_down */,
    YES /* gtl_scanner_1_else */,
    YES /* gtl_scanner_1_elsif */,
    YES /* gtl_scanner_1_emptylist */,
    YES /* gtl_scanner_1_emptymap */,
    YES /* gtl_scanner_1_end */,
    YES /* gtl_scanner_1_error */,
    YES /* gtl_scanner_1_exists */,
    YES /* gtl_scanner_1_false */,
    YES /* gtl_scanner_1_for */,
    YES /* gtl_scanner_1_foreach */,
    YES /* gtl_scanner_1_from */,
    YES /* gtl_scanner_1_func */,
    YES /* gtl_scanner_1_here */,
    YES /* gtl_scanner_1_if */,
    YES /* gtl_scanner_1_in */,
    YES /* gtl_scanner_1_import */,
    YES /* gtl_scanner_1_listof */,
    YES /* gtl_scanner_1_let */,
    YES /* gtl_scanner_1_loop */,
    YES /* gtl_scanner_1_mapof */,
    YES /* gtl_scanner_1_mod */,
    YES /* gtl_scanner_1_no */,
    YES /* gtl_scanner_1_not */,
    YES /* gtl_scanner_1_or */,
    YES /* gtl_scanner_1_print */,
    YES /* gtl_scanner_1_println */,
    YES /* gtl_scanner_1_seed */,
    YES /* gtl_scanner_1_repeat */,
    YES /* gtl_scanner_1_sort */,
    YES /* gtl_scanner_1_step */,
    YES /* gtl_scanner_1_tab */,
    YES /* gtl_scanner_1_template */,
    YES /* gtl_scanner_1_then */,
    YES /* gtl_scanner_1_to */,
    YES /* gtl_scanner_1_true */,
    YES /* gtl_scanner_1_typeof */,
    YES /* gtl_scanner_1_up */,
    YES /* gtl_scanner_1_yes */,
    YES /* gtl_scanner_1_warning */,
    YES /* gtl_scanner_1_while */,
    YES /* gtl_scanner_1_write */,
    YES /* gtl_scanner_1_executable */,
    YES /* gtl_scanner_1_variables */,
    YES /* gtl_scanner_1_getter */,
    YES /* gtl_scanner_1_unlet */,
    YES /* gtl_scanner_1_setter */,
    YES /* gtl_scanner_1_libraries */,
    YES /* gtl_scanner_1_input */,
    YES /* gtl_scanner_1_break */,
    YES /* gtl_scanner_1__5F__5F_VARS_5F__5F_ */,
    YES /* gtl_scanner_1__2A_ */,
    YES /* gtl_scanner_1__7C_ */,
    YES /* gtl_scanner_1__2C_ */,
    YES /* gtl_scanner_1__2B_ */,
    YES /* gtl_scanner_1__3A__3A_ */,
    YES /* gtl_scanner_1__3E_ */,
    YES /* gtl_scanner_1__3A_ */,
    YES /* gtl_scanner_1__28_ */,
    YES /* gtl_scanner_1__29_ */,
    YES /* gtl_scanner_1__2D__3E_ */,
    YES /* gtl_scanner_1__3F_ */,
    YES /* gtl_scanner_1__3D__3D_ */,
    YES /* gtl_scanner_1__21_ */,
    YES /* gtl_scanner_1__3A__3D_ */,
    YES /* gtl_scanner_1__5B_ */,
    YES /* gtl_scanner_1__5D_ */,
    YES /* gtl_scanner_1__2B__3D_ */,
    YES /* gtl_scanner_1__2D__3D_ */,
    YES /* gtl_scanner_1__2F_ */,
    YES /* gtl_scanner_1__21__3D_ */,
    YES /* gtl_scanner_1__3E__3D_ */,
    YES /* gtl_scanner_1__26_ */,
    YES /* gtl_scanner_1__3C__3D_ */,
    YES /* gtl_scanner_1__7B_ */,
    YES /* gtl_scanner_1__7D_ */,
    YES /* gtl_scanner_1__3C_ */,
    YES /* gtl_scanner_1__5E_ */,
    YES /* gtl_scanner_1__3E__3E_ */,
    YES /* gtl_scanner_1__7E_ */,
    YES /* gtl_scanner_1__3C__2D_ */,
    YES /* gtl_scanner_1__3C__3C_ */,
    YES /* gtl_scanner_1__40_ */,
    YES /* gtl_scanner_1__2A__3D_ */,
    YES /* gtl_scanner_1__2F__3D_ */,
    YES /* gtl_scanner_1__26__3D_ */,
    YES /* gtl_scanner_1__7C__3D_ */,
    YES /* gtl_scanner_1__3C__3C__3D_ */,
    YES /* gtl_scanner_1__3E__3E__3D_ */,
    YES /* gtl_scanner_1_mod_3D_ */,
    YES /* gtl_scanner_1__5E__3D_ */,
    YES /* gtl_scanner_1__40__5B_ */,
    YES /* gtl_scanner_1__40__28_ */,
    YES /* gtl_scanner_1__40__7B_ */,
    YES /* gtl_scanner_1__5B__21_ */,
    YES /* gtl_scanner_1__40__21_ */,
    YES /* gtl_scanner_1__40__3F_ */
  } ;
  return kTerminalAtomicSelection [inTokenIndex] ;
}

//--------------------------------------------------------------------------------------------------
//
//             S T Y L E   N A M E    F O R    I N D E X
//
//--------------------------------------------------------------------------------------------------

- (NSString *) styleNameForStyleIndex: (NSInteger) inIndex {
  NSString * result = nil ;
  if ((inIndex >= 0) && (inIndex < 9)) {
    NSString * kStyleArray [9] = {
      @"Default Style",
      @"Keywords",
      @"Delimiters",
      @"Non Terminal Symbols",
      @"Integer Constants",
      @"Floating Point Constants",
      @"String literals",
      @"Comments",
      @"Character Constants"
    } ;
    result = kStyleArray [inIndex] ;
  }
  return result ;
}

//--------------------------------------------------------------------------------------------------
//
//         S T Y L E   I D E N T I F I E R    F O R    I N D E X
//
//--------------------------------------------------------------------------------------------------

- (NSString *) styleIdentifierForStyleIndex: (NSInteger) inIndex {
  NSString * result = nil ;
  if ((inIndex >= 0) && (inIndex < 9)) {
    NSString * kStyleArray [9] = {
      @"gtl_scanner",
      @"gtl_scanner-keywordsStyle",
      @"gtl_scanner-delimitersStyle",
      @"gtl_scanner-nonTerminalStyle",
      @"gtl_scanner-integerStyle",
      @"gtl_scanner-floatCsts",
      @"gtl_scanner-stringStyle",
      @"gtl_scanner-commentStyle",
      @"gtl_scanner-characterStyle"
    } ;
    result = kStyleArray [inIndex] ;
  }
  return result ;
}

//--------------------------------------------------------------------------------------------------
//
//         L E X I Q U E   I D E N T I F I E R
//
//--------------------------------------------------------------------------------------------------

- (NSString *) lexiqueIdentifier {
  return @"gtl_scanner" ;
}

//--------------------------------------------------------------------------------------------------

@end

//--- START OF USER ZONE 2


//--- END OF USER ZONE 2



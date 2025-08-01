//--------------------------------------------------------------------------------------------------
//
//  'Compiler' : the compiler base class ;
//
//  This file is part of libpm library
//
//  Copyright (C) 2009, ..., 2016 Pierre Molinaro.
//
//  e-mail : pierre@pcmolinaro.name
//
//  This library is free software; you can redistribute it and/or modify it under the terms of the GNU Lesser General
//  Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option)
//  any later version.
//
//  This program is distributed in the hope it will be useful, but WITHOUT ANY WARRANTY; without even the implied
//  warranty of MERCHANDIBILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
//  more details.
//
//--------------------------------------------------------------------------------------------------

#pragma once

//--------------------------------------------------------------------------------------------------

#include "TC_UniqueArray.h"
#include "String-class.h"
#include "SharedObject.h"
#include "LocationInSource.h"
#include "SourceTextInString.h"
#include "C_IssueWithFixIt.h"
#include "cIssueDescriptor.h"

//--------------------------------------------------------------------------------------------------

#include <exception>

//--------------------------------------------------------------------------------------------------

class GALGAS_location ;
class GALGAS_string ;
class GALGAS_lstring ;
class C_galgas_type_descriptor ;

//--------------------------------------------------------------------------------------------------
//
//                 Compiler class
//
//--------------------------------------------------------------------------------------------------

class Compiler : public SharedObject {
//--- Constructor and destructor
  public: Compiler (Compiler * inCallerCompiler
                      COMMA_LOCATION_ARGS) ;
  public: virtual ~ Compiler (void) ;

//--- No copy
  private: Compiler (const Compiler &) = delete ;
  private: Compiler & operator = (const Compiler &) = delete ;

//--- Caller compiler (is nullptr for top compiler)
  protected: Compiler * mCallerCompiler ;

//--- Issue array
  private: TC_UniqueArray <cIssueDescriptor> mIssueArray ;
  public: void appendIssue (const cIssueDescriptor & inIssue) ;
  public: void writeIssueJSONFile (const String & inFile) ;

//--- Sent string
  private: String mSentString ;
  private: bool mSentStringIsValid ;
  public: GALGAS_string sentString (void) const ;

//--- Template String
  protected: String mTemplateString ;
  protected: LocationInSource mTemplateStringLocation ;
  public: GALGAS_string retrieveAndResetTemplateString (void) ;
  public: void resetTemplateString (void) ;

//--- Handling current character and its location
  private: SourceTextInString mSourceText ;
  protected: LocationInSource mCurrentLocation ;

  public: inline SourceTextInString sourceText (void) const {
    return mSourceText ;
  }

//--- 'loop' intruction variant run-time error
  public: void loopRunTimeVariantError (LOCATION_ARGS) ;

//--- Handle 'here' in GALGAS
  protected: LocationInSource mStartLocationForHere ; // Set by lexique
  protected: LocationInSource mEndLocationForHere ; // Set by lexique
  public: GALGAS_location here (void) const ;

//--- Handle 'separator' in GALGAS
  public: GALGAS_location separator (void) const ;

//--- Handle 'next' in GALGAS
  protected: LocationInSource mStartLocationForNext ; // Set by lexique
  protected: LocationInSource mEndLocationForNext ; // Set by lexique
  public: GALGAS_location next (void) const ;

//--- Source file name
  public: String sourceFilePath (void) const ;

//--- Syntax error message for 'end of source':
  protected: static const char * kEndOfSourceLexicalErrorMessage ;

//--- Location in source
  public: inline LocationInSource currentLocationInSource (void) const {
    return mCurrentLocation ;
  }

  public: inline int32_t location (void) const {
    return mCurrentLocation.index () ;
  }

  public: inline int32_t lineNumber (void) const {
    return mCurrentLocation.lineNumber () ;
  }

  public: inline int32_t columnNumber (void) const {
    return mCurrentLocation.columnNumber () ;
  }

//--- Get separator string
  public: virtual String separatorString (void) const { return String () ; }

//--- Init scanner from source file (for Cocoa GALGAS)
  public: void resetAndLoadSourceFromText (const SourceTextInString & inSourceText) ;

//--- Print a message
  public: void printMessage (const GALGAS_string & inMessage COMMA_LOCATION_ARGS) ;
  public: void printMessage (const String & inMessage COMMA_LOCATION_ARGS) ;

//--- Print semantic error
  public: void semanticErrorAtLocation (const GALGAS_location & inErrorLocation,
                                         const String & inErrorMessage,
                                         const TC_Array <C_FixItDescription> & inFixItArray
                                         COMMA_LOCATION_ARGS) ;

//--- Print semantic warning
  public: void semanticWarningAtLocation (const GALGAS_location & inErrorLocation,
                                           const String & inWarningMessage
                                           COMMA_LOCATION_ARGS) ;

//--- Signal a run-time error
  public: void onTheFlyRunTimeError (const String & inRunTimeErrorMessage COMMA_LOCATION_ARGS) ;

//--- Signal a semantic error
  public: void onTheFlySemanticError (const String & inMessage COMMA_LOCATION_ARGS) ;

//--- Signal a semantic warning
  public: void onTheFlySemanticWarning (const String & inMessage COMMA_LOCATION_ARGS) ;

//--- Emit a warning
  public: void emitSemanticWarning (const GALGAS_location & inWarningLocation,
                                     const GALGAS_string & inWarningMessage,
                                     const TC_Array <C_FixItDescription> & inFixItArray
                                     COMMA_LOCATION_ARGS) ;

//--- Emit an error
  public: void emitSemanticError (const GALGAS_location & inErrorLocation,
                                   const GALGAS_string & inErrorMessage,
                                   const TC_Array <C_FixItDescription> & inFixItArray
                                   COMMA_LOCATION_ARGS) ;

//--- Emit an error message with an error message that contains %K espace sequence
  public: void semanticErrorWith_K_message (const GALGAS_lstring & inKey,
                                             TC_UniqueArray <String> & ioNearestKeyArray,
                                             const char * in_K_ErrorMessage
                                             COMMA_LOCATION_ARGS) ;

//--- Emit an error message with an error message that contains %K and %L espace sequences
  public: void semanticErrorWith_K_L_message (const GALGAS_lstring & inKey,
                                               const char * in_K_L_ErrorMessage,
                                               const GALGAS_location & inExistingKeyLocation
                                               COMMA_LOCATION_ARGS) ;

//--- Emit an warning message with an error message that contains %K and %L espace sequences
  public: void semanticWarningWith_K_L_message (const GALGAS_lstring & inKey,
                                                 const char * in_K_L_ErrorMessage,
                                                 const GALGAS_location & inExistingKeyLocation
                                                 COMMA_LOCATION_ARGS) ;

//--- Cast error
  public: void castError (const String & inTargetTypeName,
                           const C_galgas_type_descriptor * inObjectDynamicTypeDescriptor
                           COMMA_LOCATION_ARGS) ;

//--- File read logging
  public: static bool performLogFileRead (void) ;

  public: void logFileRead (const String & inFilePath) ;

//--- File generation
  public: static bool performGeneration (void) ;

//--- Generate file in directory
  public: void generateFile (const String & inLineCommentPrefix,
                              const TC_UniqueArray <String> & inDirectoriesToExclude,
                              const String & inFileName,
                              const String & inHeader,
                              const String & inDefaultUserZone1,
                              const String & inGeneratedZone2,
                              const String & inDefaultUserZone2,
                              const String & inGeneratedZone3,
                              const bool inMakeExecutable) ;

  public: void generateFileWithPatternFromPathes (const String & inStartPath,
                                                   const TC_UniqueArray <String> & inDirectoriesToExclude,
                                                   const String & inLineCommentPrefix,
                                                   const String & inFileName,
                                                   const String & inHeader,
                                                   const String & inDefaultUserZone1,
                                                   const String & inGeneratedZone2,
                                                   const String & inDefaultUserZone2,
                                                   const String & inGeneratedZone3,
                                                   const bool inMakeExecutable) ;

  public: void generateFileFromPathes (const String & inStartPath,
                                        const TC_UniqueArray <String> & inDirectoriesToExclude,
                                        const String & inFileName,
                                        const String & inContents) ;
} ;

//--------------------------------------------------------------------------------------------------

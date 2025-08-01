//--------------------------------------------------------------------------------------------------
//
//  C_IssueWithFixIt                                                                             
//
//  This file is part of libpm library                                                           
//
//  Copyright (C) 2016, ..., 2016 Pierre Molinaro.
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

#include "LocationInSource.h"
#include "String-class.h"
#include "TC_Array.h"

//--------------------------------------------------------------------------------------------------

class GALGAS_stringlist ;
class GALGAS_lstringlist ;
class GALGAS_string ;
class GALGAS_stringset ;

//--------------------------------------------------------------------------------------------------

typedef enum {
  kFixItRemove,
  kFixItReplace,
  kFixItInsertBefore,
  kFixItInsertAfter
} EnumFixItKind ;

//--------------------------------------------------------------------------------------------------

class C_FixItDescription final {
//--- Default constructor
  public: C_FixItDescription (void) ;

//--- Constructor
  public: C_FixItDescription (const EnumFixItKind inKind,
                               const String & inActionString) ;

//--- Accessors
  public: EnumFixItKind kind (void) const { return mKind ; }
  public: String actionString (void) const { return mActionString ; }
  
//--- Private properties
  private: EnumFixItKind mKind ;
  private: String mActionString ;
} ;

//--------------------------------------------------------------------------------------------------

class C_IssueWithFixIt {
//--- Default constructor
  public: C_IssueWithFixIt (void) ;

//--- Constructor
  public: C_IssueWithFixIt (const LocationInSource & inStartLocation,
                             const LocationInSource & inEndLocation,
                             const TC_Array <C_FixItDescription> & inFixItArray) ;

//--- Properties
  public: const LocationInSource mStartLocation ;
  public: const LocationInSource mEndLocation ;
  public: const TC_Array <C_FixItDescription> mFixItArray ;
} ;

//--------------------------------------------------------------------------------------------------

void appendFixItActions (TC_Array <C_FixItDescription> & ioArray,
                         const EnumFixItKind inKind,
                         const GALGAS_stringlist & inList) ;

//--------------------------------------------------------------------------------------------------

void appendFixItActions (TC_Array <C_FixItDescription> & ioArray,
                         const EnumFixItKind inKind,
                         const GALGAS_lstringlist & inList) ;

//--------------------------------------------------------------------------------------------------

void appendFixItActions (TC_Array <C_FixItDescription> & ioArray,
                         const EnumFixItKind inKind,
                         const GALGAS_string & inString) ;

//--------------------------------------------------------------------------------------------------

void appendFixItActions (TC_Array <C_FixItDescription> & ioArray,
                         const EnumFixItKind inKind,
                         const GALGAS_stringset & inStringSet) ;

//--------------------------------------------------------------------------------------------------

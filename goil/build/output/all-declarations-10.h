#pragma once

//--------------------------------------------------------------------------------------------------

#include "all-predefined-types.h"

//--------------------------------------------------------------------------------------------------

#include "all-declarations-9.h"

//--------------------------------------------------------------------------------------------------
//
//Function 'checkEnums'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_bool function_checkEnums (const class GALGAS_impEnumType & constinArgument0,
                                       const class GALGAS_impEnumType & constinArgument1,
                                       class Compiler * inCompiler
                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'checkRanged'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_bool function_checkRanged (const class GALGAS_impRangedType & constinArgument0,
                                        const class GALGAS_impRangedType & constinArgument1,
                                        class Compiler * inCompiler
                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'floatOrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_double function_floatOrError (class GALGAS_object_5F_t inArgument0,
                                           class GALGAS_string inArgument1,
                                           class Compiler * inCompiler
                                           COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'sint32OrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_sint function_sint_33__32_OrError (class GALGAS_object_5F_t inArgument0,
                                                class GALGAS_string inArgument1,
                                                class Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'sint64OrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_sint_36__34_ function_sint_36__34_OrError (class GALGAS_object_5F_t inArgument0,
                                                        class GALGAS_string inArgument1,
                                                        class Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'uint32OrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_uint function_uint_33__32_OrError (class GALGAS_object_5F_t inArgument0,
                                                class GALGAS_string inArgument1,
                                                class Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'uint64OrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_uint_36__34_ function_uint_36__34_OrError (class GALGAS_object_5F_t inArgument0,
                                                        class GALGAS_string inArgument1,
                                                        class Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stringWithUInt32List'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_stringWithUInt_33__32_List (const class GALGAS_uint_33__32_List & constinArgument0,
                                                         class Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stringWithUInt64List'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_stringWithUInt_36__34_List (const class GALGAS_uint_36__34_List & constinArgument0,
                                                         class Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stringWithSInt32List'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_stringWithSInt_33__32_List (const class GALGAS_sint_33__32_List & constinArgument0,
                                                         class Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stringWithSInt64List'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_stringWithSInt_36__34_List (const class GALGAS_sint_36__34_List & constinArgument0,
                                                         class Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stringWithFloatList'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_stringWithFloatList (const class GALGAS_floatList & constinArgument0,
                                                  class Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'uint32ListWithNumberList'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_uint_33__32_List function_uint_33__32_ListWithNumberList (const class GALGAS_numberList & constinArgument0,
                                                                       class Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'sint32ListWithNumberList'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_sint_33__32_List function_sint_33__32_ListWithNumberList (const class GALGAS_numberList & constinArgument0,
                                                                       class Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'uint64ListWithNumberList'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_uint_36__34_List function_uint_36__34_ListWithNumberList (const class GALGAS_numberList & constinArgument0,
                                                                       class Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'sint64ListWithNumberList'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_sint_36__34_List function_sint_36__34_ListWithNumberList (const class GALGAS_numberList & constinArgument0,
                                                                       class Compiler * inCompiler
                                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'floatListWithNumberList'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_floatList function_floatListWithNumberList (const class GALGAS_numberList & constinArgument0,
                                                         class Compiler * inCompiler
                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'multiError??'
//
//--------------------------------------------------------------------------------------------------

void routine_multiError_3F__3F_ (class GALGAS_locationList inArgument0,
                                 class GALGAS_string inArgument1,
                                 class Compiler * inCompiler
                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'setDefaultsForType?&'
//
//--------------------------------------------------------------------------------------------------

void routine_setDefaultsForType_3F__26_ (const class GALGAS_implementationObjectMap constinArgument0,
                                         class GALGAS_objectAttributes & ioArgument1,
                                         class Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'boolSubAttributes'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_implementationObjectMap function_boolSubAttributes (const class GALGAS_implementationObject & constinArgument0,
                                                                 const class GALGAS_string & constinArgument1,
                                                                 const class GALGAS_bool & constinArgument2,
                                                                 class Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'enumSubAttributes'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_implementationObjectMap function_enumSubAttributes (const class GALGAS_implementationObject & constinArgument0,
                                                                 const class GALGAS_string & constinArgument1,
                                                                 const class GALGAS_string & constinArgument2,
                                                                 class Compiler * inCompiler
                                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'checkFilters?'
//
//--------------------------------------------------------------------------------------------------

void routine_checkFilters_3F_ (const class GALGAS_implementationObject constinArgument0,
                               class Compiler * inCompiler
                               COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'multipleAttributeOrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_identifierList function_multipleAttributeOrError (const class GALGAS_object_5F_t & constinArgument0,
                                                               const class GALGAS_string & constinArgument1,
                                                               class Compiler * inCompiler
                                                               COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'boolAttributeOrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_bool function_boolAttributeOrError (class GALGAS_object_5F_t inArgument0,
                                                 class GALGAS_string inArgument1,
                                                 class Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'uint32_or_error'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_uint function_uint_33__32__5F_or_5F_error (class GALGAS_object_5F_t inArgument0,
                                                        class GALGAS_string inArgument1,
                                                        class Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'luint64OrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_luint_36__34_ function_luint_36__34_OrError (class GALGAS_object_5F_t inArgument0,
                                                          class GALGAS_string inArgument1,
                                                          class Compiler * inCompiler
                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stringAttributeOrError'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_lstring function_stringAttributeOrError (const class GALGAS_object_5F_t & constinArgument0,
                                                      const class GALGAS_string & constinArgument1,
                                                      class Compiler * inCompiler
                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'empty_lstring'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_lstring function_empty_5F_lstring (class Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'void_obj'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_object_5F_t function_void_5F_obj (class Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'luint64_value'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_luint_36__34_ function_luint_36__34__5F_value (const class GALGAS_uint_36__34__5F_class & constinArgument0,
                                                            class Compiler * inCompiler
                                                            COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'oil_dir'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_oil_5F_dir (class Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'add_path_component'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_add_5F_path_5F_component (class GALGAS_string inArgument0,
                                                       class GALGAS_string inArgument1,
                                                       class Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'rootTemplatesDirectory'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_rootTemplatesDirectory (class Compiler * inCompiler
                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'templateFilePath'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_templateFilePath (const class GALGAS_string & constinArgument0,
                                               const class GALGAS_string & constinArgument1,
                                               class Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'allTemplatePaths'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_stringlist function_allTemplatePaths (const class GALGAS_string & constinArgument0,
                                                   class Compiler * inCompiler
                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'checkTemplatesPath'
//
//--------------------------------------------------------------------------------------------------

void routine_checkTemplatesPath (class Compiler * inCompiler
                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'prefix??!'
//
//--------------------------------------------------------------------------------------------------

void routine_prefix_3F__3F__21_ (class GALGAS_prefix_5F_map inArgument0,
                                 class GALGAS_string inArgument1,
                                 class GALGAS_string & outArgument2,
                                 class Compiler * inCompiler
                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'performReplace???&'
//
//--------------------------------------------------------------------------------------------------

void routine_performReplace_3F__3F__3F__26_ (class GALGAS_prefix_5F_map inArgument0,
                                             class GALGAS_string inArgument1,
                                             class GALGAS_string inArgument2,
                                             class GALGAS_string & ioArgument3,
                                             class Compiler * inCompiler
                                             COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'doReplace&??'
//
//--------------------------------------------------------------------------------------------------

void routine_doReplace_26__3F__3F_ (class GALGAS_string & ioArgument0,
                                    class GALGAS_string inArgument1,
                                    class GALGAS_string inArgument2,
                                    class Compiler * inCompiler
                                    COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'do_replace_default&???'
//
//--------------------------------------------------------------------------------------------------

void routine_do_5F_replace_5F_default_26__3F__3F__3F_ (class GALGAS_string & ioArgument0,
                                                       class GALGAS_string inArgument1,
                                                       class GALGAS_string inArgument2,
                                                       class GALGAS_string inArgument3,
                                                       class Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'replace_no_prefix???&'
//
//--------------------------------------------------------------------------------------------------

void routine_replace_5F_no_5F_prefix_3F__3F__3F__26_ (class GALGAS_prefix_5F_map inArgument0,
                                                      class GALGAS_string inArgument1,
                                                      class GALGAS_string inArgument2,
                                                      class GALGAS_string & ioArgument3,
                                                      class Compiler * inCompiler
                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'table_core????&&'
//
//--------------------------------------------------------------------------------------------------

void routine_table_5F_core_3F__3F__3F__3F__26__26_ (class GALGAS_string inArgument0,
                                                    class GALGAS_string inArgument1,
                                                    class GALGAS_string inArgument2,
                                                    class GALGAS_stringset inArgument3,
                                                    class GALGAS_string & ioArgument4,
                                                    class GALGAS_string & ioArgument5,
                                                    class Compiler * inCompiler
                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'add_to_stringset&?'
//
//--------------------------------------------------------------------------------------------------

void routine_add_5F_to_5F_stringset_26__3F_ (class GALGAS_stringset & ioArgument0,
                                             class GALGAS_string inArgument1,
                                             class Compiler * inCompiler
                                             COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'is_in_lstringlist??!!'
//
//--------------------------------------------------------------------------------------------------

void routine_is_5F_in_5F_lstringlist_3F__3F__21__21_ (class GALGAS_lstringlist inArgument0,
                                                      class GALGAS_lstring inArgument1,
                                                      class GALGAS_lstring & outArgument2,
                                                      class GALGAS_bool & outArgument3,
                                                      class Compiler * inCompiler
                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'isInLstringlist'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_bool function_isInLstringlist (class GALGAS_lstringlist inArgument0,
                                            class GALGAS_lstring inArgument1,
                                            class Compiler * inCompiler
                                            COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'add_lstring_unique&??'
//
//--------------------------------------------------------------------------------------------------

void routine_add_5F_lstring_5F_unique_26__3F__3F_ (class GALGAS_lstringlist & ioArgument0,
                                                   class GALGAS_lstring inArgument1,
                                                   class GALGAS_string inArgument2,
                                                   class Compiler * inCompiler
                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'set_lstring_if_empty&??'
//
//--------------------------------------------------------------------------------------------------

void routine_set_5F_lstring_5F_if_5F_empty_26__3F__3F_ (class GALGAS_lstring & ioArgument0,
                                                        class GALGAS_lstring inArgument1,
                                                        class GALGAS_string inArgument2,
                                                        class Compiler * inCompiler
                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'add_makefile_flag_if_not_empty&??'
//
//--------------------------------------------------------------------------------------------------

void routine_add_5F_makefile_5F_flag_5F_if_5F_not_5F_empty_26__3F__3F_ (class GALGAS_string & ioArgument0,
                                                                        class GALGAS_string inArgument1,
                                                                        class GALGAS_string inArgument2,
                                                                        class Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'stripString'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_string function_stripString (class GALGAS_string inArgument0,
                                          class Compiler * inCompiler
                                          COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'errorNoFileFound???'
//
//--------------------------------------------------------------------------------------------------

void routine_errorNoFileFound_3F__3F__3F_ (const class GALGAS_stringlist constinArgument0,
                                           const class GALGAS_string constinArgument1,
                                           const class GALGAS_lstring constinArgument2,
                                           class Compiler * inCompiler
                                           COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'attributeAllowsAuto'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_bool function_attributeAllowsAuto (const class GALGAS_impType & constinArgument0,
                                                class Compiler * inCompiler
                                                COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'verifyAllAttributes??'
//
//--------------------------------------------------------------------------------------------------

void routine_verifyAllAttributes_3F__3F_ (const class GALGAS_implementation constinArgument0,
                                          const class GALGAS_objectsMap constinArgument1,
                                          class Compiler * inCompiler
                                          COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'osObject'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_objectAttributes function_osObject (const class GALGAS_objectsMap & constinArgument0,
                                                 class Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'objectForKindAndName'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_objectAttributes function_objectForKindAndName (const class GALGAS_objectsMap & constinArgument0,
                                                             const class GALGAS_string & constinArgument1,
                                                             const class GALGAS_string & constinArgument2,
                                                             class Compiler * inCompiler
                                                             COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'setObjectForKindAndName&???'
//
//--------------------------------------------------------------------------------------------------

void routine_setObjectForKindAndName_26__3F__3F__3F_ (class GALGAS_objectsMap & ioArgument0,
                                                      const class GALGAS_string constinArgument1,
                                                      const class GALGAS_string constinArgument2,
                                                      const class GALGAS_objectAttributes constinArgument3,
                                                      class Compiler * inCompiler
                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'objectsForKind'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_objectKind function_objectsForKind (const class GALGAS_objectsMap & constinArgument0,
                                                 const class GALGAS_string & constinArgument1,
                                                 class Compiler * inCompiler
                                                 COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'listInOS'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_identifierList function_listInOS (const class GALGAS_objectsMap & constinArgument0,
                                               const class GALGAS_string & constinArgument1,
                                               class Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'generate_signed_type??!'
//
//--------------------------------------------------------------------------------------------------

void routine_generate_5F_signed_5F_type_3F__3F__21_ (class GALGAS_uint_36__34_ inArgument0,
                                                     class GALGAS_string inArgument1,
                                                     class GALGAS_string & outArgument2,
                                                     class Compiler * inCompiler
                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'generate_unsigned_type??!'
//
//--------------------------------------------------------------------------------------------------

void routine_generate_5F_unsigned_5F_type_3F__3F__21_ (class GALGAS_uint_36__34_ inArgument0,
                                                       class GALGAS_string inArgument1,
                                                       class GALGAS_string & outArgument2,
                                                       class Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'generate_mask_type??!'
//
//--------------------------------------------------------------------------------------------------

void routine_generate_5F_mask_5F_type_3F__3F__21_ (class GALGAS_uint_36__34_ inArgument0,
                                                   class GALGAS_string inArgument1,
                                                   class GALGAS_string & outArgument2,
                                                   class Compiler * inCompiler
                                                   COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Function 'emptyGoilContext'
//
//--------------------------------------------------------------------------------------------------

class GALGAS_goilContext function_emptyGoilContext (class Compiler * inCompiler
                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'nodeToClassRes??!'
//
//--------------------------------------------------------------------------------------------------

void routine_nodeToClassRes_3F__3F__21_ (class GALGAS_arxmlElementNode inArgument0,
                                         class GALGAS_arxmlMetaClassMap inArgument1,
                                         class GALGAS_arxmlElementValue & outArgument2,
                                         class Compiler * inCompiler
                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlDefinitionPackage&&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlDefinitionPackage_26__26__3F__3F_ (class GALGAS_implementation & ioArgument0,
                                                     class GALGAS_applicationDefinition & ioArgument1,
                                                     class GALGAS_arxmlElementValue inArgument2,
                                                     class GALGAS_lstring inArgument3,
                                                     class Compiler * inCompiler
                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationPackage&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationPackage_26__3F__3F_ (class GALGAS_implementation & ioArgument0,
                                                     class GALGAS_arxmlElementValue inArgument1,
                                                     class GALGAS_lstring inArgument2,
                                                     class Compiler * inCompiler
                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationRoot&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationRoot_26__3F__3F_ (class GALGAS_implementation & ioArgument0,
                                                  class GALGAS_arxmlElementValue inArgument1,
                                                  class GALGAS_lstring inArgument2,
                                                  class Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlGetDescription?!'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlGetDescription_3F__21_ (class GALGAS_arxmlElementValue inArgument0,
                                          class GALGAS_lstring & outArgument1,
                                          class Compiler * inCompiler
                                          COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationObject&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationObject_26__3F__3F_ (class GALGAS_implementation & ioArgument0,
                                                    class GALGAS_arxmlElementValue inArgument1,
                                                    class GALGAS_lstring inArgument2,
                                                    class Compiler * inCompiler
                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlGetMultiplicity??!'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlGetMultiplicity_3F__3F__21_ (class GALGAS_arxmlElementValue inArgument0,
                                               class GALGAS_lstring inArgument1,
                                               class GALGAS_lbool & outArgument2,
                                               class Compiler * inCompiler
                                               COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainer&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainer_26__3F__3F_ (class GALGAS_implementationObjectMap & ioArgument0,
                                                       class GALGAS_arxmlElementValue inArgument1,
                                                       class GALGAS_lstring inArgument2,
                                                       class Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerBoolean!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerBoolean_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                      class GALGAS_impType & outArgument1,
                                                                      const class GALGAS_dataType constinArgument2,
                                                                      class GALGAS_arxmlElementValue inArgument3,
                                                                      class GALGAS_lstring inArgument4,
                                                                      class Compiler * inCompiler
                                                                      COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerEnumeration!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerEnumeration_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                          class GALGAS_impType & outArgument1,
                                                                          const class GALGAS_dataType constinArgument2,
                                                                          class GALGAS_arxmlElementValue inArgument3,
                                                                          class GALGAS_lstring inArgument4,
                                                                          class Compiler * inCompiler
                                                                          COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerIdentifier!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerIdentifier_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                         class GALGAS_impType & outArgument1,
                                                                         const class GALGAS_dataType constinArgument2,
                                                                         class GALGAS_arxmlElementValue inArgument3,
                                                                         class GALGAS_lstring inArgument4,
                                                                         class Compiler * inCompiler
                                                                         COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerNumber!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerNumber_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                     class GALGAS_impType & outArgument1,
                                                                     const class GALGAS_dataType constinArgument2,
                                                                     class GALGAS_arxmlElementValue inArgument3,
                                                                     class GALGAS_lstring inArgument4,
                                                                     class Compiler * inCompiler
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerReference!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerReference_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                        class GALGAS_impType & outArgument1,
                                                                        const class GALGAS_dataType constinArgument2,
                                                                        class GALGAS_arxmlElementValue inArgument3,
                                                                        class GALGAS_lstring inArgument4,
                                                                        class Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerString!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerString_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                     class GALGAS_impType & outArgument1,
                                                                     const class GALGAS_dataType constinArgument2,
                                                                     class GALGAS_arxmlElementValue inArgument3,
                                                                     class GALGAS_lstring inArgument4,
                                                                     class Compiler * inCompiler
                                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlImplementationContainerStructure!!???'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlImplementationContainerStructure_21__21__3F__3F__3F_ (class GALGAS_lstring & outArgument0,
                                                                        class GALGAS_impType & outArgument1,
                                                                        const class GALGAS_dataType constinArgument2,
                                                                        class GALGAS_arxmlElementValue inArgument3,
                                                                        class GALGAS_lstring inArgument4,
                                                                        class Compiler * inCompiler
                                                                        COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlInsertObjectAttribute&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlInsertObjectAttribute_26__3F__3F_ (class GALGAS_implementationObjectMap & ioArgument0,
                                                     class GALGAS_lstring inArgument1,
                                                     class GALGAS_impType inArgument2,
                                                     class Compiler * inCompiler
                                                     COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlGetName?!'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlGetName_3F__21_ (class GALGAS_arxmlElementValue inArgument0,
                                   class GALGAS_lstring & outArgument1,
                                   class Compiler * inCompiler
                                   COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlGetWithAuto?!'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlGetWithAuto_3F__21_ (class GALGAS_arxmlElementValue inArgument0,
                                       class GALGAS_bool & outArgument1,
                                       class Compiler * inCompiler
                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlPopSign&!'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlPopSign_26__21_ (class GALGAS_lstring & ioArgument0,
                                   class GALGAS_bool & outArgument1,
                                   class Compiler * inCompiler
                                   COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlDefinitionRoot&&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlDefinitionRoot_26__26__3F__3F_ (class GALGAS_implementation & ioArgument0,
                                                  class GALGAS_applicationDefinition & ioArgument1,
                                                  class GALGAS_arxmlElementValue inArgument2,
                                                  class GALGAS_lstring inArgument3,
                                                  class Compiler * inCompiler
                                                  COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlDefinitionObject&&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlDefinitionObject_26__26__3F__3F_ (class GALGAS_implementation & ioArgument0,
                                                    class GALGAS_objectsMap & ioArgument1,
                                                    class GALGAS_arxmlElementValue inArgument2,
                                                    class GALGAS_lstring inArgument3,
                                                    class Compiler * inCompiler
                                                    COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlDefinitionContainer?&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlDefinitionContainer_3F__26__3F__3F_ (const class GALGAS_implementationObjectMap constinArgument0,
                                                       class GALGAS_objectAttributes & ioArgument1,
                                                       class GALGAS_arxmlElementValue inArgument2,
                                                       class GALGAS_lstring inArgument3,
                                                       class Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'oilEquivalentName??!'
//
//--------------------------------------------------------------------------------------------------

void routine_oilEquivalentName_3F__3F__21_ (class GALGAS_lstring inArgument0,
                                            class GALGAS_lstring inArgument1,
                                            class GALGAS_lstring & outArgument2,
                                            class Compiler * inCompiler
                                            COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'arxmlDefinitionParameter?&??'
//
//--------------------------------------------------------------------------------------------------

void routine_arxmlDefinitionParameter_3F__26__3F__3F_ (const class GALGAS_implementationObjectMap constinArgument0,
                                                       class GALGAS_objectAttributes & ioArgument1,
                                                       class GALGAS_arxmlElementValue inArgument2,
                                                       class GALGAS_lstring inArgument3,
                                                       class Compiler * inCompiler
                                                       COMMA_LOCATION_ARGS) ;

//--------------------------------------------------------------------------------------------------
//
//Routine 'testTypeError??'
//
//--------------------------------------------------------------------------------------------------

void routine_testTypeError_3F__3F_ (class GALGAS_dataType inArgument0,
                                    class GALGAS_lstring inArgument1,
                                    class Compiler * inCompiler
                                    COMMA_LOCATION_ARGS) ;


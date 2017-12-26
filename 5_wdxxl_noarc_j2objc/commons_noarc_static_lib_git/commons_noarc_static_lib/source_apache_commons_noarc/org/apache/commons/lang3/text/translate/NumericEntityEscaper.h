//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/text/translate/NumericEntityEscaper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper")
#ifdef RESTRICT_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper
#define INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper 0
#else
#define INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper 1
#endif
#undef RESTRICT_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper

#if !defined (OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_) && (INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper || defined(INCLUDE_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper))
#define OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_

#define RESTRICT_OrgApacheCommonsLang3TextTranslateCodePointTranslator 1
#define INCLUDE_OrgApacheCommonsLang3TextTranslateCodePointTranslator 1
#include "org/apache/commons/lang3/text/translate/CodePointTranslator.h"

@class JavaIoWriter;

@interface OrgApacheCommonsLang3TextTranslateNumericEntityEscaper : OrgApacheCommonsLang3TextTranslateCodePointTranslator

#pragma mark Public

- (instancetype)init;

+ (OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *)aboveWithInt:(jint)codepoint;

+ (OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *)belowWithInt:(jint)codepoint;

+ (OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *)betweenWithInt:(jint)codepointLow
                                                                   withInt:(jint)codepointHigh;

+ (OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *)outsideOfWithInt:(jint)codepointLow
                                                                     withInt:(jint)codepointHigh;

- (jboolean)translateWithInt:(jint)codepoint
            withJavaIoWriter:(JavaIoWriter *)outArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheCommonsLang3TextTranslateNumericEntityEscaper)

FOUNDATION_EXPORT void OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_init(OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *self);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *new_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *create_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_init(void);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_belowWithInt_(jint codepoint);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_aboveWithInt_(jint codepoint);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_betweenWithInt_withInt_(jint codepointLow, jint codepointHigh);

FOUNDATION_EXPORT OrgApacheCommonsLang3TextTranslateNumericEntityEscaper *OrgApacheCommonsLang3TextTranslateNumericEntityEscaper_outsideOfWithInt_withInt_(jint codepointLow, jint codepointHigh);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheCommonsLang3TextTranslateNumericEntityEscaper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheCommonsLang3TextTranslateNumericEntityEscaper")

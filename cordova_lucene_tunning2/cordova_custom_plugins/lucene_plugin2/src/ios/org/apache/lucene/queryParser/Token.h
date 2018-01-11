//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/queryParser/Token.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserToken")
#ifdef RESTRICT_OrgApacheLuceneQueryParserToken
#define INCLUDE_ALL_OrgApacheLuceneQueryParserToken 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryParserToken 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryParserToken

#if !defined (OrgApacheLuceneQueryParserToken_) && (INCLUDE_ALL_OrgApacheLuceneQueryParserToken || defined(INCLUDE_OrgApacheLuceneQueryParserToken))
#define OrgApacheLuceneQueryParserToken_

@interface OrgApacheLuceneQueryParserToken : NSObject {
 @public
  jint kind_;
  jint beginLine_;
  jint beginColumn_;
  jint endLine_;
  jint endColumn_;
  NSString *image_;
  OrgApacheLuceneQueryParserToken *next_;
  OrgApacheLuceneQueryParserToken *specialToken_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)kind;

- (instancetype)initWithInt:(jint)kind
               withNSString:(NSString *)image;

- (id)getValue;

+ (OrgApacheLuceneQueryParserToken *)newTokenWithInt:(jint)ofKind OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneQueryParserToken *)newTokenWithInt:(jint)ofKind
                                        withNSString:(NSString *)image OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryParserToken)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserToken, image_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserToken, next_, OrgApacheLuceneQueryParserToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserToken, specialToken_, OrgApacheLuceneQueryParserToken *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserToken_init(OrgApacheLuceneQueryParserToken *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *new_OrgApacheLuceneQueryParserToken_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *create_OrgApacheLuceneQueryParserToken_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserToken_initWithInt_(OrgApacheLuceneQueryParserToken *self, jint kind);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *new_OrgApacheLuceneQueryParserToken_initWithInt_(jint kind) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *create_OrgApacheLuceneQueryParserToken_initWithInt_(jint kind);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserToken_initWithInt_withNSString_(OrgApacheLuceneQueryParserToken *self, jint kind, NSString *image);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *new_OrgApacheLuceneQueryParserToken_initWithInt_withNSString_(jint kind, NSString *image) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *create_OrgApacheLuceneQueryParserToken_initWithInt_withNSString_(jint kind, NSString *image);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *OrgApacheLuceneQueryParserToken_newTokenWithInt_withNSString_(jint ofKind, NSString *image);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserToken *OrgApacheLuceneQueryParserToken_newTokenWithInt_(jint ofKind);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryParserToken)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserToken")

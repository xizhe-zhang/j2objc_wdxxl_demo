//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/queryParser/ParseException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserParseException")
#ifdef RESTRICT_OrgApacheLuceneQueryParserParseException
#define INCLUDE_ALL_OrgApacheLuceneQueryParserParseException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryParserParseException 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryParserParseException

#if !defined (OrgApacheLuceneQueryParserParseException_) && (INCLUDE_ALL_OrgApacheLuceneQueryParserParseException || defined(INCLUDE_OrgApacheLuceneQueryParserParseException))
#define OrgApacheLuceneQueryParserParseException_

#define RESTRICT_JavaLangException 1
#define INCLUDE_JavaLangException 1
#include "java/lang/Exception.h"

@class IOSObjectArray;
@class JavaLangThrowable;
@class OrgApacheLuceneQueryParserToken;

@interface OrgApacheLuceneQueryParserParseException : JavaLangException {
 @public
  jboolean specialConstructor_;
  OrgApacheLuceneQueryParserToken *currentToken_;
  IOSObjectArray *expectedTokenSequences_;
  IOSObjectArray *tokenImage_;
  NSString *eol_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)message;

- (instancetype)initWithOrgApacheLuceneQueryParserToken:(OrgApacheLuceneQueryParserToken *)currentTokenVal
                                          withIntArray2:(IOSObjectArray *)expectedTokenSequencesVal
                                      withNSStringArray:(IOSObjectArray *)tokenImageVal;

- (NSString *)getMessage;

#pragma mark Protected

- (NSString *)add_escapesWithNSString:(NSString *)str;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1
                     withBoolean:(jboolean)arg2
                     withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryParserParseException)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserParseException, currentToken_, OrgApacheLuceneQueryParserToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserParseException, expectedTokenSequences_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserParseException, tokenImage_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryParserParseException, eol_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryParserParseException *self, OrgApacheLuceneQueryParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserParseException *new_OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserParseException *create_OrgApacheLuceneQueryParserParseException_initWithOrgApacheLuceneQueryParserToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryParserToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserParseException_init(OrgApacheLuceneQueryParserParseException *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserParseException *new_OrgApacheLuceneQueryParserParseException_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserParseException *create_OrgApacheLuceneQueryParserParseException_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryParserParseException_initWithNSString_(OrgApacheLuceneQueryParserParseException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneQueryParserParseException *new_OrgApacheLuceneQueryParserParseException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryParserParseException *create_OrgApacheLuceneQueryParserParseException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryParserParseException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryParserParseException")

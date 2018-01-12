//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/standard/UAX29URLEmailTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer")
#ifdef RESTRICT_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer

#if !defined (OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer || defined(INCLUDE_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer))
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_

#define RESTRICT_OrgApacheLuceneAnalysisTokenizer 1
#define INCLUDE_OrgApacheLuceneAnalysisTokenizer 1
#include "org/apache/lucene/analysis/Tokenizer.h"

@class IOSObjectArray;
@class JavaIoInputStream;
@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilAttributeSource_AttributeFactory;
@class OrgApacheLuceneUtilVersion;

@interface OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer : OrgApacheLuceneAnalysisTokenizer

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                                           withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                          withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)input;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
withOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)factory
                                  withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
            withOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source
                                  withJavaIoReader:(JavaIoReader *)input;

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)input;

- (void)end;

- (jint)getMaxTokenLength;

- (jboolean)incrementToken;

- (void)resetWithJavaIoReader:(JavaIoReader *)reader;

- (void)setMaxTokenLengthWithInt:(jint)length;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory:(OrgApacheLuceneUtilAttributeSource_AttributeFactory *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_ALPHANUM(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_ALPHANUM 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, ALPHANUM, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_NUM(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_NUM 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, NUM, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_SOUTHEAST_ASIAN(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_SOUTHEAST_ASIAN 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, SOUTHEAST_ASIAN, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_IDEOGRAPHIC(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_IDEOGRAPHIC 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, IDEOGRAPHIC, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_HIRAGANA(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_HIRAGANA 4
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, HIRAGANA, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_KATAKANA(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_KATAKANA 5
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, KATAKANA, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_HANGUL(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_HANGUL 6
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, HANGUL, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_URL(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_URL 7
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, URL, jint)

inline jint OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_EMAIL(void);
#define OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_EMAIL 8
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, EMAIL, jint)

inline IOSObjectArray *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_TOKEN_TYPES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_TOKEN_TYPES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, TOKEN_TYPES, IOSObjectArray *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_WORD_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_WORD_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, WORD_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_NUMERIC_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_NUMERIC_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, NUMERIC_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_URL_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_URL_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, URL_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_EMAIL_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_EMAIL_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, EMAIL_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_SOUTH_EAST_ASIAN_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_SOUTH_EAST_ASIAN_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, SOUTH_EAST_ASIAN_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_IDEOGRAPHIC_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_IDEOGRAPHIC_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, IDEOGRAPHIC_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_HIRAGANA_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_HIRAGANA_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, HIRAGANA_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_KATAKANA_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_KATAKANA_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, KATAKANA_TYPE, NSString *)

inline NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_get_HANGUL_TYPE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_HANGUL_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer, HANGUL_TYPE, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithJavaIoReader_(JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithJavaIoReader_(JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithJavaIoInputStream_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, JavaIoInputStream *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithJavaIoInputStream_(JavaIoInputStream *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithJavaIoInputStream_(JavaIoInputStream *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource *source, JavaIoReader *input);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *self, OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *new_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer *create_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneUtilAttributeSource_AttributeFactory_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, OrgApacheLuceneUtilAttributeSource_AttributeFactory *factory, JavaIoReader *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisStandardUAX29URLEmailTokenizer")

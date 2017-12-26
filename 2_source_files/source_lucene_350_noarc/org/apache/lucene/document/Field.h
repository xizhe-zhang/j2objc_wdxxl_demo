//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/document/Field.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneDocumentField")
#ifdef RESTRICT_OrgApacheLuceneDocumentField
#define INCLUDE_ALL_OrgApacheLuceneDocumentField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneDocumentField 1
#endif
#undef RESTRICT_OrgApacheLuceneDocumentField

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneDocumentField_) && (INCLUDE_ALL_OrgApacheLuceneDocumentField || defined(INCLUDE_OrgApacheLuceneDocumentField))
#define OrgApacheLuceneDocumentField_

#define RESTRICT_OrgApacheLuceneDocumentAbstractField 1
#define INCLUDE_OrgApacheLuceneDocumentAbstractField 1
#include "org/apache/lucene/document/AbstractField.h"

#define RESTRICT_OrgApacheLuceneDocumentFieldable 1
#define INCLUDE_OrgApacheLuceneDocumentFieldable 1
#include "org/apache/lucene/document/Fieldable.h"

#define RESTRICT_JavaIoSerializable 1
#define INCLUDE_JavaIoSerializable 1
#include "java/io/Serializable.h"

@class IOSByteArray;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneDocumentField_Index;
@class OrgApacheLuceneDocumentField_Store;
@class OrgApacheLuceneDocumentField_TermVector;

@interface OrgApacheLuceneDocumentField : OrgApacheLuceneDocumentAbstractField < OrgApacheLuceneDocumentFieldable, JavaIoSerializable >

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                     withBoolean:(jboolean)internName
                    withNSString:(NSString *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)store
withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)index
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)termVector;

- (instancetype)initWithNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)value;

- (instancetype)initWithNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)value
                         withInt:(jint)offset
                         withInt:(jint)length;

- (instancetype)initWithNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)value
                         withInt:(jint)offset
                         withInt:(jint)length
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)store;

- (instancetype)initWithNSString:(NSString *)name
                   withByteArray:(IOSByteArray *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)store;

- (instancetype)initWithNSString:(NSString *)name
                withJavaIoReader:(JavaIoReader *)reader;

- (instancetype)initWithNSString:(NSString *)name
                withJavaIoReader:(JavaIoReader *)reader
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)termVector;

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)store
withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)index;

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)value
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)store
withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)index
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)termVector;

- (instancetype)initWithNSString:(NSString *)name
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream;

- (instancetype)initWithNSString:(NSString *)name
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)termVector;

- (JavaIoReader *)readerValue;

- (void)setTokenStreamWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream;

- (void)setValueWithByteArray:(IOSByteArray *)value;

- (void)setValueWithByteArray:(IOSByteArray *)value
                      withInt:(jint)offset
                      withInt:(jint)length;

- (void)setValueWithJavaIoReader:(JavaIoReader *)value;

- (void)setValueWithNSString:(NSString *)value;

- (NSString *)stringValue;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamValue;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg1
withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg2
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentField)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_(OrgApacheLuceneDocumentField *self, NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(OrgApacheLuceneDocumentField *self, NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withBoolean_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(OrgApacheLuceneDocumentField *self, NSString *name, jboolean internName, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withBoolean_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, jboolean internName, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withBoolean_withNSString_withOrgApacheLuceneDocumentField_Store_withOrgApacheLuceneDocumentField_Index_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, jboolean internName, NSString *value, OrgApacheLuceneDocumentField_Store *store, OrgApacheLuceneDocumentField_Index *index, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_(OrgApacheLuceneDocumentField *self, NSString *name, JavaIoReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_(NSString *name, JavaIoReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_(NSString *name, JavaIoReader *reader);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentField_TermVector_(OrgApacheLuceneDocumentField *self, NSString *name, JavaIoReader *reader, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, JavaIoReader *reader, OrgApacheLuceneDocumentField_TermVector *termVector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withJavaIoReader_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, JavaIoReader *reader, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneDocumentField *self, NSString *name, OrgApacheLuceneAnalysisTokenStream *tokenStream);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_(NSString *name, OrgApacheLuceneAnalysisTokenStream *tokenStream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_(NSString *name, OrgApacheLuceneAnalysisTokenStream *tokenStream);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentField_TermVector_(OrgApacheLuceneDocumentField *self, NSString *name, OrgApacheLuceneAnalysisTokenStream *tokenStream, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, OrgApacheLuceneAnalysisTokenStream *tokenStream, OrgApacheLuceneDocumentField_TermVector *termVector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneDocumentField_TermVector_(NSString *name, OrgApacheLuceneAnalysisTokenStream *tokenStream, OrgApacheLuceneDocumentField_TermVector *termVector);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentField *self, NSString *name, IOSByteArray *value, OrgApacheLuceneDocumentField_Store *store);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentField_Store_(NSString *name, IOSByteArray *value, OrgApacheLuceneDocumentField_Store *store) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withOrgApacheLuceneDocumentField_Store_(NSString *name, IOSByteArray *value, OrgApacheLuceneDocumentField_Store *store);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withByteArray_(OrgApacheLuceneDocumentField *self, NSString *name, IOSByteArray *value);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_(NSString *name, IOSByteArray *value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_(NSString *name, IOSByteArray *value);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_withOrgApacheLuceneDocumentField_Store_(OrgApacheLuceneDocumentField *self, NSString *name, IOSByteArray *value, jint offset, jint length, OrgApacheLuceneDocumentField_Store *store);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_withOrgApacheLuceneDocumentField_Store_(NSString *name, IOSByteArray *value, jint offset, jint length, OrgApacheLuceneDocumentField_Store *store) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_withOrgApacheLuceneDocumentField_Store_(NSString *name, IOSByteArray *value, jint offset, jint length, OrgApacheLuceneDocumentField_Store *store);

FOUNDATION_EXPORT void OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_(OrgApacheLuceneDocumentField *self, NSString *name, IOSByteArray *value, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *new_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_(NSString *name, IOSByteArray *value, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneDocumentField *create_OrgApacheLuceneDocumentField_initWithNSString_withByteArray_withInt_withInt_(NSString *name, IOSByteArray *value, jint offset, jint length);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentField)

#endif

#if !defined (OrgApacheLuceneDocumentField_Store_) && (INCLUDE_ALL_OrgApacheLuceneDocumentField || defined(INCLUDE_OrgApacheLuceneDocumentField_Store))
#define OrgApacheLuceneDocumentField_Store_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneDocumentField_Store_Enum) {
  OrgApacheLuceneDocumentField_Store_Enum_YES = 0,
  OrgApacheLuceneDocumentField_Store_Enum_NO = 1,
};

@interface OrgApacheLuceneDocumentField_Store : JavaLangEnum

#pragma mark Public

- (jboolean)isStored;

+ (OrgApacheLuceneDocumentField_Store *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentField_Store)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Store *OrgApacheLuceneDocumentField_Store_values_[];

inline OrgApacheLuceneDocumentField_Store *OrgApacheLuceneDocumentField_Store_get_YES(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Store, YES)

inline OrgApacheLuceneDocumentField_Store *OrgApacheLuceneDocumentField_Store_get_NO(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Store, NO)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneDocumentField_Store_values(void);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Store *OrgApacheLuceneDocumentField_Store_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Store *OrgApacheLuceneDocumentField_Store_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentField_Store)

#endif

#if !defined (OrgApacheLuceneDocumentField_Index_) && (INCLUDE_ALL_OrgApacheLuceneDocumentField || defined(INCLUDE_OrgApacheLuceneDocumentField_Index))
#define OrgApacheLuceneDocumentField_Index_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneDocumentField_Index_Enum) {
  OrgApacheLuceneDocumentField_Index_Enum_NO = 0,
  OrgApacheLuceneDocumentField_Index_Enum_ANALYZED = 1,
  OrgApacheLuceneDocumentField_Index_Enum_NOT_ANALYZED = 2,
  OrgApacheLuceneDocumentField_Index_Enum_NOT_ANALYZED_NO_NORMS = 3,
  OrgApacheLuceneDocumentField_Index_Enum_ANALYZED_NO_NORMS = 4,
};

@interface OrgApacheLuceneDocumentField_Index : JavaLangEnum

#pragma mark Public

- (jboolean)isAnalyzed;

- (jboolean)isIndexed;

- (jboolean)omitNorms;

+ (OrgApacheLuceneDocumentField_Index *)toIndexWithBoolean:(jboolean)indexed
                                               withBoolean:(jboolean)analyzed;

+ (OrgApacheLuceneDocumentField_Index *)toIndexWithBoolean:(jboolean)indexed
                                               withBoolean:(jboolean)analyzed
                                               withBoolean:(jboolean)omitNorms;

+ (OrgApacheLuceneDocumentField_Index *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentField_Index)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_values_[];

inline OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_get_NO(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Index, NO)

inline OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_get_ANALYZED(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Index, ANALYZED)

inline OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_get_NOT_ANALYZED(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Index, NOT_ANALYZED)

inline OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_get_NOT_ANALYZED_NO_NORMS(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Index, NOT_ANALYZED_NO_NORMS)

inline OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_get_ANALYZED_NO_NORMS(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_Index, ANALYZED_NO_NORMS)

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_toIndexWithBoolean_withBoolean_(jboolean indexed, jboolean analyzed);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_toIndexWithBoolean_withBoolean_withBoolean_(jboolean indexed, jboolean analyzed, jboolean omitNorms);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneDocumentField_Index_values(void);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_Index *OrgApacheLuceneDocumentField_Index_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentField_Index)

#endif

#if !defined (OrgApacheLuceneDocumentField_TermVector_) && (INCLUDE_ALL_OrgApacheLuceneDocumentField || defined(INCLUDE_OrgApacheLuceneDocumentField_TermVector))
#define OrgApacheLuceneDocumentField_TermVector_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

@class IOSObjectArray;

typedef NS_ENUM(NSUInteger, OrgApacheLuceneDocumentField_TermVector_Enum) {
  OrgApacheLuceneDocumentField_TermVector_Enum_NO = 0,
  OrgApacheLuceneDocumentField_TermVector_Enum_YES = 1,
  OrgApacheLuceneDocumentField_TermVector_Enum_WITH_POSITIONS = 2,
  OrgApacheLuceneDocumentField_TermVector_Enum_WITH_OFFSETS = 3,
  OrgApacheLuceneDocumentField_TermVector_Enum_WITH_POSITIONS_OFFSETS = 4,
};

@interface OrgApacheLuceneDocumentField_TermVector : JavaLangEnum

#pragma mark Public

- (jboolean)isStored;

+ (OrgApacheLuceneDocumentField_TermVector *)toTermVectorWithBoolean:(jboolean)stored
                                                         withBoolean:(jboolean)withOffsets
                                                         withBoolean:(jboolean)withPositions;

+ (OrgApacheLuceneDocumentField_TermVector *)valueOfWithNSString:(NSString *)name;

+ (IOSObjectArray *)values;

- (jboolean)withOffsets;

- (jboolean)withPositions;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneDocumentField_TermVector)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_values_[];

inline OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_get_NO(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_TermVector, NO)

inline OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_get_YES(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_TermVector, YES)

inline OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_get_WITH_POSITIONS(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_TermVector, WITH_POSITIONS)

inline OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_get_WITH_OFFSETS(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_TermVector, WITH_OFFSETS)

inline OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_get_WITH_POSITIONS_OFFSETS(void);
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneDocumentField_TermVector, WITH_POSITIONS_OFFSETS)

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_toTermVectorWithBoolean_withBoolean_withBoolean_(jboolean stored, jboolean withOffsets, jboolean withPositions);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneDocumentField_TermVector_values(void);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneDocumentField_TermVector *OrgApacheLuceneDocumentField_TermVector_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentField_TermVector)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneDocumentField")

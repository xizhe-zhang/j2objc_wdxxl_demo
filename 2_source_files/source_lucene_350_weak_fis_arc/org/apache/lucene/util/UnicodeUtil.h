//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/UnicodeUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil")
#ifdef RESTRICT_OrgApacheLuceneUtilUnicodeUtil
#define INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilUnicodeUtil

#if !defined (OrgApacheLuceneUtilUnicodeUtil_) && (INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil || defined(INCLUDE_OrgApacheLuceneUtilUnicodeUtil))
#define OrgApacheLuceneUtilUnicodeUtil_

@class IOSByteArray;
@class IOSCharArray;
@class IOSIntArray;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilCharsRef;
@class OrgApacheLuceneUtilUnicodeUtil_UTF16Result;
@class OrgApacheLuceneUtilUnicodeUtil_UTF8Result;
@protocol JavaLangCharSequence;

@interface OrgApacheLuceneUtilUnicodeUtil : NSObject

#pragma mark Public

+ (NSString *)newStringWithIntArray:(IOSIntArray *)codePoints
                            withInt:(jint)offset
                            withInt:(jint)count OBJC_METHOD_FAMILY_NONE;

+ (void)UTF16toUTF8WithCharArray:(IOSCharArray *)source
                         withInt:(jint)offset
                         withInt:(jint)length
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)result;

+ (void)UTF16toUTF8WithCharArray:(IOSCharArray *)source
                         withInt:(jint)offset
                         withInt:(jint)length
withOrgApacheLuceneUtilUnicodeUtil_UTF8Result:(OrgApacheLuceneUtilUnicodeUtil_UTF8Result *)result;

+ (void)UTF16toUTF8WithCharArray:(IOSCharArray *)source
                         withInt:(jint)offset
withOrgApacheLuceneUtilUnicodeUtil_UTF8Result:(OrgApacheLuceneUtilUnicodeUtil_UTF8Result *)result;

+ (void)UTF16toUTF8WithJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                    withInt:(jint)offset
                                    withInt:(jint)length
            withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)result;

+ (void)UTF16toUTF8WithNSString:(NSString *)s
                        withInt:(jint)offset
                        withInt:(jint)length
withOrgApacheLuceneUtilUnicodeUtil_UTF8Result:(OrgApacheLuceneUtilUnicodeUtil_UTF8Result *)result;

+ (jint)UTF16toUTF8WithHashWithCharArray:(IOSCharArray *)source
                                 withInt:(jint)offset
                                 withInt:(jint)length
         withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)result;

+ (void)UTF8toUTF16WithByteArray:(IOSByteArray *)utf8
                         withInt:(jint)offset
                         withInt:(jint)length
 withOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)chars;

+ (void)UTF8toUTF16WithByteArray:(IOSByteArray *)utf8
                         withInt:(jint)offset
                         withInt:(jint)length
withOrgApacheLuceneUtilUnicodeUtil_UTF16Result:(OrgApacheLuceneUtilUnicodeUtil_UTF16Result *)result;

+ (void)UTF8toUTF16WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytesRef
                   withOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)chars;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilUnicodeUtil)

inline jint OrgApacheLuceneUtilUnicodeUtil_get_UNI_SUR_HIGH_START(void);
#define OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_START 55296
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, UNI_SUR_HIGH_START, jint)

inline jint OrgApacheLuceneUtilUnicodeUtil_get_UNI_SUR_HIGH_END(void);
#define OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_HIGH_END 56319
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, UNI_SUR_HIGH_END, jint)

inline jint OrgApacheLuceneUtilUnicodeUtil_get_UNI_SUR_LOW_START(void);
#define OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_START 56320
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, UNI_SUR_LOW_START, jint)

inline jint OrgApacheLuceneUtilUnicodeUtil_get_UNI_SUR_LOW_END(void);
#define OrgApacheLuceneUtilUnicodeUtil_UNI_SUR_LOW_END 57343
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, UNI_SUR_LOW_END, jint)

inline jint OrgApacheLuceneUtilUnicodeUtil_get_UNI_REPLACEMENT_CHAR(void);
#define OrgApacheLuceneUtilUnicodeUtil_UNI_REPLACEMENT_CHAR 65533
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilUnicodeUtil, UNI_REPLACEMENT_CHAR, jint)

FOUNDATION_EXPORT jint OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithHashWithCharArray_withInt_withInt_withOrgApacheLuceneUtilBytesRef_(IOSCharArray *source, jint offset, jint length, OrgApacheLuceneUtilBytesRef *result);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withOrgApacheLuceneUtilUnicodeUtil_UTF8Result_(IOSCharArray *source, jint offset, OrgApacheLuceneUtilUnicodeUtil_UTF8Result *result);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withOrgApacheLuceneUtilUnicodeUtil_UTF8Result_(IOSCharArray *source, jint offset, jint length, OrgApacheLuceneUtilUnicodeUtil_UTF8Result *result);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithNSString_withInt_withInt_withOrgApacheLuceneUtilUnicodeUtil_UTF8Result_(NSString *s, jint offset, jint length, OrgApacheLuceneUtilUnicodeUtil_UTF8Result *result);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withOrgApacheLuceneUtilBytesRef_(id<JavaLangCharSequence> s, jint offset, jint length, OrgApacheLuceneUtilBytesRef *result);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithCharArray_withInt_withInt_withOrgApacheLuceneUtilBytesRef_(IOSCharArray *source, jint offset, jint length, OrgApacheLuceneUtilBytesRef *result);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withOrgApacheLuceneUtilUnicodeUtil_UTF16Result_(IOSByteArray *utf8, jint offset, jint length, OrgApacheLuceneUtilUnicodeUtil_UTF16Result *result);

FOUNDATION_EXPORT NSString *OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(IOSIntArray *codePoints, jint offset, jint count);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithByteArray_withInt_withInt_withOrgApacheLuceneUtilCharsRef_(IOSByteArray *utf8, jint offset, jint length, OrgApacheLuceneUtilCharsRef *chars);

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilBytesRef *bytesRef, OrgApacheLuceneUtilCharsRef *chars);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilUnicodeUtil)

#endif

#if !defined (OrgApacheLuceneUtilUnicodeUtil_UTF8Result_) && (INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil || defined(INCLUDE_OrgApacheLuceneUtilUnicodeUtil_UTF8Result))
#define OrgApacheLuceneUtilUnicodeUtil_UTF8Result_

@class IOSByteArray;

@interface OrgApacheLuceneUtilUnicodeUtil_UTF8Result : NSObject {
 @public
  IOSByteArray *result_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (void)setLengthWithInt:(jint)newLength;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilUnicodeUtil_UTF8Result)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilUnicodeUtil_UTF8Result, result_, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init(OrgApacheLuceneUtilUnicodeUtil_UTF8Result *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilUnicodeUtil_UTF8Result *new_OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilUnicodeUtil_UTF8Result *create_OrgApacheLuceneUtilUnicodeUtil_UTF8Result_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilUnicodeUtil_UTF8Result)

#endif

#if !defined (OrgApacheLuceneUtilUnicodeUtil_UTF16Result_) && (INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil || defined(INCLUDE_OrgApacheLuceneUtilUnicodeUtil_UTF16Result))
#define OrgApacheLuceneUtilUnicodeUtil_UTF16Result_

@class IOSCharArray;
@class IOSIntArray;

@interface OrgApacheLuceneUtilUnicodeUtil_UTF16Result : NSObject {
 @public
  IOSCharArray *result_;
  IOSIntArray *offsets_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (void)copyTextWithOrgApacheLuceneUtilUnicodeUtil_UTF16Result:(OrgApacheLuceneUtilUnicodeUtil_UTF16Result *)other OBJC_METHOD_FAMILY_NONE;

- (void)setLengthWithInt:(jint)newLength;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilUnicodeUtil_UTF16Result)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilUnicodeUtil_UTF16Result, result_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilUnicodeUtil_UTF16Result, offsets_, IOSIntArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilUnicodeUtil_UTF16Result_init(OrgApacheLuceneUtilUnicodeUtil_UTF16Result *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilUnicodeUtil_UTF16Result *new_OrgApacheLuceneUtilUnicodeUtil_UTF16Result_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilUnicodeUtil_UTF16Result *create_OrgApacheLuceneUtilUnicodeUtil_UTF16Result_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilUnicodeUtil_UTF16Result)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilUnicodeUtil")
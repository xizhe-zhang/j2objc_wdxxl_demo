//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/BytesRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilBytesRef")
#ifdef RESTRICT_OrgApacheLuceneUtilBytesRef
#define INCLUDE_ALL_OrgApacheLuceneUtilBytesRef 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilBytesRef 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilBytesRef

#if !defined (OrgApacheLuceneUtilBytesRef_) && (INCLUDE_ALL_OrgApacheLuceneUtilBytesRef || defined(INCLUDE_OrgApacheLuceneUtilBytesRef))
#define OrgApacheLuceneUtilBytesRef_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

@class IOSByteArray;
@class IOSCharArray;
@protocol JavaLangCharSequence;
@protocol JavaUtilComparator;

@interface OrgApacheLuceneUtilBytesRef : NSObject < JavaLangComparable > {
 @public
  IOSByteArray *bytes_;
  jint offset_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes;

- (instancetype)initWithByteArray:(IOSByteArray *)bytes
                          withInt:(jint)offset
                          withInt:(jint)length;

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (instancetype)initWithCharArray:(IOSCharArray *)text
                          withInt:(jint)offset
                          withInt:(jint)length;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)text;

- (instancetype)initWithInt:(jint)capacity;

- (void)appendWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (jboolean)bytesEqualsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (id)java_clone;

- (jint)compareToWithId:(OrgApacheLuceneUtilBytesRef *)other;

- (void)copy__WithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other OBJC_METHOD_FAMILY_NONE;

- (void)copy__WithCharArray:(IOSCharArray *)text
                    withInt:(jint)offset
                    withInt:(jint)length OBJC_METHOD_FAMILY_NONE;

- (void)copy__WithJavaLangCharSequence:(id<JavaLangCharSequence>)text OBJC_METHOD_FAMILY_NONE;

- (jboolean)endsWithWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (jboolean)isEqual:(id)other;

+ (id<JavaUtilComparator>)getUTF8SortedAsUnicodeComparator;

+ (id<JavaUtilComparator>)getUTF8SortedAsUTF16Comparator;

- (void)growWithInt:(jint)newLength;

- (NSUInteger)hash;

- (jboolean)startsWithWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)other;

- (NSString *)description;

- (NSString *)utf8ToString;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilBytesRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRef, bytes_, IOSByteArray *)

inline jint OrgApacheLuceneUtilBytesRef_get_HASH_PRIME(void);
#define OrgApacheLuceneUtilBytesRef_HASH_PRIME 31
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilBytesRef, HASH_PRIME, jint)

inline IOSByteArray *OrgApacheLuceneUtilBytesRef_get_EMPTY_BYTES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *OrgApacheLuceneUtilBytesRef_EMPTY_BYTES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilBytesRef, EMPTY_BYTES, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_init(OrgApacheLuceneUtilBytesRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(OrgApacheLuceneUtilBytesRef *self, IOSByteArray *bytes, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(IOSByteArray *bytes, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithByteArray_(OrgApacheLuceneUtilBytesRef *self, IOSByteArray *bytes);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithByteArray_(IOSByteArray *bytes);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithInt_(OrgApacheLuceneUtilBytesRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithInt_(jint capacity);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(OrgApacheLuceneUtilBytesRef *self, id<JavaLangCharSequence> text);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(id<JavaLangCharSequence> text);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(OrgApacheLuceneUtilBytesRef *self, IOSCharArray *text, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(IOSCharArray *text, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithCharArray_withInt_withInt_(IOSCharArray *text, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *self, OrgApacheLuceneUtilBytesRef *other);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *new_OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRef *create_OrgApacheLuceneUtilBytesRef_initWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *other);

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator(void);

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUTF16Comparator(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRef)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilBytesRef")

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/CharsRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilCharsRef")
#ifdef RESTRICT_OrgApacheLuceneUtilCharsRef
#define INCLUDE_ALL_OrgApacheLuceneUtilCharsRef 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilCharsRef 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilCharsRef

#if !defined (OrgApacheLuceneUtilCharsRef_) && (INCLUDE_ALL_OrgApacheLuceneUtilCharsRef || defined(INCLUDE_OrgApacheLuceneUtilCharsRef))
#define OrgApacheLuceneUtilCharsRef_

#define RESTRICT_JavaLangComparable 1
#define INCLUDE_JavaLangComparable 1
#include "java/lang/Comparable.h"

#define RESTRICT_JavaLangCharSequence 1
#define INCLUDE_JavaLangCharSequence 1
#include "java/lang/CharSequence.h"

@class IOSCharArray;
@protocol JavaUtilComparator;
@protocol JavaUtilStreamIntStream;

@interface OrgApacheLuceneUtilCharsRef : NSObject < JavaLangComparable, JavaLangCharSequence > {
 @public
  IOSCharArray *chars_;
  jint offset_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithCharArray:(IOSCharArray *)chars
                          withInt:(jint)offset
                          withInt:(jint)length;

- (instancetype)initWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other;

- (instancetype)initWithInt:(jint)capacity;

- (instancetype)initWithNSString:(NSString *)string;

- (void)appendWithCharArray:(IOSCharArray *)otherChars
                    withInt:(jint)otherOffset
                    withInt:(jint)otherLength;

- (jchar)charAtWithInt:(jint)index;

- (jboolean)charsEqualsWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other;

- (id)java_clone;

- (jint)compareToWithId:(OrgApacheLuceneUtilCharsRef *)other;

- (void)copy__WithCharArray:(IOSCharArray *)otherChars
                    withInt:(jint)otherOffset
                    withInt:(jint)otherLength OBJC_METHOD_FAMILY_NONE;

- (void)copy__WithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)other OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

+ (id<JavaUtilComparator>)getUTF16SortedAsUTF8Comparator;

- (void)growWithInt:(jint)newLength;

- (NSUInteger)hash;

- (jint)java_length;

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilCharsRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilCharsRef, chars_, IOSCharArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_init(OrgApacheLuceneUtilCharsRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithInt_(OrgApacheLuceneUtilCharsRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithInt_(jint capacity);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(OrgApacheLuceneUtilCharsRef *self, IOSCharArray *chars, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(IOSCharArray *chars, jint offset, jint length) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithCharArray_withInt_withInt_(IOSCharArray *chars, jint offset, jint length);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithNSString_(OrgApacheLuceneUtilCharsRef *self, NSString *string);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithNSString_(NSString *string) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithNSString_(NSString *string);

FOUNDATION_EXPORT void OrgApacheLuceneUtilCharsRef_initWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilCharsRef *self, OrgApacheLuceneUtilCharsRef *other);

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_initWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilCharsRef *other) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilCharsRef *create_OrgApacheLuceneUtilCharsRef_initWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilCharsRef *other);

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilCharsRef)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilCharsRef")

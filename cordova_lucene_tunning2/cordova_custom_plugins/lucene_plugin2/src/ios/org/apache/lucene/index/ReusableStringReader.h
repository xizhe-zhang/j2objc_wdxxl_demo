//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/ReusableStringReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexReusableStringReader")
#ifdef RESTRICT_OrgApacheLuceneIndexReusableStringReader
#define INCLUDE_ALL_OrgApacheLuceneIndexReusableStringReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexReusableStringReader 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexReusableStringReader

#if !defined (OrgApacheLuceneIndexReusableStringReader_) && (INCLUDE_ALL_OrgApacheLuceneIndexReusableStringReader || defined(INCLUDE_OrgApacheLuceneIndexReusableStringReader))
#define OrgApacheLuceneIndexReusableStringReader_

#define RESTRICT_JavaIoReader 1
#define INCLUDE_JavaIoReader 1
#include "java/io/Reader.h"

@class IOSCharArray;

@interface OrgApacheLuceneIndexReusableStringReader : JavaIoReader {
 @public
  jint upto_;
  jint left_;
  NSString *s_;
}

#pragma mark Public

- (void)close;

- (jint)readWithCharArray:(IOSCharArray *)c;

- (jint)readWithCharArray:(IOSCharArray *)c
                  withInt:(jint)off
                  withInt:(jint)len;

#pragma mark Package-Private

- (instancetype)init;

- (void)init__WithNSString:(NSString *)s OBJC_METHOD_FAMILY_NONE;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithId:(id)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexReusableStringReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexReusableStringReader, s_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexReusableStringReader_init(OrgApacheLuceneIndexReusableStringReader *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexReusableStringReader *new_OrgApacheLuceneIndexReusableStringReader_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexReusableStringReader *create_OrgApacheLuceneIndexReusableStringReader_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexReusableStringReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexReusableStringReader")

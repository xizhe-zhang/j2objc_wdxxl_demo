//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/CorruptIndexException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException")
#ifdef RESTRICT_OrgApacheLuceneIndexCorruptIndexException
#define INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexCorruptIndexException

#if !defined (OrgApacheLuceneIndexCorruptIndexException_) && (INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException || defined(INCLUDE_OrgApacheLuceneIndexCorruptIndexException))
#define OrgApacheLuceneIndexCorruptIndexException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class JavaLangThrowable;

@interface OrgApacheLuceneIndexCorruptIndexException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCorruptIndexException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCorruptIndexException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException")

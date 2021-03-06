//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/index/StaleReaderException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexStaleReaderException")
#ifdef RESTRICT_OrgApacheLuceneIndexStaleReaderException
#define INCLUDE_ALL_OrgApacheLuceneIndexStaleReaderException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexStaleReaderException 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexStaleReaderException

#if !defined (OrgApacheLuceneIndexStaleReaderException_) && (INCLUDE_ALL_OrgApacheLuceneIndexStaleReaderException || defined(INCLUDE_OrgApacheLuceneIndexStaleReaderException))
#define OrgApacheLuceneIndexStaleReaderException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class JavaLangThrowable;

@interface OrgApacheLuceneIndexStaleReaderException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexStaleReaderException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexStaleReaderException_initWithNSString_(OrgApacheLuceneIndexStaleReaderException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneIndexStaleReaderException *new_OrgApacheLuceneIndexStaleReaderException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexStaleReaderException *create_OrgApacheLuceneIndexStaleReaderException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexStaleReaderException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexStaleReaderException")

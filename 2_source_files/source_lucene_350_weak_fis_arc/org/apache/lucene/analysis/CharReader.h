//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/CharReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharReader")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCharReader
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCharReader 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCharReader

#if !defined (OrgApacheLuceneAnalysisCharReader_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisCharReader || defined(INCLUDE_OrgApacheLuceneAnalysisCharReader))
#define OrgApacheLuceneAnalysisCharReader_

#define RESTRICT_OrgApacheLuceneAnalysisCharStream 1
#define INCLUDE_OrgApacheLuceneAnalysisCharStream 1
#include "org/apache/lucene/analysis/CharStream.h"

@class IOSCharArray;
@class JavaIoReader;

@interface OrgApacheLuceneAnalysisCharReader : OrgApacheLuceneAnalysisCharStream

#pragma mark Public

- (void)close;

- (jint)correctOffsetWithInt:(jint)currentOff;

+ (OrgApacheLuceneAnalysisCharStream *)getWithJavaIoReader:(JavaIoReader *)input;

- (void)markWithInt:(jint)readAheadLimit;

- (jboolean)markSupported;

- (jint)readWithCharArray:(IOSCharArray *)cbuf
                  withInt:(jint)off
                  withInt:(jint)len;

- (void)reset;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCharReader)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharStream *OrgApacheLuceneAnalysisCharReader_getWithJavaIoReader_(JavaIoReader *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCharReader)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCharReader")

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/FormatPostingsDocsConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsDocsConsumer")
#ifdef RESTRICT_OrgApacheLuceneIndexFormatPostingsDocsConsumer
#define INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsDocsConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsDocsConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFormatPostingsDocsConsumer

#if !defined (OrgApacheLuceneIndexFormatPostingsDocsConsumer_) && (INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsDocsConsumer || defined(INCLUDE_OrgApacheLuceneIndexFormatPostingsDocsConsumer))
#define OrgApacheLuceneIndexFormatPostingsDocsConsumer_

@class OrgApacheLuceneIndexFormatPostingsPositionsConsumer;

@interface OrgApacheLuceneIndexFormatPostingsDocsConsumer : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (OrgApacheLuceneIndexFormatPostingsPositionsConsumer *)addDocWithInt:(jint)docID
                                                               withInt:(jint)termDocFreq;

- (void)finish;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFormatPostingsDocsConsumer)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFormatPostingsDocsConsumer_init(OrgApacheLuceneIndexFormatPostingsDocsConsumer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFormatPostingsDocsConsumer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFormatPostingsDocsConsumer")
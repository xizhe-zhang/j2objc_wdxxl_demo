//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/payloads/AveragePayloadFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsAveragePayloadFunction")
#ifdef RESTRICT_OrgApacheLuceneSearchPayloadsAveragePayloadFunction
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsAveragePayloadFunction 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsAveragePayloadFunction 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPayloadsAveragePayloadFunction

#if !defined (OrgApacheLuceneSearchPayloadsAveragePayloadFunction_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsAveragePayloadFunction || defined(INCLUDE_OrgApacheLuceneSearchPayloadsAveragePayloadFunction))
#define OrgApacheLuceneSearchPayloadsAveragePayloadFunction_

#define RESTRICT_OrgApacheLuceneSearchPayloadsPayloadFunction 1
#define INCLUDE_OrgApacheLuceneSearchPayloadsPayloadFunction 1
#include "org/apache/lucene/search/payloads/PayloadFunction.h"

@class OrgApacheLuceneSearchExplanation;

@interface OrgApacheLuceneSearchPayloadsAveragePayloadFunction : OrgApacheLuceneSearchPayloadsPayloadFunction

#pragma mark Public

- (instancetype)init;

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore;

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc
                                             withInt:(jint)numPayloadsSeen
                                           withFloat:(jfloat)payloadScore;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsAveragePayloadFunction)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsAveragePayloadFunction_init(OrgApacheLuceneSearchPayloadsAveragePayloadFunction *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsAveragePayloadFunction *new_OrgApacheLuceneSearchPayloadsAveragePayloadFunction_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsAveragePayloadFunction *create_OrgApacheLuceneSearchPayloadsAveragePayloadFunction_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsAveragePayloadFunction)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsAveragePayloadFunction")

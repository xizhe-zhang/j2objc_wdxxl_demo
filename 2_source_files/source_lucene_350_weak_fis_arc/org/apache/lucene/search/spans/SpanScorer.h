//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer")
#ifdef RESTRICT_OrgApacheLuceneSearchSpansSpanScorer
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSpansSpanScorer

#if !defined (OrgApacheLuceneSearchSpansSpanScorer_) && (INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer || defined(INCLUDE_OrgApacheLuceneSearchSpansSpanScorer))
#define OrgApacheLuceneSearchSpansSpanScorer_

#define RESTRICT_OrgApacheLuceneSearchScorer 1
#define INCLUDE_OrgApacheLuceneSearchScorer 1
#include "org/apache/lucene/search/Scorer.h"

@class IOSByteArray;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchSimilarity;
@class OrgApacheLuceneSearchSpansSpans;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchSpansSpanScorer : OrgApacheLuceneSearchScorer {
 @public
  OrgApacheLuceneSearchSpansSpans *spans_;
  IOSByteArray *norms_;
  jfloat value_;
  jboolean more_;
  jint doc_;
  jfloat freq_;
}

#pragma mark Public

- (jint)advanceWithInt:(jint)target;

- (jint)docID;

- (jfloat)freq;

- (jint)nextDoc;

- (jfloat)score;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)spans
                        withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                    withOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)similarity
                                          withByteArray:(IOSByteArray *)norms;

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc;

- (jboolean)setFreqCurrentDoc;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)arg0
                        withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg1 NS_UNAVAILABLE;

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanScorer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanScorer, spans_, OrgApacheLuceneSearchSpansSpans *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanScorer, norms_, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchSpansSpanScorer *self, OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanScorer *new_OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansSpanScorer *create_OrgApacheLuceneSearchSpansSpanScorer_initWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchSimilarity_withByteArray_(OrgApacheLuceneSearchSpansSpans *spans, OrgApacheLuceneSearchWeight *weight, OrgApacheLuceneSearchSimilarity *similarity, IOSByteArray *norms);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanScorer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSpansSpanScorer")
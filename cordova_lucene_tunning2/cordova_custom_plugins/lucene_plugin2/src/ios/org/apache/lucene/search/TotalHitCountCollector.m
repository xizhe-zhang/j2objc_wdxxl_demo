//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/TotalHitCountCollector.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/TotalHitCountCollector.h"

@interface OrgApacheLuceneSearchTotalHitCountCollector () {
 @public
  jint totalHits_;
}

@end

@implementation OrgApacheLuceneSearchTotalHitCountCollector

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchTotalHitCountCollector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getTotalHits {
  return totalHits_;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
}

- (void)collectWithInt:(jint)doc {
  totalHits_++;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase {
}

- (jboolean)acceptsDocsOutOfOrder {
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTotalHits);
  methods[2].selector = @selector(setScorerWithOrgApacheLuceneSearchScorer:);
  methods[3].selector = @selector(collectWithInt:);
  methods[4].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[5].selector = @selector(acceptsDocsOutOfOrder);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "totalHits_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setScorer", "LOrgApacheLuceneSearchScorer;", "collect", "I", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTotalHitCountCollector = { "TotalHitCountCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 6, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTotalHitCountCollector;
}

@end

void OrgApacheLuceneSearchTotalHitCountCollector_init(OrgApacheLuceneSearchTotalHitCountCollector *self) {
  OrgApacheLuceneSearchCollector_init(self);
}

OrgApacheLuceneSearchTotalHitCountCollector *new_OrgApacheLuceneSearchTotalHitCountCollector_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTotalHitCountCollector, init)
}

OrgApacheLuceneSearchTotalHitCountCollector *create_OrgApacheLuceneSearchTotalHitCountCollector_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTotalHitCountCollector, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTotalHitCountCollector)

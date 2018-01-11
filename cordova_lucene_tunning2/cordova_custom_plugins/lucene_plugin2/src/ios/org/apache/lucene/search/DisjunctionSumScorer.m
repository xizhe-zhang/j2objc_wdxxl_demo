//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/DisjunctionSumScorer.java
//

#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/DisjunctionSumScorer.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ScorerDocQueue.h"

@interface OrgApacheLuceneSearchDisjunctionSumScorer () {
 @public
  jint nrScorers_;
  jint minimumNrMatchers_;
  OrgApacheLuceneUtilScorerDocQueue *scorerDocQueue_;
  jint currentDoc_;
  jdouble currentScore_;
}

- (void)initScorerDocQueue OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisjunctionSumScorer, scorerDocQueue_, OrgApacheLuceneUtilScorerDocQueue *)

__attribute__((unused)) static void OrgApacheLuceneSearchDisjunctionSumScorer_initScorerDocQueue(OrgApacheLuceneSearchDisjunctionSumScorer *self);

@implementation OrgApacheLuceneSearchDisjunctionSumScorer

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                   withJavaUtilList:(id<JavaUtilList>)subScorers
                                            withInt:(jint)minimumNrMatchers {
  OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_(self, weight, subScorers, minimumNrMatchers);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                   withJavaUtilList:(id<JavaUtilList>)subScorers {
  OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_(self, weight, subScorers);
  return self;
}

- (void)initScorerDocQueue {
  OrgApacheLuceneSearchDisjunctionSumScorer_initScorerDocQueue(self);
}

- (void)scoreWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector {
  [((OrgApacheLuceneSearchCollector *) nil_chk(collector)) setScorerWithOrgApacheLuceneSearchScorer:self];
  while ([self nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
    [collector collectWithInt:currentDoc_];
  }
}

- (jboolean)scoreWithOrgApacheLuceneSearchCollector:(OrgApacheLuceneSearchCollector *)collector
                                            withInt:(jint)max
                                            withInt:(jint)firstDocID {
  [((OrgApacheLuceneSearchCollector *) nil_chk(collector)) setScorerWithOrgApacheLuceneSearchScorer:self];
  while (currentDoc_ < max) {
    [collector collectWithInt:currentDoc_];
    if ([self nextDoc] == OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      return false;
    }
  }
  return true;
}

- (jint)nextDoc {
  if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) size] < minimumNrMatchers_ || ![self advanceAfterCurrent]) {
    currentDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  return currentDoc_;
}

- (jboolean)advanceAfterCurrent {
  do {
    currentDoc_ = [((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topDoc];
    currentScore_ = [((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topScore];
    nrMatchers_ = 1;
    do {
      if (![((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topNextAndAdjustElsePop]) {
        if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) size] == 0) {
          break;
        }
      }
      if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topDoc] != currentDoc_) {
        break;
      }
      JrePlusAssignDoubleD(&currentScore_, [((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topScore]);
      nrMatchers_++;
    }
    while (true);
    if (nrMatchers_ >= minimumNrMatchers_) {
      return true;
    }
    else if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) size] < minimumNrMatchers_) {
      return false;
    }
  }
  while (true);
}

- (jfloat)score {
  return (jfloat) currentScore_;
}

- (jint)docID {
  return currentDoc_;
}

- (jint)nrMatchers {
  return nrMatchers_;
}

- (jint)advanceWithInt:(jint)target {
  if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) size] < minimumNrMatchers_) {
    return currentDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
  }
  if (target <= currentDoc_) {
    return currentDoc_;
  }
  do {
    if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topDoc] >= target) {
      return [self advanceAfterCurrent] ? currentDoc_ : (currentDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS);
    }
    else if (![((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) topSkipToAndAdjustElsePopWithInt:target]) {
      if ([((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(scorerDocQueue_)) size] < minimumNrMatchers_) {
        return currentDoc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
      }
    }
  }
  while (true);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, 2, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 1, 4, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, 5, 7, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 9, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchWeight:withJavaUtilList:withInt:);
  methods[1].selector = @selector(initWithOrgApacheLuceneSearchWeight:withJavaUtilList:);
  methods[2].selector = @selector(initScorerDocQueue);
  methods[3].selector = @selector(scoreWithOrgApacheLuceneSearchCollector:);
  methods[4].selector = @selector(scoreWithOrgApacheLuceneSearchCollector:withInt:withInt:);
  methods[5].selector = @selector(nextDoc);
  methods[6].selector = @selector(advanceAfterCurrent);
  methods[7].selector = @selector(score);
  methods[8].selector = @selector(docID);
  methods[9].selector = @selector(nrMatchers);
  methods[10].selector = @selector(advanceWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "nrScorers_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "subScorers_", "LJavaUtilList;", .constantValue.asLong = 0, 0x14, -1, -1, 10, -1 },
    { "minimumNrMatchers_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "scorerDocQueue_", "LOrgApacheLuceneUtilScorerDocQueue;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentDoc_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "nrMatchers_", "I", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "currentScore_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchWeight;LJavaUtilList;I", "LJavaIoIOException;", "(Lorg/apache/lucene/search/Weight;Ljava/util/List<Lorg/apache/lucene/search/Scorer;>;I)V", "LOrgApacheLuceneSearchWeight;LJavaUtilList;", "(Lorg/apache/lucene/search/Weight;Ljava/util/List<Lorg/apache/lucene/search/Scorer;>;)V", "score", "LOrgApacheLuceneSearchCollector;", "LOrgApacheLuceneSearchCollector;II", "advance", "I", "Ljava/util/List<Lorg/apache/lucene/search/Scorer;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisjunctionSumScorer = { "DisjunctionSumScorer", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x0, 11, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchDisjunctionSumScorer;
}

@end

void OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_(OrgApacheLuceneSearchDisjunctionSumScorer *self, OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> subScorers, jint minimumNrMatchers) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, weight);
  self->currentDoc_ = -1;
  self->nrMatchers_ = -1;
  self->currentScore_ = JavaLangFloat_NaN;
  self->nrScorers_ = [((id<JavaUtilList>) nil_chk(subScorers)) size];
  if (minimumNrMatchers <= 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Minimum nr of matchers must be positive");
  }
  if (self->nrScorers_ <= 1) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"There must be at least 2 subScorers");
  }
  self->minimumNrMatchers_ = minimumNrMatchers;
  self->subScorers_ = subScorers;
  OrgApacheLuceneSearchDisjunctionSumScorer_initScorerDocQueue(self);
}

OrgApacheLuceneSearchDisjunctionSumScorer *new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> subScorers, jint minimumNrMatchers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionSumScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_, weight, subScorers, minimumNrMatchers)
}

OrgApacheLuceneSearchDisjunctionSumScorer *create_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> subScorers, jint minimumNrMatchers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionSumScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_, weight, subScorers, minimumNrMatchers)
}

void OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_(OrgApacheLuceneSearchDisjunctionSumScorer *self, OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> subScorers) {
  OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withInt_(self, weight, subScorers, 1);
}

OrgApacheLuceneSearchDisjunctionSumScorer *new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> subScorers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisjunctionSumScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_, weight, subScorers)
}

OrgApacheLuceneSearchDisjunctionSumScorer *create_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_(OrgApacheLuceneSearchWeight *weight, id<JavaUtilList> subScorers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisjunctionSumScorer, initWithOrgApacheLuceneSearchWeight_withJavaUtilList_, weight, subScorers)
}

void OrgApacheLuceneSearchDisjunctionSumScorer_initScorerDocQueue(OrgApacheLuceneSearchDisjunctionSumScorer *self) {
  self->scorerDocQueue_ = new_OrgApacheLuceneUtilScorerDocQueue_initWithInt_(self->nrScorers_);
  for (OrgApacheLuceneSearchScorer * __strong se in nil_chk(self->subScorers_)) {
    if ([((OrgApacheLuceneSearchScorer *) nil_chk(se)) nextDoc] != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS) {
      [((OrgApacheLuceneUtilScorerDocQueue *) nil_chk(self->scorerDocQueue_)) insertWithOrgApacheLuceneSearchScorer:se];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisjunctionSumScorer)

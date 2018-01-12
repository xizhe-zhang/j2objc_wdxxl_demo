//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/PhraseQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermPositions.h"
#include "org/apache/lucene/search/ComplexExplanation.h"
#include "org/apache/lucene/search/ExactPhraseScorer.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Searcher.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/SloppyPhraseScorer.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneSearchPhraseQuery () {
 @public
  NSString *field_;
  JavaUtilArrayList *terms_;
  JavaUtilArrayList *positions_;
  jint maxPosition_;
  jint slop_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhraseQuery, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhraseQuery, terms_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhraseQuery, positions_, JavaUtilArrayList *)

@interface OrgApacheLuceneSearchPhraseQuery_PhraseWeight : OrgApacheLuceneSearchWeight {
 @public
  OrgApacheLuceneSearchPhraseQuery *this$0_;
  OrgApacheLuceneSearchSimilarity *similarity_;
  jfloat value_;
  jfloat idf_;
  jfloat queryNorm_;
  jfloat queryWeight_;
  OrgApacheLuceneSearchExplanation_IDFExplanation *idfExp_;
}

- (instancetype)initWithOrgApacheLuceneSearchPhraseQuery:(OrgApacheLuceneSearchPhraseQuery *)outer$
                       withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher;

- (NSString *)description;

- (OrgApacheLuceneSearchQuery *)getQuery;

- (jfloat)getValue;

- (jfloat)sumOfSquaredWeights;

- (void)normalizeWithFloat:(jfloat)queryNorm;

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                               withBoolean:(jboolean)scoreDocsInOrder
                                                               withBoolean:(jboolean)topScorer;

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                         withInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPhraseQuery_PhraseWeight)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhraseQuery_PhraseWeight, similarity_, OrgApacheLuceneSearchSimilarity *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhraseQuery_PhraseWeight, idfExp_, OrgApacheLuceneSearchExplanation_IDFExplanation *)

__attribute__((unused)) static void OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPhraseQuery_PhraseWeight *self, OrgApacheLuceneSearchPhraseQuery *outer$, OrgApacheLuceneSearchSearcher *searcher);

__attribute__((unused)) static OrgApacheLuceneSearchPhraseQuery_PhraseWeight *new_OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPhraseQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchPhraseQuery_PhraseWeight *create_OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPhraseQuery *outer$, OrgApacheLuceneSearchSearcher *searcher);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPhraseQuery_PhraseWeight)

@implementation OrgApacheLuceneSearchPhraseQuery

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchPhraseQuery_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setSlopWithInt:(jint)s {
  slop_ = s;
}

- (jint)getSlop {
  return slop_;
}

- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  jint position = 0;
  if ([((JavaUtilArrayList *) nil_chk(positions_)) size] > 0) position = [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(positions_)) getWithInt:[positions_ size] - 1])) intValue] + 1;
  [self addWithOrgApacheLuceneIndexTerm:term withInt:position];
}

- (void)addWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                withInt:(jint)position {
  if ([((JavaUtilArrayList *) nil_chk(terms_)) size] == 0) field_ = [((OrgApacheLuceneIndexTerm *) nil_chk(term)) field];
  else if ([((OrgApacheLuceneIndexTerm *) nil_chk(term)) field] != field_) @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"All phrase terms must be in the same field: ", term));
  [((JavaUtilArrayList *) nil_chk(terms_)) addWithId:term];
  [((JavaUtilArrayList *) nil_chk(positions_)) addWithId:JavaLangInteger_valueOfWithInt_(position)];
  if (position > maxPosition_) maxPosition_ = position;
}

- (IOSObjectArray *)getTerms {
  return [((JavaUtilArrayList *) nil_chk(terms_)) toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]];
}

- (IOSIntArray *)getPositions {
  IOSIntArray *result = [IOSIntArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(positions_)) size]];
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(positions_)) size]; i++) *IOSIntArray_GetRef(result, i) = [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(positions_)) getWithInt:i])) intValue];
  return result;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if ([((JavaUtilArrayList *) nil_chk(terms_)) size] == 1) {
    OrgApacheLuceneSearchTermQuery *tq = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_([((JavaUtilArrayList *) nil_chk(terms_)) getWithInt:0]);
    [tq setBoostWithFloat:[self getBoost]];
    return tq;
  }
  else return [super rewriteWithOrgApacheLuceneIndexIndexReader:reader];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  if ([((JavaUtilArrayList *) nil_chk(terms_)) size] == 1) {
    OrgApacheLuceneIndexTerm *term = [((JavaUtilArrayList *) nil_chk(terms_)) getWithInt:0];
    OrgApacheLuceneSearchQuery *termQuery = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
    [termQuery setBoostWithFloat:[self getBoost]];
    return [termQuery createWeightWithOrgApacheLuceneSearchSearcher:searcher];
  }
  return new_OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(self, searcher);
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)queryTerms {
  [((id<JavaUtilSet>) nil_chk(queryTerms)) addAllWithJavaUtilCollection:terms_];
}

- (NSString *)toStringWithNSString:(NSString *)f {
  JavaLangStringBuilder *buffer = new_JavaLangStringBuilder_init();
  if (field_ != nil && ![field_ isEqual:f]) {
    (void) [buffer appendWithNSString:field_];
    (void) [buffer appendWithNSString:@":"];
  }
  (void) [buffer appendWithNSString:@"\""];
  IOSObjectArray *pieces = [IOSObjectArray newArrayWithLength:maxPosition_ + 1 type:NSString_class_()];
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(terms_)) size]; i++) {
    jint pos = [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(positions_)) getWithInt:i])) intValue];
    NSString *s = IOSObjectArray_Get(pieces, pos);
    if (s == nil) {
      s = [((OrgApacheLuceneIndexTerm *) nil_chk(([((JavaUtilArrayList *) nil_chk(terms_)) getWithInt:i]))) text];
    }
    else {
      s = JreStrcat("$C$", s, '|', [((OrgApacheLuceneIndexTerm *) nil_chk(([((JavaUtilArrayList *) nil_chk(terms_)) getWithInt:i]))) text]);
    }
    (void) IOSObjectArray_Set(pieces, pos, s);
  }
  for (jint i = 0; i < pieces->size_; i++) {
    if (i > 0) {
      (void) [buffer appendWithChar:' '];
    }
    NSString *s = IOSObjectArray_Get(pieces, i);
    if (s == nil) {
      (void) [buffer appendWithChar:'?'];
    }
    else {
      (void) [buffer appendWithNSString:s];
    }
  }
  (void) [buffer appendWithNSString:@"\""];
  if (slop_ != 0) {
    (void) [buffer appendWithNSString:@"~"];
    (void) [buffer appendWithInt:slop_];
  }
  (void) [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchPhraseQuery class]])) return false;
  OrgApacheLuceneSearchPhraseQuery *other = (OrgApacheLuceneSearchPhraseQuery *) cast_chk(o, [OrgApacheLuceneSearchPhraseQuery class]);
  return ([self getBoost] == [((OrgApacheLuceneSearchPhraseQuery *) nil_chk(other)) getBoost]) && (self->slop_ == other->slop_) && [((JavaUtilArrayList *) nil_chk(self->terms_)) isEqual:other->terms_] && [((JavaUtilArrayList *) nil_chk(self->positions_)) isEqual:other->positions_];
}

- (NSUInteger)hash {
  return JavaLangFloat_floatToIntBitsWithFloat_([self getBoost]) ^ slop_ ^ ((jint) [((JavaUtilArrayList *) nil_chk(terms_)) hash]) ^ ((jint) [((JavaUtilArrayList *) nil_chk(positions_)) hash]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 4, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneIndexTerm;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 8, 9, 7, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, 12, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 17, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setSlopWithInt:);
  methods[2].selector = @selector(getSlop);
  methods[3].selector = @selector(addWithOrgApacheLuceneIndexTerm:);
  methods[4].selector = @selector(addWithOrgApacheLuceneIndexTerm:withInt:);
  methods[5].selector = @selector(getTerms);
  methods[6].selector = @selector(getPositions);
  methods[7].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[8].selector = @selector(createWeightWithOrgApacheLuceneSearchSearcher:);
  methods[9].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[10].selector = @selector(toStringWithNSString:);
  methods[11].selector = @selector(isEqual:);
  methods[12].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "terms_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 18, -1 },
    { "positions_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 19, -1 },
    { "maxPosition_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "slop_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setSlop", "I", "add", "LOrgApacheLuceneIndexTerm;", "LOrgApacheLuceneIndexTerm;I", "rewrite", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "createWeight", "LOrgApacheLuceneSearchSearcher;", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", "Ljava/util/ArrayList<Lorg/apache/lucene/index/Term;>;", "Ljava/util/ArrayList<Ljava/lang/Integer;>;", "LOrgApacheLuceneSearchPhraseQuery_PostingsAndFreq;LOrgApacheLuceneSearchPhraseQuery_PhraseWeight;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPhraseQuery = { "PhraseQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 13, 5, -1, 20, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPhraseQuery;
}

@end

void OrgApacheLuceneSearchPhraseQuery_init(OrgApacheLuceneSearchPhraseQuery *self) {
  OrgApacheLuceneSearchQuery_init(self);
  self->terms_ = new_JavaUtilArrayList_initWithInt_(4);
  self->positions_ = new_JavaUtilArrayList_initWithInt_(4);
  self->maxPosition_ = 0;
  self->slop_ = 0;
}

OrgApacheLuceneSearchPhraseQuery *new_OrgApacheLuceneSearchPhraseQuery_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPhraseQuery, init)
}

OrgApacheLuceneSearchPhraseQuery *create_OrgApacheLuceneSearchPhraseQuery_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPhraseQuery, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPhraseQuery)

@implementation OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq

- (instancetype)initWithOrgApacheLuceneIndexTermPositions:(id<OrgApacheLuceneIndexTermPositions>)postings
                                                  withInt:(jint)docFreq
                                                  withInt:(jint)position
                             withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_(self, postings, docFreq, position, term);
  return self;
}

- (jint)compareToWithId:(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *)other {
  (void) cast_chk(other, [OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq class]);
  if (docFreq_ == ((OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) nil_chk(other))->docFreq_) {
    if (position_ == other->position_) {
      return [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) compareToWithId:other->term_];
    }
    return position_ - other->position_;
  }
  return docFreq_ - other->docFreq_;
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + docFreq_;
  result = prime * result + position_;
  result = prime * result + ((term_ == nil) ? 0 : ((jint) [((OrgApacheLuceneIndexTerm *) nil_chk(term_)) hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *other = (OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *) cast_chk(obj, [OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq class]);
  if (docFreq_ != other->docFreq_) return false;
  if (position_ != other->position_) return false;
  if (term_ == nil) {
    if (other->term_ != nil) return false;
  }
  else if (![term_ isEqual:other->term_]) return false;
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTermPositions:withInt:withInt:withOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(compareToWithId:);
  methods[2].selector = @selector(hash);
  methods[3].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "postings_", "LOrgApacheLuceneIndexTermPositions;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docFreq_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "position_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "term_", "LOrgApacheLuceneIndexTerm;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTermPositions;IILOrgApacheLuceneIndexTerm;", "compareTo", "LOrgApacheLuceneSearchPhraseQuery_PostingsAndFreq;", "hashCode", "equals", "LNSObject;", "LOrgApacheLuceneSearchPhraseQuery;", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/apache/lucene/search/PhraseQuery$PostingsAndFreq;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq = { "PostingsAndFreq", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8, 4, 4, 6, -1, -1, 7, -1 };
  return &_OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq;
}

@end

void OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *self, id<OrgApacheLuceneIndexTermPositions> postings, jint docFreq, jint position, OrgApacheLuceneIndexTerm *term) {
  NSObject_init(self);
  self->postings_ = postings;
  self->docFreq_ = docFreq;
  self->position_ = position;
  self->term_ = term;
}

OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *new_OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_(id<OrgApacheLuceneIndexTermPositions> postings, jint docFreq, jint position, OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq, initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_, postings, docFreq, position, term)
}

OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq *create_OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_(id<OrgApacheLuceneIndexTermPositions> postings, jint docFreq, jint position, OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq, initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_, postings, docFreq, position, term)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq)

@implementation OrgApacheLuceneSearchPhraseQuery_PhraseWeight

- (instancetype)initWithOrgApacheLuceneSearchPhraseQuery:(OrgApacheLuceneSearchPhraseQuery *)outer$
                       withOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(self, outer$, searcher);
  return self;
}

- (NSString *)description {
  return JreStrcat("$@C", @"weight(", this$0_, ')');
}

- (OrgApacheLuceneSearchQuery *)getQuery {
  return this$0_;
}

- (jfloat)getValue {
  return value_;
}

- (jfloat)sumOfSquaredWeights {
  queryWeight_ = idf_ * [this$0_ getBoost];
  return queryWeight_ * queryWeight_;
}

- (void)normalizeWithFloat:(jfloat)queryNorm {
  self->queryNorm_ = queryNorm;
  JreTimesAssignFloatF(&queryWeight_, queryNorm);
  value_ = queryWeight_ * idf_;
}

- (OrgApacheLuceneSearchScorer *)scorerWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                               withBoolean:(jboolean)scoreDocsInOrder
                                                               withBoolean:(jboolean)topScorer {
  if ([((JavaUtilArrayList *) nil_chk(this$0_->terms_)) size] == 0) return nil;
  IOSObjectArray *postingsFreqs = [IOSObjectArray newArrayWithLength:[((JavaUtilArrayList *) nil_chk(this$0_->terms_)) size] type:OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_class_()];
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(this$0_->terms_)) size]; i++) {
    OrgApacheLuceneIndexTerm *t = [((JavaUtilArrayList *) nil_chk(this$0_->terms_)) getWithInt:i];
    id<OrgApacheLuceneIndexTermPositions> p = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) termPositionsWithOrgApacheLuceneIndexTerm:t];
    if (p == nil) return nil;
    (void) IOSObjectArray_SetAndConsume(postingsFreqs, i, new_OrgApacheLuceneSearchPhraseQuery_PostingsAndFreq_initWithOrgApacheLuceneIndexTermPositions_withInt_withInt_withOrgApacheLuceneIndexTerm_(p, [reader docFreqWithOrgApacheLuceneIndexTerm:t], [((JavaLangInteger *) nil_chk([((JavaUtilArrayList *) nil_chk(this$0_->positions_)) getWithInt:i])) intValue], t));
  }
  if (this$0_->slop_ == 0) {
    OrgApacheLuceneUtilArrayUtil_mergeSortWithJavaLangComparableArray_(postingsFreqs);
  }
  if (this$0_->slop_ == 0) {
    OrgApacheLuceneSearchExactPhraseScorer *s = new_OrgApacheLuceneSearchExactPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withByteArray_(self, postingsFreqs, similarity_, [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) normsWithNSString:this$0_->field_]);
    if (s->noDocs_) {
      return nil;
    }
    else {
      return s;
    }
  }
  else {
    return new_OrgApacheLuceneSearchSloppyPhraseScorer_initWithOrgApacheLuceneSearchWeight_withOrgApacheLuceneSearchPhraseQuery_PostingsAndFreqArray_withOrgApacheLuceneSearchSimilarity_withInt_withByteArray_(self, postingsFreqs, similarity_, this$0_->slop_, [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) normsWithNSString:this$0_->field_]);
  }
}

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                         withInt:(jint)doc {
  OrgApacheLuceneSearchComplexExplanation *result = new_OrgApacheLuceneSearchComplexExplanation_init();
  [result setDescriptionWithNSString:JreStrcat("$@$I$", @"weight(", [self getQuery], @" in ", doc, @"), product of:")];
  JavaLangStringBuilder *docFreqs = new_JavaLangStringBuilder_init();
  JavaLangStringBuilder *query = new_JavaLangStringBuilder_init();
  (void) [query appendWithChar:'"'];
  (void) [docFreqs appendWithNSString:[((OrgApacheLuceneSearchExplanation_IDFExplanation *) nil_chk(idfExp_)) explain]];
  for (jint i = 0; i < [((JavaUtilArrayList *) nil_chk(this$0_->terms_)) size]; i++) {
    if (i != 0) {
      (void) [query appendWithNSString:@" "];
    }
    OrgApacheLuceneIndexTerm *term = [((JavaUtilArrayList *) nil_chk(this$0_->terms_)) getWithInt:i];
    (void) [query appendWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term)) text]];
  }
  (void) [query appendWithChar:'"'];
  OrgApacheLuceneSearchExplanation *idfExpl = new_OrgApacheLuceneSearchExplanation_initWithFloat_withNSString_(idf_, JreStrcat("$$C@C", @"idf(", this$0_->field_, ':', docFreqs, ')'));
  OrgApacheLuceneSearchExplanation *queryExpl = new_OrgApacheLuceneSearchExplanation_init();
  [queryExpl setDescriptionWithNSString:JreStrcat("$@$", @"queryWeight(", [self getQuery], @"), product of:")];
  OrgApacheLuceneSearchExplanation *boostExpl = new_OrgApacheLuceneSearchExplanation_initWithFloat_withNSString_([this$0_ getBoost], @"boost");
  if ([this$0_ getBoost] != 1.0f) [queryExpl addDetailWithOrgApacheLuceneSearchExplanation:boostExpl];
  [queryExpl addDetailWithOrgApacheLuceneSearchExplanation:idfExpl];
  OrgApacheLuceneSearchExplanation *queryNormExpl = new_OrgApacheLuceneSearchExplanation_initWithFloat_withNSString_(queryNorm_, @"queryNorm");
  [queryExpl addDetailWithOrgApacheLuceneSearchExplanation:queryNormExpl];
  [queryExpl setValueWithFloat:[boostExpl getValue] * [idfExpl getValue] * [queryNormExpl getValue]];
  [result addDetailWithOrgApacheLuceneSearchExplanation:queryExpl];
  OrgApacheLuceneSearchExplanation *fieldExpl = new_OrgApacheLuceneSearchExplanation_init();
  [fieldExpl setDescriptionWithNSString:JreStrcat("$$C@$I$", @"fieldWeight(", this$0_->field_, ':', query, @" in ", doc, @"), product of:")];
  OrgApacheLuceneSearchScorer *scorer = [self scorerWithOrgApacheLuceneIndexIndexReader:reader withBoolean:true withBoolean:false];
  if (scorer == nil) {
    return new_OrgApacheLuceneSearchExplanation_initWithFloat_withNSString_(0.0f, @"no matching docs");
  }
  OrgApacheLuceneSearchExplanation *tfExplanation = new_OrgApacheLuceneSearchExplanation_init();
  jint d = [scorer advanceWithInt:doc];
  jfloat phraseFreq;
  if (d == doc) {
    phraseFreq = [scorer freq];
  }
  else {
    phraseFreq = 0.0f;
  }
  [tfExplanation setValueWithFloat:[((OrgApacheLuceneSearchSimilarity *) nil_chk(similarity_)) tfWithFloat:phraseFreq]];
  [tfExplanation setDescriptionWithNSString:JreStrcat("$FC", @"tf(phraseFreq=", phraseFreq, ')')];
  [fieldExpl addDetailWithOrgApacheLuceneSearchExplanation:tfExplanation];
  [fieldExpl addDetailWithOrgApacheLuceneSearchExplanation:idfExpl];
  OrgApacheLuceneSearchExplanation *fieldNormExpl = new_OrgApacheLuceneSearchExplanation_init();
  IOSByteArray *fieldNorms = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) normsWithNSString:this$0_->field_];
  jfloat fieldNorm = fieldNorms != nil ? [similarity_ decodeNormValueWithByte:IOSByteArray_Get(fieldNorms, doc)] : 1.0f;
  [fieldNormExpl setValueWithFloat:fieldNorm];
  [fieldNormExpl setDescriptionWithNSString:JreStrcat("$$$IC", @"fieldNorm(field=", this$0_->field_, @", doc=", doc, ')')];
  [fieldExpl addDetailWithOrgApacheLuceneSearchExplanation:fieldNormExpl];
  [fieldExpl setValueWithFloat:[tfExplanation getValue] * [idfExpl getValue] * [fieldNormExpl getValue]];
  [result addDetailWithOrgApacheLuceneSearchExplanation:fieldExpl];
  [result setValueWithFloat:[queryExpl getValue] * [fieldExpl getValue]];
  [result setMatchWithJavaLangBoolean:JavaLangBoolean_valueOfWithBoolean_([tfExplanation isMatch])];
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchScorer;", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 7, 8, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchPhraseQuery:withOrgApacheLuceneSearchSearcher:);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(getQuery);
  methods[3].selector = @selector(getValue);
  methods[4].selector = @selector(sumOfSquaredWeights);
  methods[5].selector = @selector(normalizeWithFloat:);
  methods[6].selector = @selector(scorerWithOrgApacheLuceneIndexIndexReader:withBoolean:withBoolean:);
  methods[7].selector = @selector(explainWithOrgApacheLuceneIndexIndexReader:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchPhraseQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "similarity_", "LOrgApacheLuceneSearchSimilarity;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "idf_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "queryNorm_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "queryWeight_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "idfExp_", "LOrgApacheLuceneSearchExplanation_IDFExplanation;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSearcher;", "LJavaIoIOException;", "toString", "normalize", "F", "scorer", "LOrgApacheLuceneIndexIndexReader;ZZ", "explain", "LOrgApacheLuceneIndexIndexReader;I", "LOrgApacheLuceneSearchPhraseQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPhraseQuery_PhraseWeight = { "PhraseWeight", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x2, 8, 7, 9, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPhraseQuery_PhraseWeight;
}

@end

void OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPhraseQuery_PhraseWeight *self, OrgApacheLuceneSearchPhraseQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) {
  self->this$0_ = outer$;
  OrgApacheLuceneSearchWeight_init(self);
  self->similarity_ = [outer$ getSimilarityWithOrgApacheLuceneSearchSearcher:searcher];
  self->idfExp_ = [((OrgApacheLuceneSearchSimilarity *) nil_chk(self->similarity_)) idfExplainWithJavaUtilCollection:outer$->terms_ withOrgApacheLuceneSearchSearcher:searcher];
  self->idf_ = [((OrgApacheLuceneSearchExplanation_IDFExplanation *) nil_chk(self->idfExp_)) getIdf];
}

OrgApacheLuceneSearchPhraseQuery_PhraseWeight *new_OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPhraseQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPhraseQuery_PhraseWeight, initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_, outer$, searcher)
}

OrgApacheLuceneSearchPhraseQuery_PhraseWeight *create_OrgApacheLuceneSearchPhraseQuery_PhraseWeight_initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_(OrgApacheLuceneSearchPhraseQuery *outer$, OrgApacheLuceneSearchSearcher *searcher) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPhraseQuery_PhraseWeight, initWithOrgApacheLuceneSearchPhraseQuery_withOrgApacheLuceneSearchSearcher_, outer$, searcher)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPhraseQuery_PhraseWeight)

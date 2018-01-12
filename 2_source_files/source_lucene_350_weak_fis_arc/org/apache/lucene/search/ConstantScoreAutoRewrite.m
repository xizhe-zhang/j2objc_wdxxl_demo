//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/ConstantScoreAutoRewrite.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Double.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/ConstantScoreAutoRewrite.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermCollectingRewrite.h"
#include "org/apache/lucene/search/TermQuery.h"

@interface OrgApacheLuceneSearchConstantScoreAutoRewrite () {
 @public
  jint termCountCutoff_;
  jdouble docCountPercent_;
}

@end

@interface OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector : NSObject < OrgApacheLuceneSearchTermCollectingRewrite_TermCollector > {
 @public
  jint docVisitCount_;
  jboolean hasCutOff_;
  OrgApacheLuceneIndexIndexReader *reader_;
  jint docCountCutoff_;
  jint termCountLimit_;
  JavaUtilArrayList *pendingTerms_;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                withInt:(jint)docCountCutoff
                                                withInt:(jint)termCountLimit;

- (jboolean)collectWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t
                                      withFloat:(jfloat)boost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector, reader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector, pendingTerms_, JavaUtilArrayList *)

__attribute__((unused)) static void OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *self, OrgApacheLuceneIndexIndexReader *reader, jint docCountCutoff, jint termCountLimit);

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *new_OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneIndexIndexReader *reader, jint docCountCutoff, jint termCountLimit) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *create_OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneIndexIndexReader *reader, jint docCountCutoff, jint termCountLimit);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector)

jint OrgApacheLuceneSearchConstantScoreAutoRewrite_DEFAULT_TERM_COUNT_CUTOFF = 350;
jdouble OrgApacheLuceneSearchConstantScoreAutoRewrite_DEFAULT_DOC_COUNT_PERCENT = 0.1;

@implementation OrgApacheLuceneSearchConstantScoreAutoRewrite

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchConstantScoreAutoRewrite_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setTermCountCutoffWithInt:(jint)count {
  termCountCutoff_ = count;
}

- (jint)getTermCountCutoff {
  return termCountCutoff_;
}

- (void)setDocCountPercentWithDouble:(jdouble)percent {
  docCountPercent_ = percent;
}

- (jdouble)getDocCountPercent {
  return docCountPercent_;
}

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery {
  return new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(true);
}

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost {
  [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(topLevel)) addWithOrgApacheLuceneSearchQuery:new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term) withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  jint docCountCutoff = JreFpToInt(((docCountPercent_ / 100.) * [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc]));
  jint termCountLimit = JavaLangMath_minWithInt_withInt_(OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount(), termCountCutoff_);
  OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *col = new_OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(reader, docCountCutoff, termCountLimit);
  [self collectTermsWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:col];
  if (col->hasCutOff_) {
    return [((OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *) nil_chk(JreLoadStatic(OrgApacheLuceneSearchMultiTermQuery, CONSTANT_SCORE_FILTER_REWRITE))) rewriteWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query];
  }
  else {
    OrgApacheLuceneSearchQuery *result;
    if ([((JavaUtilArrayList *) nil_chk(col->pendingTerms_)) isEmpty]) {
      result = [self getTopLevelQuery];
    }
    else {
      OrgApacheLuceneSearchBooleanQuery *bq = [self getTopLevelQuery];
      for (OrgApacheLuceneIndexTerm * __strong term in col->pendingTerms_) {
        [self addClauseWithOrgApacheLuceneSearchQuery:bq withOrgApacheLuceneIndexTerm:term withFloat:1.0f];
      }
      result = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(bq);
      [result setBoostWithFloat:[((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) getBoost]];
    }
    [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) incTotalNumberOfTermsWithInt:[col->pendingTerms_ size]];
    return result;
  }
}

- (NSUInteger)hash {
  jint prime = 1279;
  return (jint) (prime * termCountCutoff_ + JavaLangDouble_doubleToLongBitsWithDouble_(docCountPercent_));
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  OrgApacheLuceneSearchConstantScoreAutoRewrite *other = (OrgApacheLuceneSearchConstantScoreAutoRewrite *) cast_chk(obj, [OrgApacheLuceneSearchConstantScoreAutoRewrite class]);
  if (other->termCountCutoff_ != termCountCutoff_) {
    return false;
  }
  if (JavaLangDouble_doubleToLongBitsWithDouble_(other->docCountPercent_) != JavaLangDouble_doubleToLongBitsWithDouble_(docCountPercent_)) {
    return false;
  }
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 6, 7, 8, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 10, 11, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setTermCountCutoffWithInt:);
  methods[2].selector = @selector(getTermCountCutoff);
  methods[3].selector = @selector(setDocCountPercentWithDouble:);
  methods[4].selector = @selector(getDocCountPercent);
  methods[5].selector = @selector(getTopLevelQuery);
  methods[6].selector = @selector(addClauseWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexTerm:withFloat:);
  methods[7].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  methods[8].selector = @selector(hash);
  methods[9].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_TERM_COUNT_CUTOFF", "I", .constantValue.asLong = 0, 0x9, -1, 12, -1, -1 },
    { "DEFAULT_DOC_COUNT_PERCENT", "D", .constantValue.asLong = 0, 0x9, -1, 13, -1, -1 },
    { "termCountCutoff_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "docCountPercent_", "D", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setTermCountCutoff", "I", "setDocCountPercent", "D", "addClause", "LOrgApacheLuceneSearchBooleanQuery;LOrgApacheLuceneIndexTerm;F", "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "hashCode", "equals", "LNSObject;", &OrgApacheLuceneSearchConstantScoreAutoRewrite_DEFAULT_TERM_COUNT_CUTOFF, &OrgApacheLuceneSearchConstantScoreAutoRewrite_DEFAULT_DOC_COUNT_PERCENT, "LOrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector;", "Lorg/apache/lucene/search/TermCollectingRewrite<Lorg/apache/lucene/search/BooleanQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreAutoRewrite = { "ConstantScoreAutoRewrite", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x0, 10, 4, -1, 14, -1, 15, -1 };
  return &_OrgApacheLuceneSearchConstantScoreAutoRewrite;
}

@end

void OrgApacheLuceneSearchConstantScoreAutoRewrite_init(OrgApacheLuceneSearchConstantScoreAutoRewrite *self) {
  OrgApacheLuceneSearchTermCollectingRewrite_init(self);
  self->termCountCutoff_ = OrgApacheLuceneSearchConstantScoreAutoRewrite_DEFAULT_TERM_COUNT_CUTOFF;
  self->docCountPercent_ = OrgApacheLuceneSearchConstantScoreAutoRewrite_DEFAULT_DOC_COUNT_PERCENT;
}

OrgApacheLuceneSearchConstantScoreAutoRewrite *new_OrgApacheLuceneSearchConstantScoreAutoRewrite_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreAutoRewrite, init)
}

OrgApacheLuceneSearchConstantScoreAutoRewrite *create_OrgApacheLuceneSearchConstantScoreAutoRewrite_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreAutoRewrite, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreAutoRewrite)

@implementation OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                withInt:(jint)docCountCutoff
                                                withInt:(jint)termCountLimit {
  OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(self, reader, docCountCutoff, termCountLimit);
  return self;
}

- (jboolean)collectWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t
                                      withFloat:(jfloat)boost {
  [((JavaUtilArrayList *) nil_chk(pendingTerms_)) addWithId:t];
  docVisitCount_ += [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) docFreqWithOrgApacheLuceneIndexTerm:t];
  if ([pendingTerms_ size] >= termCountLimit_ || docVisitCount_ >= docCountCutoff_) {
    hasCutOff_ = true;
    return false;
  }
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withInt:withInt:);
  methods[1].selector = @selector(collectWithOrgApacheLuceneIndexTerm:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docVisitCount_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "hasCutOff_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docCountCutoff_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "termCountLimit_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "pendingTerms_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;II", "collect", "LOrgApacheLuceneIndexTerm;F", "LJavaIoIOException;", "Ljava/util/ArrayList<Lorg/apache/lucene/index/Term;>;", "LOrgApacheLuceneSearchConstantScoreAutoRewrite;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector = { "CutOffTermCollector", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1a, 2, 6, 5, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector;
}

@end

void OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *self, OrgApacheLuceneIndexIndexReader *reader, jint docCountCutoff, jint termCountLimit) {
  NSObject_init(self);
  self->docVisitCount_ = 0;
  self->hasCutOff_ = false;
  self->pendingTerms_ = new_JavaUtilArrayList_init();
  self->reader_ = reader;
  self->docCountCutoff_ = docCountCutoff;
  self->termCountLimit_ = termCountLimit;
}

OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *new_OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneIndexIndexReader *reader, jint docCountCutoff, jint termCountLimit) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector, initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_, reader, docCountCutoff, termCountLimit)
}

OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector *create_OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector_initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneIndexIndexReader *reader, jint docCountCutoff, jint termCountLimit) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector, initWithOrgApacheLuceneIndexIndexReader_withInt_withInt_, reader, docCountCutoff, termCountLimit)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchConstantScoreAutoRewrite_CutOffTermCollector)

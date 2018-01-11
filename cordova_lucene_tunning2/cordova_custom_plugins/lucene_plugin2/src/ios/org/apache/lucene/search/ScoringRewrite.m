//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/ScoringRewrite.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/ScoringRewrite.h"
#include "org/apache/lucene/search/TermCollectingRewrite.h"
#include "org/apache/lucene/search/TermQuery.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchScoringRewrite_1 : OrgApacheLuceneSearchScoringRewrite

- (instancetype)init;

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery;

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost;

- (id)readResolve;

- (OrgApacheLuceneSearchBooleanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                          withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoringRewrite_1)

__attribute__((unused)) static void OrgApacheLuceneSearchScoringRewrite_1_init(OrgApacheLuceneSearchScoringRewrite_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchScoringRewrite_1 *new_OrgApacheLuceneSearchScoringRewrite_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchScoringRewrite_1 *create_OrgApacheLuceneSearchScoringRewrite_1_init(void);

@interface OrgApacheLuceneSearchScoringRewrite_2 : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

- (instancetype)init;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

- (id)readResolve;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoringRewrite_2)

__attribute__((unused)) static void OrgApacheLuceneSearchScoringRewrite_2_init(OrgApacheLuceneSearchScoringRewrite_2 *self);

__attribute__((unused)) static OrgApacheLuceneSearchScoringRewrite_2 *new_OrgApacheLuceneSearchScoringRewrite_2_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchScoringRewrite_2 *create_OrgApacheLuceneSearchScoringRewrite_2_init(void);

@interface OrgApacheLuceneSearchScoringRewrite_3 : NSObject < OrgApacheLuceneSearchTermCollectingRewrite_TermCollector > {
 @public
  OrgApacheLuceneSearchScoringRewrite *this$0_;
  OrgApacheLuceneSearchQuery *val$result_;
  OrgApacheLuceneSearchMultiTermQuery *val$query_;
  IOSIntArray *val$size_;
}

- (instancetype)initWithOrgApacheLuceneSearchScoringRewrite:(OrgApacheLuceneSearchScoringRewrite *)outer$
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)capture$0
                    withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)capture$1
                                               withIntArray:(IOSIntArray *)capture$2;

- (jboolean)collectWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t
                                      withFloat:(jfloat)boost;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchScoringRewrite_3)

__attribute__((unused)) static void OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(OrgApacheLuceneSearchScoringRewrite_3 *self, OrgApacheLuceneSearchScoringRewrite *outer$, OrgApacheLuceneSearchQuery *capture$0, OrgApacheLuceneSearchMultiTermQuery *capture$1, IOSIntArray *capture$2);

__attribute__((unused)) static OrgApacheLuceneSearchScoringRewrite_3 *new_OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(OrgApacheLuceneSearchScoringRewrite *outer$, OrgApacheLuceneSearchQuery *capture$0, OrgApacheLuceneSearchMultiTermQuery *capture$1, IOSIntArray *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchScoringRewrite_3 *create_OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(OrgApacheLuceneSearchScoringRewrite *outer$, OrgApacheLuceneSearchQuery *capture$0, OrgApacheLuceneSearchMultiTermQuery *capture$1, IOSIntArray *capture$2);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchScoringRewrite)

OrgApacheLuceneSearchScoringRewrite *OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_QUERY_REWRITE;
OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *OrgApacheLuceneSearchScoringRewrite_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE;

@implementation OrgApacheLuceneSearchScoringRewrite

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchScoringRewrite_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  OrgApacheLuceneSearchQuery *result = [self getTopLevelQuery];
  IOSIntArray *size = [IOSIntArray newArrayWithLength:1];
  [self collectTermsWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:new_OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(self, result, query, size)];
  [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) incTotalNumberOfTermsWithInt:IOSIntArray_Get(size, 0)];
  return result;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 0, 1, 2, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SCORING_BOOLEAN_QUERY_REWRITE", "LOrgApacheLuceneSearchScoringRewrite;", .constantValue.asLong = 0, 0x19, -1, 4, 5, -1 },
    { "CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE", "LOrgApacheLuceneSearchMultiTermQuery_RewriteMethod;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "(Lorg/apache/lucene/index/IndexReader;Lorg/apache/lucene/search/MultiTermQuery;)TQ;", &OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_QUERY_REWRITE, "Lorg/apache/lucene/search/ScoringRewrite<Lorg/apache/lucene/search/BooleanQuery;>;", &OrgApacheLuceneSearchScoringRewrite_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE, "<Q:Lorg/apache/lucene/search/Query;>Lorg/apache/lucene/search/TermCollectingRewrite<TQ;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchScoringRewrite = { "ScoringRewrite", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 2, 2, -1, -1, -1, 7, -1 };
  return &_OrgApacheLuceneSearchScoringRewrite;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchScoringRewrite class]) {
    OrgApacheLuceneSearchScoringRewrite_SCORING_BOOLEAN_QUERY_REWRITE = new_OrgApacheLuceneSearchScoringRewrite_1_init();
    OrgApacheLuceneSearchScoringRewrite_CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE = new_OrgApacheLuceneSearchScoringRewrite_2_init();
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchScoringRewrite)
  }
}

@end

void OrgApacheLuceneSearchScoringRewrite_init(OrgApacheLuceneSearchScoringRewrite *self) {
  OrgApacheLuceneSearchTermCollectingRewrite_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchScoringRewrite)

@implementation OrgApacheLuceneSearchScoringRewrite_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchScoringRewrite_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchBooleanQuery *)getTopLevelQuery {
  return new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(true);
}

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchBooleanQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost {
  OrgApacheLuceneSearchTermQuery *tq = new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
  [tq setBoostWithFloat:boost];
  [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(topLevel)) addWithOrgApacheLuceneSearchQuery:tq withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
}

- (id)readResolve {
  return JreLoadStatic(OrgApacheLuceneSearchScoringRewrite, SCORING_BOOLEAN_QUERY_REWRITE);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTopLevelQuery);
  methods[2].selector = @selector(addClauseWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexTerm:withFloat:);
  methods[3].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addClause", "LOrgApacheLuceneSearchBooleanQuery;LOrgApacheLuceneIndexTerm;F", "LOrgApacheLuceneSearchScoringRewrite;", "Lorg/apache/lucene/search/ScoringRewrite<Lorg/apache/lucene/search/BooleanQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchScoringRewrite_1 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 4, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheLuceneSearchScoringRewrite_1;
}

@end

void OrgApacheLuceneSearchScoringRewrite_1_init(OrgApacheLuceneSearchScoringRewrite_1 *self) {
  OrgApacheLuceneSearchScoringRewrite_init(self);
}

OrgApacheLuceneSearchScoringRewrite_1 *new_OrgApacheLuceneSearchScoringRewrite_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchScoringRewrite_1, init)
}

OrgApacheLuceneSearchScoringRewrite_1 *create_OrgApacheLuceneSearchScoringRewrite_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchScoringRewrite_1, init)
}

@implementation OrgApacheLuceneSearchScoringRewrite_2

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchScoringRewrite_2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  OrgApacheLuceneSearchBooleanQuery *bq = ((OrgApacheLuceneSearchBooleanQuery *) [((OrgApacheLuceneSearchScoringRewrite *) nil_chk(JreLoadStatic(OrgApacheLuceneSearchScoringRewrite, SCORING_BOOLEAN_QUERY_REWRITE))) rewriteWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query]);
  if ([((id<JavaUtilList>) nil_chk([((OrgApacheLuceneSearchBooleanQuery *) nil_chk(bq)) clauses])) isEmpty]) return bq;
  OrgApacheLuceneSearchQuery *result = new_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(bq);
  [result setBoostWithFloat:[((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) getBoost]];
  return result;
}

- (id)readResolve {
  return JreLoadStatic(OrgApacheLuceneSearchScoringRewrite, CONSTANT_SCORE_BOOLEAN_QUERY_REWRITE);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  methods[2].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "LOrgApacheLuceneSearchScoringRewrite;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchScoringRewrite_2 = { "", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchScoringRewrite_2;
}

@end

void OrgApacheLuceneSearchScoringRewrite_2_init(OrgApacheLuceneSearchScoringRewrite_2 *self) {
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(self);
}

OrgApacheLuceneSearchScoringRewrite_2 *new_OrgApacheLuceneSearchScoringRewrite_2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchScoringRewrite_2, init)
}

OrgApacheLuceneSearchScoringRewrite_2 *create_OrgApacheLuceneSearchScoringRewrite_2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchScoringRewrite_2, init)
}

@implementation OrgApacheLuceneSearchScoringRewrite_3

- (instancetype)initWithOrgApacheLuceneSearchScoringRewrite:(OrgApacheLuceneSearchScoringRewrite *)outer$
                             withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)capture$0
                    withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)capture$1
                                               withIntArray:(IOSIntArray *)capture$2 {
  OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(self, outer$, capture$0, capture$1, capture$2);
  return self;
}

- (jboolean)collectWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)t
                                      withFloat:(jfloat)boost {
  [this$0_ addClauseWithOrgApacheLuceneSearchQuery:val$result_ withOrgApacheLuceneIndexTerm:t withFloat:[((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(val$query_)) getBoost] * boost];
  (*IOSIntArray_GetRef(nil_chk(val$size_), 0))++;
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchScoringRewrite:withOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchMultiTermQuery:withIntArray:);
  methods[1].selector = @selector(collectWithOrgApacheLuceneIndexTerm:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneSearchScoringRewrite;", .constantValue.asLong = 0, 0x1012, -1, -1, 3, -1 },
    { "val$result_", "LOrgApacheLuceneSearchQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, 4, -1 },
    { "val$query_", "LOrgApacheLuceneSearchMultiTermQuery;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$size_", "[I", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "collect", "LOrgApacheLuceneIndexTerm;F", "LJavaIoIOException;", "Lorg/apache/lucene/search/ScoringRewrite<TQ;>;", "TQ;", "LOrgApacheLuceneSearchScoringRewrite;", "rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchScoringRewrite_3 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8018, 2, 4, 5, -1, 6, -1, -1 };
  return &_OrgApacheLuceneSearchScoringRewrite_3;
}

@end

void OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(OrgApacheLuceneSearchScoringRewrite_3 *self, OrgApacheLuceneSearchScoringRewrite *outer$, OrgApacheLuceneSearchQuery *capture$0, OrgApacheLuceneSearchMultiTermQuery *capture$1, IOSIntArray *capture$2) {
  self->this$0_ = outer$;
  self->val$result_ = capture$0;
  self->val$query_ = capture$1;
  self->val$size_ = capture$2;
  NSObject_init(self);
}

OrgApacheLuceneSearchScoringRewrite_3 *new_OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(OrgApacheLuceneSearchScoringRewrite *outer$, OrgApacheLuceneSearchQuery *capture$0, OrgApacheLuceneSearchMultiTermQuery *capture$1, IOSIntArray *capture$2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchScoringRewrite_3, initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_, outer$, capture$0, capture$1, capture$2)
}

OrgApacheLuceneSearchScoringRewrite_3 *create_OrgApacheLuceneSearchScoringRewrite_3_initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_(OrgApacheLuceneSearchScoringRewrite *outer$, OrgApacheLuceneSearchQuery *capture$0, OrgApacheLuceneSearchMultiTermQuery *capture$1, IOSIntArray *capture$2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchScoringRewrite_3, initWithOrgApacheLuceneSearchScoringRewrite_withOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchMultiTermQuery_withIntArray_, outer$, capture$0, capture$1, capture$2)
}

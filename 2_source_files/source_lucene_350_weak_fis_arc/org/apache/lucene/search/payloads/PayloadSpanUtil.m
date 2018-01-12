//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/payloads/PayloadSpanUtil.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/DisjunctionMaxQuery.h"
#include "org/apache/lucene/search/FilteredQuery.h"
#include "org/apache/lucene/search/MultiPhraseQuery.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/payloads/PayloadSpanUtil.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanOrQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanTermQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"

@interface OrgApacheLuceneSearchPayloadsPayloadSpanUtil () {
 @public
  OrgApacheLuceneIndexIndexReader *reader_;
}

- (void)queryToSpanQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                withJavaUtilCollection:(id<JavaUtilCollection>)payloads;

- (void)getPayloadsWithJavaUtilCollection:(id<JavaUtilCollection>)payloads
  withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)query;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadSpanUtil, reader_, OrgApacheLuceneIndexIndexReader *)

__attribute__((unused)) static void OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(OrgApacheLuceneSearchPayloadsPayloadSpanUtil *self, OrgApacheLuceneSearchQuery *query, id<JavaUtilCollection> payloads);

__attribute__((unused)) static void OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchPayloadsPayloadSpanUtil *self, id<JavaUtilCollection> payloads, OrgApacheLuceneSearchSpansSpanQuery *query);

@implementation OrgApacheLuceneSearchPayloadsPayloadSpanUtil

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReader_(self, reader);
  return self;
}

- (id<JavaUtilCollection>)getPayloadsForQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query {
  id<JavaUtilCollection> payloads = new_JavaUtilArrayList_init();
  OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(self, query, payloads);
  return payloads;
}

- (void)queryToSpanQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                withJavaUtilCollection:(id<JavaUtilCollection>)payloads {
  OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(self, query, payloads);
}

- (void)getPayloadsWithJavaUtilCollection:(id<JavaUtilCollection>)payloads
  withOrgApacheLuceneSearchSpansSpanQuery:(OrgApacheLuceneSearchSpansSpanQuery *)query {
  OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(self, payloads, query);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, 1, 2, 3, 4, -1, -1 },
    { NULL, "V", 0x2, 5, 6, 3, 7, -1, -1 },
    { NULL, "V", 0x2, 8, 9, 3, 10, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:);
  methods[1].selector = @selector(getPayloadsForQueryWithOrgApacheLuceneSearchQuery:);
  methods[2].selector = @selector(queryToSpanQueryWithOrgApacheLuceneSearchQuery:withJavaUtilCollection:);
  methods[3].selector = @selector(getPayloadsWithJavaUtilCollection:withOrgApacheLuceneSearchSpansSpanQuery:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;", "getPayloadsForQuery", "LOrgApacheLuceneSearchQuery;", "LJavaIoIOException;", "(Lorg/apache/lucene/search/Query;)Ljava/util/Collection<[B>;", "queryToSpanQuery", "LOrgApacheLuceneSearchQuery;LJavaUtilCollection;", "(Lorg/apache/lucene/search/Query;Ljava/util/Collection<[B>;)V", "getPayloads", "LJavaUtilCollection;LOrgApacheLuceneSearchSpansSpanQuery;", "(Ljava/util/Collection<[B>;Lorg/apache/lucene/search/spans/SpanQuery;)V" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadSpanUtil = { "PayloadSpanUtil", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadSpanUtil;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchPayloadsPayloadSpanUtil *self, OrgApacheLuceneIndexIndexReader *reader) {
  NSObject_init(self);
  self->reader_ = reader;
}

OrgApacheLuceneSearchPayloadsPayloadSpanUtil *new_OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadSpanUtil, initWithOrgApacheLuceneIndexIndexReader_, reader)
}

OrgApacheLuceneSearchPayloadsPayloadSpanUtil *create_OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadSpanUtil, initWithOrgApacheLuceneIndexIndexReader_, reader)
}

void OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(OrgApacheLuceneSearchPayloadsPayloadSpanUtil *self, OrgApacheLuceneSearchQuery *query, id<JavaUtilCollection> payloads) {
  if ([query isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
    IOSObjectArray *queryClauses = [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(((OrgApacheLuceneSearchBooleanQuery *) cast_chk(query, [OrgApacheLuceneSearchBooleanQuery class])))) getClauses];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(queryClauses))->size_; i++) {
      if (![((OrgApacheLuceneSearchBooleanClause *) nil_chk(IOSObjectArray_Get(queryClauses, i))) isProhibited]) {
        OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(self, [((OrgApacheLuceneSearchBooleanClause *) nil_chk(IOSObjectArray_Get(queryClauses, i))) getQuery], payloads);
      }
    }
  }
  else if ([query isKindOfClass:[OrgApacheLuceneSearchPhraseQuery class]]) {
    IOSObjectArray *phraseQueryTerms = [((OrgApacheLuceneSearchPhraseQuery *) nil_chk(((OrgApacheLuceneSearchPhraseQuery *) cast_chk(query, [OrgApacheLuceneSearchPhraseQuery class])))) getTerms];
    IOSObjectArray *clauses = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(phraseQueryTerms))->size_ type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
    for (jint i = 0; i < phraseQueryTerms->size_; i++) {
      (void) IOSObjectArray_SetAndConsume(clauses, i, new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(IOSObjectArray_Get(phraseQueryTerms, i)));
    }
    jint slop = [((OrgApacheLuceneSearchPhraseQuery *) nil_chk(((OrgApacheLuceneSearchPhraseQuery *) cast_chk(query, [OrgApacheLuceneSearchPhraseQuery class])))) getSlop];
    jboolean inorder = false;
    if (slop == 0) {
      inorder = true;
    }
    OrgApacheLuceneSearchSpansSpanNearQuery *sp = new_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(clauses, slop, inorder);
    [sp setBoostWithFloat:[((OrgApacheLuceneSearchQuery *) nil_chk(query)) getBoost]];
    OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(self, payloads, sp);
  }
  else if ([query isKindOfClass:[OrgApacheLuceneSearchTermQuery class]]) {
    OrgApacheLuceneSearchSpansSpanTermQuery *stq = new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_([((OrgApacheLuceneSearchTermQuery *) nil_chk(((OrgApacheLuceneSearchTermQuery *) cast_chk(query, [OrgApacheLuceneSearchTermQuery class])))) getTerm]);
    [stq setBoostWithFloat:[((OrgApacheLuceneSearchQuery *) nil_chk(query)) getBoost]];
    OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(self, payloads, stq);
  }
  else if ([query isKindOfClass:[OrgApacheLuceneSearchSpansSpanQuery class]]) {
    OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(self, payloads, (OrgApacheLuceneSearchSpansSpanQuery *) cast_chk(query, [OrgApacheLuceneSearchSpansSpanQuery class]));
  }
  else if ([query isKindOfClass:[OrgApacheLuceneSearchFilteredQuery class]]) {
    OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(self, [((OrgApacheLuceneSearchFilteredQuery *) nil_chk(((OrgApacheLuceneSearchFilteredQuery *) cast_chk(query, [OrgApacheLuceneSearchFilteredQuery class])))) getQuery], payloads);
  }
  else if ([query isKindOfClass:[OrgApacheLuceneSearchDisjunctionMaxQuery class]]) {
    for (id<JavaUtilIterator> iterator = [((OrgApacheLuceneSearchDisjunctionMaxQuery *) nil_chk(((OrgApacheLuceneSearchDisjunctionMaxQuery *) cast_chk(query, [OrgApacheLuceneSearchDisjunctionMaxQuery class])))) iterator]; [((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]; ) {
      OrgApacheLuceneSearchPayloadsPayloadSpanUtil_queryToSpanQueryWithOrgApacheLuceneSearchQuery_withJavaUtilCollection_(self, [iterator next], payloads);
    }
  }
  else if ([query isKindOfClass:[OrgApacheLuceneSearchMultiPhraseQuery class]]) {
    OrgApacheLuceneSearchMultiPhraseQuery *mpq = (OrgApacheLuceneSearchMultiPhraseQuery *) cast_chk(query, [OrgApacheLuceneSearchMultiPhraseQuery class]);
    id<JavaUtilList> termArrays = [((OrgApacheLuceneSearchMultiPhraseQuery *) nil_chk(mpq)) getTermArrays];
    IOSIntArray *positions = [mpq getPositions];
    if (((IOSIntArray *) nil_chk(positions))->size_ > 0) {
      jint maxPosition = IOSIntArray_Get(positions, positions->size_ - 1);
      for (jint i = 0; i < positions->size_ - 1; ++i) {
        if (IOSIntArray_Get(positions, i) > maxPosition) {
          maxPosition = IOSIntArray_Get(positions, i);
        }
      }
      IOSObjectArray *disjunctLists = [IOSObjectArray newArrayWithLength:maxPosition + 1 type:JavaUtilList_class_()];
      jint distinctPositions = 0;
      for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(termArrays)) size]; ++i) {
        IOSObjectArray *termArray = [termArrays getWithInt:i];
        id<JavaUtilList> disjuncts = IOSObjectArray_Get(disjunctLists, IOSIntArray_Get(positions, i));
        if (disjuncts == nil) {
          disjuncts = (IOSObjectArray_SetAndConsume(disjunctLists, IOSIntArray_Get(positions, i), new_JavaUtilArrayList_initWithInt_(((IOSObjectArray *) nil_chk(termArray))->size_)));
          ++distinctPositions;
        }
        {
          IOSObjectArray *a__ = termArray;
          OrgApacheLuceneIndexTerm * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
          OrgApacheLuceneIndexTerm * const *e__ = b__ + a__->size_;
          while (b__ < e__) {
            OrgApacheLuceneIndexTerm *term = *b__++;
            [disjuncts addWithId:new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(term)];
          }
        }
      }
      jint positionGaps = 0;
      jint position = 0;
      IOSObjectArray *clauses = [IOSObjectArray newArrayWithLength:distinctPositions type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
      for (jint i = 0; i < disjunctLists->size_; ++i) {
        id<JavaUtilList> disjuncts = IOSObjectArray_Get(disjunctLists, i);
        if (disjuncts != nil) {
          (void) IOSObjectArray_SetAndConsume(clauses, position++, new_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_([disjuncts toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[disjuncts size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]]));
        }
        else {
          ++positionGaps;
        }
      }
      jint slop = [mpq getSlop];
      jboolean inorder = slop == 0;
      OrgApacheLuceneSearchSpansSpanNearQuery *sp = new_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(clauses, slop + positionGaps, inorder);
      [sp setBoostWithFloat:[((OrgApacheLuceneSearchQuery *) nil_chk(query)) getBoost]];
      OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(self, payloads, sp);
    }
  }
}

void OrgApacheLuceneSearchPayloadsPayloadSpanUtil_getPayloadsWithJavaUtilCollection_withOrgApacheLuceneSearchSpansSpanQuery_(OrgApacheLuceneSearchPayloadsPayloadSpanUtil *self, id<JavaUtilCollection> payloads, OrgApacheLuceneSearchSpansSpanQuery *query) {
  OrgApacheLuceneSearchSpansSpans *spans = [((OrgApacheLuceneSearchSpansSpanQuery *) nil_chk(query)) getSpansWithOrgApacheLuceneIndexIndexReader:self->reader_];
  while ([((OrgApacheLuceneSearchSpansSpans *) nil_chk(spans)) next] == true) {
    if ([spans isPayloadAvailable]) {
      id<JavaUtilCollection> payload = [spans getPayload];
      for (IOSByteArray * __strong bytes in nil_chk(payload)) {
        [((id<JavaUtilCollection>) nil_chk(payloads)) addWithId:bytes];
      }
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadSpanUtil)

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/index/BufferedDeletes.java
//

#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "java/util/concurrent/atomic/AtomicLong.h"
#include "org/apache/lucene/index/BufferedDeletes.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

inline jboolean OrgApacheLuceneIndexBufferedDeletes_get_VERBOSE_DELETES(void);
#define OrgApacheLuceneIndexBufferedDeletes_VERBOSE_DELETES false
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexBufferedDeletes, VERBOSE_DELETES, jboolean)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexBufferedDeletes)

jint OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_TERM;
jint OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_DOCID;
jint OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_QUERY;
JavaLangInteger *OrgApacheLuceneIndexBufferedDeletes_MAX_INT;

@implementation OrgApacheLuceneIndexBufferedDeletes

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexBufferedDeletes_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)description {
  {
    NSString *s = JreStrcat("$J", @"gen=", gen_);
    if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numTermDeletes_)) get] != 0) {
      (void) JreStrAppendStrong(&s, "CI$IC", ' ', [numTermDeletes_ get], @" deleted terms (unique count=", [((id<JavaUtilMap>) nil_chk(terms_)) size], ')');
    }
    if ([((id<JavaUtilMap>) nil_chk(queries_)) size] != 0) {
      (void) JreStrAppendStrong(&s, "CI$", ' ', [queries_ size], @" deleted queries");
    }
    if ([((id<JavaUtilList>) nil_chk(docIDs_)) size] != 0) {
      (void) JreStrAppendStrong(&s, "CI$", ' ', [docIDs_ size], @" deleted docIDs");
    }
    if ([((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) get] != 0) {
      (void) JreStrAppendStrong(&s, "$J", @" bytesUsed=", [bytesUsed_ get]);
    }
    return s;
  }
}

- (void)addQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                       withInt:(jint)docIDUpto {
  JavaLangInteger *current = [((id<JavaUtilMap>) nil_chk(queries_)) putWithId:query withId:JavaLangInteger_valueOfWithInt_(docIDUpto)];
  if (current == nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_QUERY];
  }
}

- (void)addDocIDWithInt:(jint)docID {
  [((id<JavaUtilList>) nil_chk(docIDs_)) addWithId:JavaLangInteger_valueOfWithInt_(docID)];
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_DOCID];
}

- (void)addTermWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                    withInt:(jint)docIDUpto {
  JavaLangInteger *current = [((id<JavaUtilMap>) nil_chk(terms_)) getWithId:term];
  if (current != nil && docIDUpto < [current intValue]) {
    return;
  }
  (void) [terms_ putWithId:term withId:JavaLangInteger_valueOfWithInt_(docIDUpto)];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numTermDeletes_)) incrementAndGet];
  if (current == nil) {
    [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_TERM + [((NSString *) nil_chk(((OrgApacheLuceneIndexTerm *) nil_chk(term))->text_)) java_length] * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR];
  }
}

- (void)clear {
  [((id<JavaUtilMap>) nil_chk(terms_)) clear];
  [((id<JavaUtilMap>) nil_chk(queries_)) clear];
  [((id<JavaUtilList>) nil_chk(docIDs_)) clear];
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(numTermDeletes_)) setWithInt:0];
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) setWithLong:0];
}

- (void)clearDocIDs {
  [((JavaUtilConcurrentAtomicAtomicLong *) nil_chk(bytesUsed_)) addAndGetWithLong:-[((id<JavaUtilList>) nil_chk(docIDs_)) size] * OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_DOCID];
  [docIDs_ clear];
}

- (jboolean)any {
  return [((id<JavaUtilMap>) nil_chk(terms_)) size] > 0 || [((id<JavaUtilList>) nil_chk(docIDs_)) size] > 0 || [((id<JavaUtilMap>) nil_chk(queries_)) size] > 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(addQueryWithOrgApacheLuceneSearchQuery:withInt:);
  methods[3].selector = @selector(addDocIDWithInt:);
  methods[4].selector = @selector(addTermWithOrgApacheLuceneIndexTerm:withInt:);
  methods[5].selector = @selector(clear);
  methods[6].selector = @selector(clearDocIDs);
  methods[7].selector = @selector(any);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "BYTES_PER_DEL_TERM", "I", .constantValue.asLong = 0, 0x18, -1, 7, -1, -1 },
    { "BYTES_PER_DEL_DOCID", "I", .constantValue.asLong = 0, 0x18, -1, 8, -1, -1 },
    { "BYTES_PER_DEL_QUERY", "I", .constantValue.asLong = 0, 0x18, -1, 9, -1, -1 },
    { "numTermDeletes_", "LJavaUtilConcurrentAtomicAtomicInteger;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "terms_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 10, -1 },
    { "queries_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 11, -1 },
    { "docIDs_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 12, -1 },
    { "MAX_INT", "LJavaLangInteger;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "bytesUsed_", "LJavaUtilConcurrentAtomicAtomicLong;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "VERBOSE_DELETES", "Z", .constantValue.asBOOL = OrgApacheLuceneIndexBufferedDeletes_VERBOSE_DELETES, 0x1a, -1, -1, -1, -1 },
    { "gen_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "addQuery", "LOrgApacheLuceneSearchQuery;I", "addDocID", "I", "addTerm", "LOrgApacheLuceneIndexTerm;I", &OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_TERM, &OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_DOCID, &OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_QUERY, "Ljava/util/Map<Lorg/apache/lucene/index/Term;Ljava/lang/Integer;>;", "Ljava/util/Map<Lorg/apache/lucene/search/Query;Ljava/lang/Integer;>;", "Ljava/util/List<Ljava/lang/Integer;>;", &OrgApacheLuceneIndexBufferedDeletes_MAX_INT };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBufferedDeletes = { "BufferedDeletes", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 8, 11, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexBufferedDeletes;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexBufferedDeletes class]) {
    OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_TERM = 8 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF) + 5 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER + 6 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
    OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_DOCID = 2 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF) + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
    OrgApacheLuceneIndexBufferedDeletes_BYTES_PER_DEL_QUERY = 5 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + 24;
    OrgApacheLuceneIndexBufferedDeletes_MAX_INT = JavaLangInteger_valueOfWithInt_(JavaLangInteger_MAX_VALUE);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexBufferedDeletes)
  }
}

@end

void OrgApacheLuceneIndexBufferedDeletes_init(OrgApacheLuceneIndexBufferedDeletes *self) {
  NSObject_init(self);
  self->numTermDeletes_ = new_JavaUtilConcurrentAtomicAtomicInteger_init();
  self->terms_ = new_JavaUtilHashMap_init();
  self->queries_ = new_JavaUtilHashMap_init();
  self->docIDs_ = new_JavaUtilArrayList_init();
  self->bytesUsed_ = new_JavaUtilConcurrentAtomicAtomicLong_init();
}

OrgApacheLuceneIndexBufferedDeletes *new_OrgApacheLuceneIndexBufferedDeletes_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexBufferedDeletes, init)
}

OrgApacheLuceneIndexBufferedDeletes *create_OrgApacheLuceneIndexBufferedDeletes_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexBufferedDeletes, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBufferedDeletes)

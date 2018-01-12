//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/Query.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Float.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/HashSet.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Searcher.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/Weight.h"

@interface OrgApacheLuceneSearchQuery () {
 @public
  jfloat boost_;
}

@end

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchQuery__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchQuery__Annotations$1(void);

@implementation OrgApacheLuceneSearchQuery

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchQuery_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setBoostWithFloat:(jfloat)b {
  boost_ = b;
}

- (jfloat)getBoost {
  return boost_;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  return [self toStringWithNSString:@""];
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$@$", @"Query ", self, @" does not implement createWeight"));
}

- (OrgApacheLuceneSearchWeight *)weightWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  return [((OrgApacheLuceneSearchSearcher *) nil_chk(searcher)) createNormalizedWeightWithOrgApacheLuceneSearchQuery:self];
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return self;
}

- (OrgApacheLuceneSearchQuery *)combineWithOrgApacheLuceneSearchQueryArray:(IOSObjectArray *)queries {
  JavaUtilHashSet *uniques = new_JavaUtilHashSet_init();
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(queries))->size_; i++) {
    OrgApacheLuceneSearchQuery *query = IOSObjectArray_Get(queries, i);
    IOSObjectArray *clauses = nil;
    jboolean splittable = ([query isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]);
    if (splittable) {
      OrgApacheLuceneSearchBooleanQuery *bq = (OrgApacheLuceneSearchBooleanQuery *) cast_chk(query, [OrgApacheLuceneSearchBooleanQuery class]);
      splittable = [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(bq)) isCoordDisabled];
      clauses = [bq getClauses];
      for (jint j = 0; splittable && j < ((IOSObjectArray *) nil_chk(clauses))->size_; j++) {
        splittable = ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(IOSObjectArray_Get(nil_chk(clauses), j))) getOccur] == JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD));
      }
    }
    if (splittable) {
      for (jint j = 0; j < ((IOSObjectArray *) nil_chk(clauses))->size_; j++) {
        [uniques addWithId:[((OrgApacheLuceneSearchBooleanClause *) nil_chk(IOSObjectArray_Get(clauses, j))) getQuery]];
      }
    }
    else {
      [uniques addWithId:query];
    }
  }
  if ([uniques size] == 1) {
    return [((id<JavaUtilIterator>) nil_chk([uniques iterator])) next];
  }
  OrgApacheLuceneSearchBooleanQuery *result = new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(true);
  for (OrgApacheLuceneSearchQuery * __strong query in uniques) [result addWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)];
  return result;
}

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms {
  @throw new_JavaLangUnsupportedOperationException_init();
}

+ (OrgApacheLuceneSearchQuery *)mergeBooleanQueriesWithOrgApacheLuceneSearchBooleanQueryArray:(IOSObjectArray *)queries {
  return OrgApacheLuceneSearchQuery_mergeBooleanQueriesWithOrgApacheLuceneSearchBooleanQueryArray_(queries);
}

- (OrgApacheLuceneSearchSimilarity *)getSimilarityWithOrgApacheLuceneSearchSearcher:(OrgApacheLuceneSearchSearcher *)searcher {
  return [((OrgApacheLuceneSearchSearcher *) nil_chk(searcher)) getSimilarity];
}

- (id)java_clone {
  @try {
    return [super java_clone];
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$$", @"Clone not supported: ", [e getMessage]));
  }
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(boost_);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  OrgApacheLuceneSearchQuery *other = (OrgApacheLuceneSearchQuery *) cast_chk(obj, [OrgApacheLuceneSearchQuery class]);
  if (JavaLangFloat_floatToIntBitsWithFloat_(boost_) != JavaLangFloat_floatToIntBitsWithFloat_(other->boost_)) return false;
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x11, 7, 5, 6, -1, 8, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 9, 10, 6, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, -1, 15, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x89, 16, 17, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSimilarity;", 0x1, 18, 5, -1, -1, 19, -1 },
    { NULL, "LNSObject;", 0x1, 20, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 21, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 22, 23, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setBoostWithFloat:);
  methods[2].selector = @selector(getBoost);
  methods[3].selector = @selector(toStringWithNSString:);
  methods[4].selector = @selector(description);
  methods[5].selector = @selector(createWeightWithOrgApacheLuceneSearchSearcher:);
  methods[6].selector = @selector(weightWithOrgApacheLuceneSearchSearcher:);
  methods[7].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[8].selector = @selector(combineWithOrgApacheLuceneSearchQueryArray:);
  methods[9].selector = @selector(extractTermsWithJavaUtilSet:);
  methods[10].selector = @selector(mergeBooleanQueriesWithOrgApacheLuceneSearchBooleanQueryArray:);
  methods[11].selector = @selector(getSimilarityWithOrgApacheLuceneSearchSearcher:);
  methods[12].selector = @selector(java_clone);
  methods[13].selector = @selector(hash);
  methods[14].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "boost_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setBoost", "F", "toString", "LNSString;", "createWeight", "LOrgApacheLuceneSearchSearcher;", "LJavaIoIOException;", "weight", (void *)&OrgApacheLuceneSearchQuery__Annotations$0, "rewrite", "LOrgApacheLuceneIndexIndexReader;", "combine", "[LOrgApacheLuceneSearchQuery;", "extractTerms", "LJavaUtilSet;", "(Ljava/util/Set<Lorg/apache/lucene/index/Term;>;)V", "mergeBooleanQueries", "[LOrgApacheLuceneSearchBooleanQuery;", "getSimilarity", (void *)&OrgApacheLuceneSearchQuery__Annotations$1, "clone", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQuery = { "Query", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 15, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchQuery;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self java_clone];
}

@end

void OrgApacheLuceneSearchQuery_init(OrgApacheLuceneSearchQuery *self) {
  NSObject_init(self);
  self->boost_ = 1.0f;
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneSearchQuery_mergeBooleanQueriesWithOrgApacheLuceneSearchBooleanQueryArray_(IOSObjectArray *queries) {
  OrgApacheLuceneSearchQuery_initialize();
  JavaUtilHashSet *allClauses = new_JavaUtilHashSet_init();
  {
    IOSObjectArray *a__ = queries;
    OrgApacheLuceneSearchBooleanQuery * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchBooleanQuery * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchBooleanQuery *booleanQuery = *b__++;
      for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(booleanQuery)) {
        [allClauses addWithId:clause];
      }
    }
  }
  jboolean coordDisabled = ((IOSObjectArray *) nil_chk(queries))->size_ == 0 ? false : [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(IOSObjectArray_Get(queries, 0))) isCoordDisabled];
  OrgApacheLuceneSearchBooleanQuery *result = new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(coordDisabled);
  for (OrgApacheLuceneSearchBooleanClause * __strong clause2 in allClauses) {
    [result addWithOrgApacheLuceneSearchBooleanClause:clause2];
  }
  return result;
}

IOSObjectArray *OrgApacheLuceneSearchQuery__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchQuery__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQuery)

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/spans/SpanMultiTermQueryWrapper.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/lang/reflect/Method.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/ScoringRewrite.h"
#include "org/apache/lucene/search/TopTermsRewrite.h"
#include "org/apache/lucene/search/spans/SpanMultiTermQueryWrapper.h"
#include "org/apache/lucene/search/spans/SpanOrQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanTermQuery.h"
#include "org/apache/lucene/search/spans/Spans.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper () {
 @public
  JavaLangReflectMethod *getFieldMethod_;
  JavaLangReflectMethod *getTermMethod_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper, getFieldMethod_, JavaLangReflectMethod *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper, getTermMethod_, JavaLangReflectMethod *)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *self, OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *rewriteMethod);

@interface OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 : OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod {
 @public
  OrgApacheLuceneSearchScoringRewrite *delegate_;
}

- (instancetype)init;

- (OrgApacheLuceneSearchSpansSpanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                            withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

- (id)readResolve;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1, delegate_, OrgApacheLuceneSearchScoringRewrite *)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init(void);

@interface OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 : OrgApacheLuceneSearchScoringRewrite

- (instancetype)init;

- (OrgApacheLuceneSearchSpansSpanOrQuery *)getTopLevelQuery;

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchSpansSpanOrQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost;

- (OrgApacheLuceneSearchSpansSpanOrQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                              withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init(void);

@interface OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite () {
 @public
  OrgApacheLuceneSearchTopTermsRewrite *delegate_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite, delegate_, OrgApacheLuceneSearchTopTermsRewrite *)

@interface OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 : OrgApacheLuceneSearchTopTermsRewrite

- (instancetype)initWithInt:(jint)size;

- (jint)getMaxSize;

- (OrgApacheLuceneSearchSpansSpanOrQuery *)getTopLevelQuery;

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchSpansSpanOrQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost;

- (OrgApacheLuceneSearchSpansSpanOrQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)arg0
                                              withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1)

__attribute__((unused)) static void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 *self, jint size);

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(jint size) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(jint size);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper)

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SCORING_SPAN_QUERY_REWRITE;

@implementation OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper

- (instancetype)initWithOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(self, query);
  return self;
}

- (OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *)getRewriteMethod {
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *m = [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) getRewriteMethod];
  if (!([m isKindOfClass:[OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod class]])) @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"You can only use SpanMultiTermQueryWrapper with a suitable SpanRewriteMethod.");
  return (OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *) cast_chk(m, [OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod class]);
}

- (void)setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod:(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *)rewriteMethod {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_(self, rewriteMethod);
}

- (OrgApacheLuceneSearchSpansSpans *)getSpansWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"Query should have been rewritten");
}

- (NSString *)getField {
  @try {
    if (getFieldMethod_ != nil) {
      return (NSString *) cast_chk([getFieldMethod_ invokeWithId:query_ withNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]], [NSString class]);
    }
    else {
      JreAssert(getTermMethod_ != nil, @"org/apache/lucene/search/spans/SpanMultiTermQueryWrapper.java:122 condition failed: assert getTermMethod != null;");
      return [((OrgApacheLuceneIndexTerm *) nil_chk(((OrgApacheLuceneIndexTerm *) cast_chk([((JavaLangReflectMethod *) nil_chk(getTermMethod_)) invokeWithId:query_ withNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]], [OrgApacheLuceneIndexTerm class])))) field];
    }
  }
  @catch (JavaLangException *e) {
    @throw new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(@"Cannot invoke getField() or getTerm() on wrapped query.", e);
  }
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *builder = new_JavaLangStringBuilder_init();
  (void) [builder appendWithNSString:@"SpanMultiTermQueryWrapper("];
  (void) [builder appendWithNSString:[((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) toStringWithNSString:field]];
  (void) [builder appendWithNSString:@")"];
  return [builder description];
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchQuery *q = [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader];
  if (!([q isKindOfClass:[OrgApacheLuceneSearchSpansSpanQuery class]])) @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"You can only use SpanMultiTermQueryWrapper with a suitable SpanRewriteMethod.");
  return q;
}

- (NSUInteger)hash {
  return 31 * ((jint) [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *other = (OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *) cast_chk(obj, [OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper class]);
  return [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query_)) isEqual:other->query_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x11, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpans;", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 9, 5, 6, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchMultiTermQuery:);
  methods[1].selector = @selector(getRewriteMethod);
  methods[2].selector = @selector(setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod:);
  methods[3].selector = @selector(getSpansWithOrgApacheLuceneIndexIndexReader:);
  methods[4].selector = @selector(getField);
  methods[5].selector = @selector(toStringWithNSString:);
  methods[6].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[7].selector = @selector(hash);
  methods[8].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "query_", "LOrgApacheLuceneSearchMultiTermQuery;", .constantValue.asLong = 0, 0x14, -1, -1, 13, -1 },
    { "getFieldMethod_", "LJavaLangReflectMethod;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "getTermMethod_", "LJavaLangReflectMethod;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "SCORING_SPAN_QUERY_REWRITE", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchMultiTermQuery;", "(TQ;)V", "setRewriteMethod", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod;", "getSpans", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "toString", "LNSString;", "rewrite", "hashCode", "equals", "LNSObject;", "TQ;", &OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SCORING_SPAN_QUERY_REWRITE, "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod;LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite;", "<Q:Lorg/apache/lucene/search/MultiTermQuery;>Lorg/apache/lucene/search/spans/SpanQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper = { "SpanMultiTermQueryWrapper", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x1, 9, 4, -1, 15, -1, 16, -1 };
  return &_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper class]) {
    OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SCORING_SPAN_QUERY_REWRITE = new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init();
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper)
  }
}

@end

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *self, OrgApacheLuceneSearchMultiTermQuery *query) {
  OrgApacheLuceneSearchSpansSpanQuery_init(self);
  self->getFieldMethod_ = nil;
  self->getTermMethod_ = nil;
  self->query_ = query;
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *method = [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(query)) getRewriteMethod];
  if ([method isKindOfClass:[OrgApacheLuceneSearchTopTermsRewrite class]]) {
    jint pqsize = [((OrgApacheLuceneSearchTopTermsRewrite *) nil_chk(((OrgApacheLuceneSearchTopTermsRewrite *) cast_chk(method, [OrgApacheLuceneSearchTopTermsRewrite class])))) getSize];
    OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_(self, new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_initWithInt_(pqsize));
  }
  else {
    OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_(self, OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SCORING_SPAN_QUERY_REWRITE);
  }
  @try {
    self->getFieldMethod_ = [[query java_getClass] getMethod:@"getField" parameterTypes:[IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()]];
  }
  @catch (JavaLangException *e1) {
    @try {
      self->getTermMethod_ = [[query java_getClass] getMethod:@"getTerm" parameterTypes:[IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()]];
    }
    @catch (JavaLangException *e2) {
      @try {
        self->getTermMethod_ = [[query java_getClass] getMethod:@"getPrefix" parameterTypes:[IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()]];
      }
      @catch (JavaLangException *e3) {
        @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"SpanMultiTermQueryWrapper can only wrap MultiTermQueries that can return a field name using getField() or getTerm()");
      }
    }
  }
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchMultiTermQuery *query) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper, initWithOrgApacheLuceneSearchMultiTermQuery_, query)
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchMultiTermQuery *query) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper, initWithOrgApacheLuceneSearchMultiTermQuery_, query)
}

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_setRewriteMethodWithOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper *self, OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *rewriteMethod) {
  [((OrgApacheLuceneSearchMultiTermQuery *) nil_chk(self->query_)) setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:rewriteMethod];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper)

@implementation OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchSpansSpanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                            withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanQuery;", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod = { "SpanRewriteMethod", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x409, 2, 0, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod;
}

@end

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_init(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod *self) {
  OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod)

@implementation OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchSpansSpanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                            withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  return ((OrgApacheLuceneSearchSpansSpanOrQuery *) [((OrgApacheLuceneSearchScoringRewrite *) nil_chk(delegate_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query]);
}

- (id)readResolve {
  return JreLoadStatic(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper, SCORING_SPAN_QUERY_REWRITE);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanQuery;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  methods[2].selector = @selector(readResolve);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LOrgApacheLuceneSearchScoringRewrite;", .constantValue.asLong = 0, 0x12, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "Lorg/apache/lucene/search/ScoringRewrite<Lorg/apache/lucene/search/spans/SpanOrQuery;>;", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 = { "", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x8018, 3, 1, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1;
}

@end

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 *self) {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_init(self);
  self->delegate_ = new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init();
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1, init)
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1 *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1, init)
}

@implementation OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchSpansSpanOrQuery *)getTopLevelQuery {
  return new_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_([IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneSearchSpansSpanQuery_class_()]);
}

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchSpansSpanOrQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost {
  OrgApacheLuceneSearchSpansSpanTermQuery *q = new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
  [q setBoostWithFloat:boost];
  [((OrgApacheLuceneSearchSpansSpanOrQuery *) nil_chk(topLevel)) addClauseWithOrgApacheLuceneSearchSpansSpanQuery:q];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanOrQuery;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTopLevelQuery);
  methods[2].selector = @selector(addClauseWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexTerm:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addClause", "LOrgApacheLuceneSearchSpansSpanOrQuery;LOrgApacheLuceneIndexTerm;F", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1;", "Lorg/apache/lucene/search/ScoringRewrite<Lorg/apache/lucene/search/spans/SpanOrQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 = { "", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 2, -1, -1, 3, -1 };
  return &_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1;
}

@end

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 *self) {
  OrgApacheLuceneSearchScoringRewrite_init(self);
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1, init)
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1 *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_1_1, init)
}

@implementation OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_initWithInt_(self, size);
  return self;
}

- (jint)getSize {
  return [((OrgApacheLuceneSearchTopTermsRewrite *) nil_chk(delegate_)) getSize];
}

- (OrgApacheLuceneSearchSpansSpanQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                            withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query {
  return ((OrgApacheLuceneSearchSpansSpanOrQuery *) [((OrgApacheLuceneSearchTopTermsRewrite *) nil_chk(delegate_)) rewriteWithOrgApacheLuceneIndexIndexReader:reader withOrgApacheLuceneSearchMultiTermQuery:query]);
}

- (NSUInteger)hash {
  return 31 * ((jint) [((OrgApacheLuceneSearchTopTermsRewrite *) nil_chk(delegate_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite *other = (OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite *) cast_chk(obj, [OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite class]);
  return [((OrgApacheLuceneSearchTopTermsRewrite *) nil_chk(delegate_)) isEqual:other->delegate_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanQuery;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(getSize);
  methods[2].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneSearchMultiTermQuery:);
  methods[3].selector = @selector(hash);
  methods[4].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LOrgApacheLuceneSearchTopTermsRewrite;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "I", "rewrite", "LOrgApacheLuceneIndexIndexReader;LOrgApacheLuceneSearchMultiTermQuery;", "LJavaIoIOException;", "hashCode", "equals", "LNSObject;", "Lorg/apache/lucene/search/TopTermsRewrite<Lorg/apache/lucene/search/spans/SpanOrQuery;>;", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite = { "TopTermsSpanBooleanQueryRewrite", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x19, 5, 1, 8, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite;
}

@end

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_initWithInt_(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite *self, jint size) {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_SpanRewriteMethod_init(self);
  self->delegate_ = new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(size);
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite, initWithInt_, size)
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite)

@implementation OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1

- (instancetype)initWithInt:(jint)size {
  OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(self, size);
  return self;
}

- (jint)getMaxSize {
  return JavaLangInteger_MAX_VALUE;
}

- (OrgApacheLuceneSearchSpansSpanOrQuery *)getTopLevelQuery {
  return new_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_([IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneSearchSpansSpanQuery_class_()]);
}

- (void)addClauseWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchSpansSpanOrQuery *)topLevel
                   withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                      withFloat:(jfloat)boost {
  OrgApacheLuceneSearchSpansSpanTermQuery *q = new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(term);
  [q setBoostWithFloat:boost];
  [((OrgApacheLuceneSearchSpansSpanOrQuery *) nil_chk(topLevel)) addClauseWithOrgApacheLuceneSearchSpansSpanQuery:q];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSpansSpanOrQuery;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(getMaxSize);
  methods[2].selector = @selector(getTopLevelQuery);
  methods[3].selector = @selector(addClauseWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneIndexTerm:withFloat:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "addClause", "LOrgApacheLuceneSearchSpansSpanOrQuery;LOrgApacheLuceneIndexTerm;F", "LOrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite;", "initWithInt:", "Lorg/apache/lucene/search/TopTermsRewrite<Lorg/apache/lucene/search/spans/SpanOrQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 = { "", "org.apache.lucene.search.spans", ptrTable, methods, NULL, 7, 0x8018, 4, 0, 3, -1, 4, 5, -1 };
  return &_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1;
}

@end

void OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 *self, jint size) {
  OrgApacheLuceneSearchTopTermsRewrite_initWithInt_(self, size);
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 *new_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1, initWithInt_, size)
}

OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1 *create_OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSpansSpanMultiTermQueryWrapper_TopTermsSpanBooleanQueryRewrite_1, initWithInt_, size)
}

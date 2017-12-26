//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/function/FieldCacheSource.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/FieldCache.h"
#include "org/apache/lucene/search/function/DocValues.h"
#include "org/apache/lucene/search/function/FieldCacheSource.h"
#include "org/apache/lucene/search/function/ValueSource.h"

@interface OrgApacheLuceneSearchFunctionFieldCacheSource () {
 @public
  NSString *field_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFunctionFieldCacheSource, field_, NSString *)

@implementation OrgApacheLuceneSearchFunctionFieldCacheSource

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneSearchFunctionFieldCacheSource_initWithNSString_(self, field);
  return self;
}

- (OrgApacheLuceneSearchFunctionDocValues *)getValuesWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return [self getCachedFieldValuesWithOrgApacheLuceneSearchFieldCache:JreLoadStatic(OrgApacheLuceneSearchFieldCache, DEFAULT) withNSString:field_ withOrgApacheLuceneIndexIndexReader:reader];
}

- (NSString *)description__ {
  return field_;
}

- (OrgApacheLuceneSearchFunctionDocValues *)getCachedFieldValuesWithOrgApacheLuceneSearchFieldCache:(id<OrgApacheLuceneSearchFieldCache>)cache
                                                                                       withNSString:(NSString *)field
                                                                withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneSearchFunctionFieldCacheSource class]])) {
    return false;
  }
  OrgApacheLuceneSearchFunctionFieldCacheSource *other = (OrgApacheLuceneSearchFunctionFieldCacheSource *) cast_chk(o, [OrgApacheLuceneSearchFunctionFieldCacheSource class]);
  return [((NSString *) nil_chk(self->field_)) isEqual:((OrgApacheLuceneSearchFunctionFieldCacheSource *) nil_chk(other))->field_] && [self cachedFieldSourceEqualsWithOrgApacheLuceneSearchFunctionFieldCacheSource:other];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(field_)) hash]) + [self cachedFieldSourceHashCode];
}

- (jboolean)cachedFieldSourceEqualsWithOrgApacheLuceneSearchFunctionFieldCacheSource:(OrgApacheLuceneSearchFunctionFieldCacheSource *)other {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)cachedFieldSourceHashCode {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFunctionDocValues;", 0x11, 1, 2, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFunctionDocValues;", 0x401, 5, 6, 3, -1, -1, -1 },
    { NULL, "Z", 0x11, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x11, 9, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(getValuesWithOrgApacheLuceneIndexIndexReader:);
  methods[2].selector = @selector(description__);
  methods[3].selector = @selector(getCachedFieldValuesWithOrgApacheLuceneSearchFieldCache:withNSString:withOrgApacheLuceneIndexIndexReader:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(cachedFieldSourceEqualsWithOrgApacheLuceneSearchFunctionFieldCacheSource:);
  methods[7].selector = @selector(cachedFieldSourceHashCode);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "getValues", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "description", "getCachedFieldValues", "LOrgApacheLuceneSearchFieldCache;LNSString;LOrgApacheLuceneIndexIndexReader;", "equals", "LNSObject;", "hashCode", "cachedFieldSourceEquals", "LOrgApacheLuceneSearchFunctionFieldCacheSource;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFunctionFieldCacheSource = { "FieldCacheSource", "org.apache.lucene.search.function", ptrTable, methods, fields, 7, 0x401, 8, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFunctionFieldCacheSource;
}

@end

void OrgApacheLuceneSearchFunctionFieldCacheSource_initWithNSString_(OrgApacheLuceneSearchFunctionFieldCacheSource *self, NSString *field) {
  OrgApacheLuceneSearchFunctionValueSource_init(self);
  JreStrongAssign(&self->field_, field);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFunctionFieldCacheSource)

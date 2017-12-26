//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-grouping-3.5.0-sources.jar!org/apache/lucene/search/grouping/TermAllGroupsCollector.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/FieldCache.h"
#include "org/apache/lucene/search/grouping/AbstractAllGroupsCollector.h"
#include "org/apache/lucene/search/grouping/SentinelIntSet.h"
#include "org/apache/lucene/search/grouping/TermAllGroupsCollector.h"

@interface OrgApacheLuceneSearchGroupingTermAllGroupsCollector () {
 @public
  NSString *groupField_;
  OrgApacheLuceneSearchGroupingSentinelIntSet *ordSet_;
  id<JavaUtilList> groups_;
  OrgApacheLuceneSearchFieldCache_StringIndex *index_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, groupField_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, ordSet_, OrgApacheLuceneSearchGroupingSentinelIntSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, groups_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, index_, OrgApacheLuceneSearchFieldCache_StringIndex *)

inline jint OrgApacheLuceneSearchGroupingTermAllGroupsCollector_get_DEFAULT_INITIAL_SIZE(void);
#define OrgApacheLuceneSearchGroupingTermAllGroupsCollector_DEFAULT_INITIAL_SIZE 128
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, DEFAULT_INITIAL_SIZE, jint)

@implementation OrgApacheLuceneSearchGroupingTermAllGroupsCollector

- (instancetype)initWithNSString:(NSString *)groupField
                         withInt:(jint)initialSize {
  OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(self, groupField, initialSize);
  return self;
}

- (instancetype)initWithNSString:(NSString *)groupField {
  OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(self, groupField);
  return self;
}

- (void)collectWithInt:(jint)doc {
  jint key = IOSIntArray_Get(nil_chk(((OrgApacheLuceneSearchFieldCache_StringIndex *) nil_chk(index_))->order_), doc);
  if (![((OrgApacheLuceneSearchGroupingSentinelIntSet *) nil_chk(ordSet_)) existsWithInt:key]) {
    [ordSet_ putWithInt:key];
    NSString *term = key == 0 ? nil : IOSObjectArray_Get(nil_chk(((OrgApacheLuceneSearchFieldCache_StringIndex *) nil_chk(index_))->lookup_), key);
    [((id<JavaUtilList>) nil_chk(groups_)) addWithId:term];
  }
}

- (id<JavaUtilCollection>)getGroups {
  return groups_;
}

- (void)setNextReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                 withInt:(jint)docBase {
  index_ = [((id<OrgApacheLuceneSearchFieldCache>) nil_chk(JreLoadStatic(OrgApacheLuceneSearchFieldCache, DEFAULT))) getStringIndexWithOrgApacheLuceneIndexIndexReader:reader withNSString:groupField_];
  [((OrgApacheLuceneSearchGroupingSentinelIntSet *) nil_chk(ordSet_)) clear];
  for (NSString * __strong countedGroup in nil_chk(groups_)) {
    jint ord = [((OrgApacheLuceneSearchFieldCache_StringIndex *) nil_chk(index_)) binarySearchLookupWithNSString:countedGroup];
    if (ord >= 0) {
      [ordSet_ putWithInt:ord];
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withInt:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(collectWithInt:);
  methods[3].selector = @selector(getGroups);
  methods[4].selector = @selector(setNextReaderWithOrgApacheLuceneIndexIndexReader:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_INITIAL_SIZE", "I", .constantValue.asInt = OrgApacheLuceneSearchGroupingTermAllGroupsCollector_DEFAULT_INITIAL_SIZE, 0x1a, -1, -1, -1, -1 },
    { "groupField_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "ordSet_", "LOrgApacheLuceneSearchGroupingSentinelIntSet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "groups_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "index_", "LOrgApacheLuceneSearchFieldCache_StringIndex;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;I", "LNSString;", "collect", "I", "LJavaIoIOException;", "()Ljava/util/Collection<Ljava/lang/String;>;", "setNextReader", "LOrgApacheLuceneIndexIndexReader;I", "Ljava/util/List<Ljava/lang/String;>;", "Lorg/apache/lucene/search/grouping/AbstractAllGroupsCollector<Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchGroupingTermAllGroupsCollector = { "TermAllGroupsCollector", "org.apache.lucene.search.grouping", ptrTable, methods, fields, 7, 0x1, 5, 5, -1, -1, -1, 9, -1 };
  return &_OrgApacheLuceneSearchGroupingTermAllGroupsCollector;
}

@end

void OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(OrgApacheLuceneSearchGroupingTermAllGroupsCollector *self, NSString *groupField, jint initialSize) {
  OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector_init(self);
  self->ordSet_ = new_OrgApacheLuceneSearchGroupingSentinelIntSet_initWithInt_withInt_(initialSize, -1);
  self->groups_ = new_JavaUtilArrayList_initWithInt_(initialSize);
  self->groupField_ = groupField;
}

OrgApacheLuceneSearchGroupingTermAllGroupsCollector *new_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(NSString *groupField, jint initialSize) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, initWithNSString_withInt_, groupField, initialSize)
}

OrgApacheLuceneSearchGroupingTermAllGroupsCollector *create_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(NSString *groupField, jint initialSize) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, initWithNSString_withInt_, groupField, initialSize)
}

void OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(OrgApacheLuceneSearchGroupingTermAllGroupsCollector *self, NSString *groupField) {
  OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_withInt_(self, groupField, OrgApacheLuceneSearchGroupingTermAllGroupsCollector_DEFAULT_INITIAL_SIZE);
}

OrgApacheLuceneSearchGroupingTermAllGroupsCollector *new_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(NSString *groupField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, initWithNSString_, groupField)
}

OrgApacheLuceneSearchGroupingTermAllGroupsCollector *create_OrgApacheLuceneSearchGroupingTermAllGroupsCollector_initWithNSString_(NSString *groupField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchGroupingTermAllGroupsCollector, initWithNSString_, groupField)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchGroupingTermAllGroupsCollector)

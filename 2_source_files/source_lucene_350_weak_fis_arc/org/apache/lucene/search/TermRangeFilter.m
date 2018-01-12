//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/TermRangeFilter.java
//

#include "J2ObjC_source.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/search/MultiTermQueryWrapperFilter.h"
#include "org/apache/lucene/search/TermRangeFilter.h"
#include "org/apache/lucene/search/TermRangeQuery.h"

@implementation OrgApacheLuceneSearchTermRangeFilter

- (instancetype)initWithNSString:(NSString *)fieldName
                    withNSString:(NSString *)lowerTerm
                    withNSString:(NSString *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper {
  OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(self, fieldName, lowerTerm, upperTerm, includeLower, includeUpper);
  return self;
}

- (instancetype)initWithNSString:(NSString *)fieldName
                    withNSString:(NSString *)lowerTerm
                    withNSString:(NSString *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper
            withJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(self, fieldName, lowerTerm, upperTerm, includeLower, includeUpper, collator);
  return self;
}

+ (OrgApacheLuceneSearchTermRangeFilter *)LessWithNSString:(NSString *)fieldName
                                              withNSString:(NSString *)upperTerm {
  return OrgApacheLuceneSearchTermRangeFilter_LessWithNSString_withNSString_(fieldName, upperTerm);
}

+ (OrgApacheLuceneSearchTermRangeFilter *)MoreWithNSString:(NSString *)fieldName
                                              withNSString:(NSString *)lowerTerm {
  return OrgApacheLuceneSearchTermRangeFilter_MoreWithNSString_withNSString_(fieldName, lowerTerm);
}

- (NSString *)getField {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) getField];
}

- (NSString *)getLowerTerm {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) getLowerTerm];
}

- (NSString *)getUpperTerm {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) getUpperTerm];
}

- (jboolean)includesLower {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) includesLower];
}

- (jboolean)includesUpper {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) includesUpper];
}

- (JavaTextCollator *)getCollator {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) getCollator];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTermRangeFilter;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchTermRangeFilter;", 0x9, 4, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaTextCollator;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withNSString:withNSString:withBoolean:withBoolean:);
  methods[1].selector = @selector(initWithNSString:withNSString:withNSString:withBoolean:withBoolean:withJavaTextCollator:);
  methods[2].selector = @selector(LessWithNSString:withNSString:);
  methods[3].selector = @selector(MoreWithNSString:withNSString:);
  methods[4].selector = @selector(getField);
  methods[5].selector = @selector(getLowerTerm);
  methods[6].selector = @selector(getUpperTerm);
  methods[7].selector = @selector(includesLower);
  methods[8].selector = @selector(includesUpper);
  methods[9].selector = @selector(getCollator);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;ZZ", "LNSString;LNSString;LNSString;ZZLJavaTextCollator;", "Less", "LNSString;LNSString;", "More", "Lorg/apache/lucene/search/MultiTermQueryWrapperFilter<Lorg/apache/lucene/search/TermRangeQuery;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermRangeFilter = { "TermRangeFilter", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x1, 10, 0, -1, -1, -1, 5, -1 };
  return &_OrgApacheLuceneSearchTermRangeFilter;
}

@end

void OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(OrgApacheLuceneSearchTermRangeFilter *self, NSString *fieldName, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchMultiTermQueryWrapperFilter_initWithOrgApacheLuceneSearchMultiTermQuery_(self, new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(fieldName, lowerTerm, upperTerm, includeLower, includeUpper));
}

OrgApacheLuceneSearchTermRangeFilter *new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *fieldName, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermRangeFilter, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_, fieldName, lowerTerm, upperTerm, includeLower, includeUpper)
}

OrgApacheLuceneSearchTermRangeFilter *create_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *fieldName, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermRangeFilter, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_, fieldName, lowerTerm, upperTerm, includeLower, includeUpper)
}

void OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(OrgApacheLuceneSearchTermRangeFilter *self, NSString *fieldName, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  OrgApacheLuceneSearchMultiTermQueryWrapperFilter_initWithOrgApacheLuceneSearchMultiTermQuery_(self, new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(fieldName, lowerTerm, upperTerm, includeLower, includeUpper, collator));
}

OrgApacheLuceneSearchTermRangeFilter *new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(NSString *fieldName, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermRangeFilter, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_, fieldName, lowerTerm, upperTerm, includeLower, includeUpper, collator)
}

OrgApacheLuceneSearchTermRangeFilter *create_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(NSString *fieldName, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermRangeFilter, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_, fieldName, lowerTerm, upperTerm, includeLower, includeUpper, collator)
}

OrgApacheLuceneSearchTermRangeFilter *OrgApacheLuceneSearchTermRangeFilter_LessWithNSString_withNSString_(NSString *fieldName, NSString *upperTerm) {
  OrgApacheLuceneSearchTermRangeFilter_initialize();
  return new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(fieldName, nil, upperTerm, false, true);
}

OrgApacheLuceneSearchTermRangeFilter *OrgApacheLuceneSearchTermRangeFilter_MoreWithNSString_withNSString_(NSString *fieldName, NSString *lowerTerm) {
  OrgApacheLuceneSearchTermRangeFilter_initialize();
  return new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(fieldName, lowerTerm, nil, true, false);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermRangeFilter)

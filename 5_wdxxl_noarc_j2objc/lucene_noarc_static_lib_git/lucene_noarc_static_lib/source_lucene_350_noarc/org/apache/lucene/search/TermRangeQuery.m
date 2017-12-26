//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/TermRangeQuery.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/FilteredTermEnum.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/TermRangeQuery.h"
#include "org/apache/lucene/search/TermRangeTermEnum.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneSearchTermRangeQuery () {
 @public
  NSString *lowerTerm_;
  NSString *upperTerm_;
  JavaTextCollator *collator_;
  NSString *field_;
  jboolean includeLower_;
  jboolean includeUpper_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeQuery, lowerTerm_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeQuery, upperTerm_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeQuery, collator_, JavaTextCollator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeQuery, field_, NSString *)

@implementation OrgApacheLuceneSearchTermRangeQuery

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)lowerTerm
                    withNSString:(NSString *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper {
  OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(self, field, lowerTerm, upperTerm, includeLower, includeUpper);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)lowerTerm
                    withNSString:(NSString *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper
            withJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(self, field, lowerTerm, upperTerm, includeLower, includeUpper, collator);
  return self;
}

- (NSString *)getField {
  return field_;
}

- (NSString *)getLowerTerm {
  return lowerTerm_;
}

- (NSString *)getUpperTerm {
  return upperTerm_;
}

- (jboolean)includesLower {
  return includeLower_;
}

- (jboolean)includesUpper {
  return includeUpper_;
}

- (JavaTextCollator *)getCollator {
  return collator_;
}

- (OrgApacheLuceneSearchFilteredTermEnum *)getEnumWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return create_OrgApacheLuceneSearchTermRangeTermEnum_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(reader, field_, lowerTerm_, upperTerm_, includeLower_, includeUpper_, collator_);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  if (![((NSString *) nil_chk([self getField])) isEqual:field]) {
    [buffer appendWithNSString:[self getField]];
    [buffer appendWithNSString:@":"];
  }
  [buffer appendWithChar:includeLower_ ? '[' : '{'];
  [buffer appendWithNSString:lowerTerm_ != nil ? lowerTerm_ : @"*"];
  [buffer appendWithNSString:@" TO "];
  [buffer appendWithNSString:upperTerm_ != nil ? upperTerm_ : @"*"];
  [buffer appendWithChar:includeUpper_ ? ']' : '}'];
  [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((collator_ == nil) ? 0 : ((jint) [((JavaTextCollator *) nil_chk(collator_)) hash]));
  result = prime * result + ((field_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(field_)) hash]));
  result = prime * result + (includeLower_ ? 1231 : 1237);
  result = prime * result + (includeUpper_ ? 1231 : 1237);
  result = prime * result + ((lowerTerm_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(lowerTerm_)) hash]));
  result = prime * result + ((upperTerm_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(upperTerm_)) hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (![super isEqual:obj]) return false;
  if ([self java_getClass] != [nil_chk(obj) java_getClass]) return false;
  OrgApacheLuceneSearchTermRangeQuery *other = (OrgApacheLuceneSearchTermRangeQuery *) cast_chk(obj, [OrgApacheLuceneSearchTermRangeQuery class]);
  if (collator_ == nil) {
    if (other->collator_ != nil) return false;
  }
  else if (![collator_ isEqual:other->collator_]) return false;
  if (field_ == nil) {
    if (other->field_ != nil) return false;
  }
  else if (![field_ isEqual:other->field_]) return false;
  if (includeLower_ != other->includeLower_) return false;
  if (includeUpper_ != other->includeUpper_) return false;
  if (lowerTerm_ == nil) {
    if (other->lowerTerm_ != nil) return false;
  }
  else if (![lowerTerm_ isEqual:other->lowerTerm_]) return false;
  if (upperTerm_ == nil) {
    if (other->upperTerm_ != nil) return false;
  }
  else if (![upperTerm_ isEqual:other->upperTerm_]) return false;
  return true;
}

- (void)dealloc {
  RELEASE_(lowerTerm_);
  RELEASE_(upperTerm_);
  RELEASE_(collator_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaTextCollator;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFilteredTermEnum;", 0x4, 2, 3, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 7, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withNSString:withNSString:withBoolean:withBoolean:);
  methods[1].selector = @selector(initWithNSString:withNSString:withNSString:withBoolean:withBoolean:withJavaTextCollator:);
  methods[2].selector = @selector(getField);
  methods[3].selector = @selector(getLowerTerm);
  methods[4].selector = @selector(getUpperTerm);
  methods[5].selector = @selector(includesLower);
  methods[6].selector = @selector(includesUpper);
  methods[7].selector = @selector(getCollator);
  methods[8].selector = @selector(getEnumWithOrgApacheLuceneIndexIndexReader:);
  methods[9].selector = @selector(toStringWithNSString:);
  methods[10].selector = @selector(hash);
  methods[11].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lowerTerm_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "upperTerm_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "collator_", "LJavaTextCollator;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "includeLower_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "includeUpper_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;ZZ", "LNSString;LNSString;LNSString;ZZLJavaTextCollator;", "getEnum", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "toString", "LNSString;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermRangeQuery = { "TermRangeQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 12, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTermRangeQuery;
}

@end

void OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(OrgApacheLuceneSearchTermRangeQuery *self, NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(self, field, lowerTerm, upperTerm, includeLower, includeUpper, nil);
}

OrgApacheLuceneSearchTermRangeQuery *new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermRangeQuery, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_, field, lowerTerm, upperTerm, includeLower, includeUpper)
}

OrgApacheLuceneSearchTermRangeQuery *create_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermRangeQuery, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_, field, lowerTerm, upperTerm, includeLower, includeUpper)
}

void OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(OrgApacheLuceneSearchTermRangeQuery *self, NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  OrgApacheLuceneSearchMultiTermQuery_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->lowerTerm_, lowerTerm);
  JreStrongAssign(&self->upperTerm_, upperTerm);
  self->includeLower_ = includeLower;
  self->includeUpper_ = includeUpper;
  JreStrongAssign(&self->collator_, collator);
}

OrgApacheLuceneSearchTermRangeQuery *new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermRangeQuery, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_, field, lowerTerm, upperTerm, includeLower, includeUpper, collator)
}

OrgApacheLuceneSearchTermRangeQuery *create_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermRangeQuery, initWithNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_, field, lowerTerm, upperTerm, includeLower, includeUpper, collator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermRangeQuery)

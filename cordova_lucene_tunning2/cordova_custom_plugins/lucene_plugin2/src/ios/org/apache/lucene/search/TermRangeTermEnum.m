//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/search/TermRangeTermEnum.java
//

#include "J2ObjC_source.h"
#include "java/text/Collator.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermEnum.h"
#include "org/apache/lucene/search/FilteredTermEnum.h"
#include "org/apache/lucene/search/TermRangeTermEnum.h"
#include "org/apache/lucene/util/StringHelper.h"

@interface OrgApacheLuceneSearchTermRangeTermEnum () {
 @public
  JavaTextCollator *collator_;
  jboolean endEnum_;
  NSString *field_;
  NSString *upperTermText_;
  NSString *lowerTermText_;
  jboolean includeLower_;
  jboolean includeUpper_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeTermEnum, collator_, JavaTextCollator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeTermEnum, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeTermEnum, upperTermText_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermRangeTermEnum, lowerTermText_, NSString *)

@implementation OrgApacheLuceneSearchTermRangeTermEnum

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                           withNSString:(NSString *)field
                                           withNSString:(NSString *)lowerTermText
                                           withNSString:(NSString *)upperTermText
                                            withBoolean:(jboolean)includeLower
                                            withBoolean:(jboolean)includeUpper
                                   withJavaTextCollator:(JavaTextCollator *)collator {
  OrgApacheLuceneSearchTermRangeTermEnum_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(self, reader, field, lowerTermText, upperTermText, includeLower, includeUpper, collator);
  return self;
}

- (jfloat)difference {
  return 1.0f;
}

- (jboolean)endEnum {
  return endEnum_;
}

- (jboolean)termCompareWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  if (collator_ == nil) {
    jboolean checkLower = false;
    if (!includeLower_) checkLower = true;
    if (term != nil && [term field] == field_) {
      if (!checkLower || nil == lowerTermText_ || [((NSString *) nil_chk([term text])) compareToWithId:lowerTermText_] > 0) {
        checkLower = false;
        if (upperTermText_ != nil) {
          jint compare = [upperTermText_ compareToWithId:[term text]];
          if ((compare < 0) || (!includeUpper_ && compare == 0)) {
            endEnum_ = true;
            return false;
          }
        }
        return true;
      }
    }
    else {
      endEnum_ = true;
      return false;
    }
    return false;
  }
  else {
    if (term != nil && [term field] == field_) {
      if ((lowerTermText_ == nil || (includeLower_ ? [((JavaTextCollator *) nil_chk(collator_)) compareWithNSString:[term text] withNSString:lowerTermText_] >= 0 : [((JavaTextCollator *) nil_chk(collator_)) compareWithNSString:[term text] withNSString:lowerTermText_] > 0)) && (upperTermText_ == nil || (includeUpper_ ? [((JavaTextCollator *) nil_chk(collator_)) compareWithNSString:[term text] withNSString:upperTermText_] <= 0 : [((JavaTextCollator *) nil_chk(collator_)) compareWithNSString:[term text] withNSString:upperTermText_] < 0))) {
        return true;
      }
      return false;
    }
    endEnum_ = true;
    return false;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withNSString:withNSString:withNSString:withBoolean:withBoolean:withJavaTextCollator:);
  methods[1].selector = @selector(difference);
  methods[2].selector = @selector(endEnum);
  methods[3].selector = @selector(termCompareWithOrgApacheLuceneIndexTerm:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "collator_", "LJavaTextCollator;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "endEnum_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "upperTermText_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lowerTermText_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "includeLower_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "includeUpper_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;LNSString;LNSString;LNSString;ZZLJavaTextCollator;", "LJavaIoIOException;", "termCompare", "LOrgApacheLuceneIndexTerm;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermRangeTermEnum = { "TermRangeTermEnum", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 4, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchTermRangeTermEnum;
}

@end

void OrgApacheLuceneSearchTermRangeTermEnum_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(OrgApacheLuceneSearchTermRangeTermEnum *self, OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *lowerTermText, NSString *upperTermText, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  OrgApacheLuceneSearchFilteredTermEnum_init(self);
  self->collator_ = nil;
  self->endEnum_ = false;
  self->collator_ = collator;
  self->upperTermText_ = upperTermText;
  self->lowerTermText_ = lowerTermText;
  self->includeLower_ = includeLower;
  self->includeUpper_ = includeUpper;
  self->field_ = OrgApacheLuceneUtilStringHelper_internWithNSString_(field);
  if (self->lowerTermText_ == nil) {
    self->lowerTermText_ = @"";
    self->includeLower_ = true;
  }
  if (self->upperTermText_ == nil) {
    self->includeUpper_ = true;
  }
  NSString *startTermText = collator == nil ? self->lowerTermText_ : @"";
  [self setEnumWithOrgApacheLuceneIndexTermEnum:[((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) termsWithOrgApacheLuceneIndexTerm:new_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(self->field_, startTermText)]];
}

OrgApacheLuceneSearchTermRangeTermEnum *new_OrgApacheLuceneSearchTermRangeTermEnum_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *lowerTermText, NSString *upperTermText, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchTermRangeTermEnum, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_, reader, field, lowerTermText, upperTermText, includeLower, includeUpper, collator)
}

OrgApacheLuceneSearchTermRangeTermEnum *create_OrgApacheLuceneSearchTermRangeTermEnum_initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_(OrgApacheLuceneIndexIndexReader *reader, NSString *field, NSString *lowerTermText, NSString *upperTermText, jboolean includeLower, jboolean includeUpper, JavaTextCollator *collator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchTermRangeTermEnum, initWithOrgApacheLuceneIndexIndexReader_withNSString_withNSString_withNSString_withBoolean_withBoolean_withJavaTextCollator_, reader, field, lowerTermText, upperTermText, includeLower, includeUpper, collator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermRangeTermEnum)

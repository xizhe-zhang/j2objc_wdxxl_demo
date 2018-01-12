//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/PerFieldAnalyzerWrapper.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/PerFieldAnalyzerWrapper.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/document/Fieldable.h"

@interface OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer_;
  id<JavaUtilMap> analyzerMap_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper, defaultAnalyzer_, OrgApacheLuceneAnalysisAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper, analyzerMap_, id<JavaUtilMap>)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper__Annotations$0(void);

@implementation OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer {
  OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(self, defaultAnalyzer);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)defaultAnalyzer
                                        withJavaUtilMap:(id<JavaUtilMap>)fieldAnalyzers {
  OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(self, defaultAnalyzer, fieldAnalyzers);
  return self;
}

- (void)addAnalyzerWithNSString:(NSString *)fieldName
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  (void) [((id<JavaUtilMap>) nil_chk(analyzerMap_)) putWithId:fieldName withId:analyzer];
}

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                               withJavaIoReader:(JavaIoReader *)reader {
  OrgApacheLuceneAnalysisAnalyzer *analyzer = [((id<JavaUtilMap>) nil_chk(analyzerMap_)) getWithId:fieldName];
  if (analyzer == nil) {
    analyzer = defaultAnalyzer_;
  }
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) tokenStreamWithNSString:fieldName withJavaIoReader:reader];
}

- (OrgApacheLuceneAnalysisTokenStream *)reusableTokenStreamWithNSString:(NSString *)fieldName
                                                       withJavaIoReader:(JavaIoReader *)reader {
  OrgApacheLuceneAnalysisAnalyzer *analyzer = [((id<JavaUtilMap>) nil_chk(analyzerMap_)) getWithId:fieldName];
  if (analyzer == nil) analyzer = defaultAnalyzer_;
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) reusableTokenStreamWithNSString:fieldName withJavaIoReader:reader];
}

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisAnalyzer *analyzer = [((id<JavaUtilMap>) nil_chk(analyzerMap_)) getWithId:fieldName];
  if (analyzer == nil) analyzer = defaultAnalyzer_;
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) getPositionIncrementGapWithNSString:fieldName];
}

- (jint)getOffsetGapWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field {
  OrgApacheLuceneAnalysisAnalyzer *analyzer = [((id<JavaUtilMap>) nil_chk(analyzerMap_)) getWithId:[((id<OrgApacheLuceneDocumentFieldable>) nil_chk(field)) name]];
  if (analyzer == nil) analyzer = defaultAnalyzer_;
  return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) getOffsetGapWithOrgApacheLuceneDocumentFieldable:field];
}

- (NSString *)description {
  return JreStrcat("$@$@C", @"PerFieldAnalyzerWrapper(", analyzerMap_, @", default=", defaultAnalyzer_, ')');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, 5, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 8, 7, 9, -1, -1, -1 },
    { NULL, "I", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:);
  methods[1].selector = @selector(initWithOrgApacheLuceneAnalysisAnalyzer:withJavaUtilMap:);
  methods[2].selector = @selector(addAnalyzerWithNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[3].selector = @selector(tokenStreamWithNSString:withJavaIoReader:);
  methods[4].selector = @selector(reusableTokenStreamWithNSString:withJavaIoReader:);
  methods[5].selector = @selector(getPositionIncrementGapWithNSString:);
  methods[6].selector = @selector(getOffsetGapWithOrgApacheLuceneDocumentFieldable:);
  methods[7].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "defaultAnalyzer_", "LOrgApacheLuceneAnalysisAnalyzer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "analyzerMap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 15, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisAnalyzer;", "LOrgApacheLuceneAnalysisAnalyzer;LJavaUtilMap;", "(Lorg/apache/lucene/analysis/Analyzer;Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/analysis/Analyzer;>;)V", "addAnalyzer", "LNSString;LOrgApacheLuceneAnalysisAnalyzer;", (void *)&OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper__Annotations$0, "tokenStream", "LNSString;LJavaIoReader;", "reusableTokenStream", "LJavaIoIOException;", "getPositionIncrementGap", "LNSString;", "getOffsetGap", "LOrgApacheLuceneDocumentFieldable;", "toString", "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/analysis/Analyzer;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper = { "PerFieldAnalyzerWrapper", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x11, 8, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper;
}

@end

void OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) {
  OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(self, defaultAnalyzer, nil);
}

OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper *new_OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_, defaultAnalyzer)
}

OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper *create_OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_, defaultAnalyzer)
}

void OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper *self, OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, id<JavaUtilMap> fieldAnalyzers) {
  OrgApacheLuceneAnalysisAnalyzer_init(self);
  self->analyzerMap_ = new_JavaUtilHashMap_init();
  self->defaultAnalyzer_ = defaultAnalyzer;
  if (fieldAnalyzers != nil) {
    [self->analyzerMap_ putAllWithJavaUtilMap:fieldAnalyzers];
  }
}

OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper *new_OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, id<JavaUtilMap> fieldAnalyzers) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_, defaultAnalyzer, fieldAnalyzers)
}

OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper *create_OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper_initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneAnalysisAnalyzer *defaultAnalyzer, id<JavaUtilMap> fieldAnalyzers) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper, initWithOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_, defaultAnalyzer, fieldAnalyzers)
}

IOSObjectArray *OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPerFieldAnalyzerWrapper)

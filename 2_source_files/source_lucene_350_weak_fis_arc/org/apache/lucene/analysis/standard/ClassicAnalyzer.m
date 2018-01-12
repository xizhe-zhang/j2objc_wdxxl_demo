//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/standard/ClassicAnalyzer.java
//

#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "java/io/Reader.h"
#include "java/nio/charset/Charset.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/CharArraySet.h"
#include "org/apache/lucene/analysis/LowerCaseFilter.h"
#include "org/apache/lucene/analysis/ReusableAnalyzerBase.h"
#include "org/apache/lucene/analysis/StopAnalyzer.h"
#include "org/apache/lucene/analysis/StopFilter.h"
#include "org/apache/lucene/analysis/StopwordAnalyzerBase.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/WordlistLoader.h"
#include "org/apache/lucene/analysis/standard/ClassicAnalyzer.h"
#include "org/apache/lucene/analysis/standard/ClassicFilter.h"
#include "org/apache/lucene/analysis/standard/ClassicTokenizer.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisStandardClassicAnalyzer () {
 @public
  jint maxTokenLength_;
  jboolean replaceInvalidAcronym_;
}

@end

@interface OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 : OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents {
 @public
  OrgApacheLuceneAnalysisStandardClassicAnalyzer *this$0_;
  OrgApacheLuceneAnalysisStandardClassicTokenizer *val$src_;
}

- (instancetype)initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer:(OrgApacheLuceneAnalysisStandardClassicAnalyzer *)outer$
                   withOrgApacheLuceneAnalysisStandardClassicTokenizer:(OrgApacheLuceneAnalysisStandardClassicTokenizer *)capture$0
                                  withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source
                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)result;

- (jboolean)resetWithJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisStandardClassicAnalyzer_1)

__attribute__((unused)) static void OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 *self, OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result);

__attribute__((unused)) static OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

id<JavaUtilSet> OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET;

@implementation OrgApacheLuceneAnalysisStandardClassicAnalyzer

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                   withJavaUtilSet:(id<JavaUtilSet>)stopWords {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, stopWords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(self, matchVersion);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                    withJavaIoFile:(JavaIoFile *)stopwords {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(self, matchVersion, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)stopwords {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, matchVersion, stopwords);
  return self;
}

- (void)setMaxTokenLengthWithInt:(jint)length {
  maxTokenLength_ = length;
}

- (jint)getMaxTokenLength {
  return maxTokenLength_;
}

- (OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName
                                                                                   withJavaIoReader:(JavaIoReader *)reader {
  OrgApacheLuceneAnalysisStandardClassicTokenizer *src = new_OrgApacheLuceneAnalysisStandardClassicTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(matchVersion_, reader);
  [src setMaxTokenLengthWithInt:maxTokenLength_];
  [src setReplaceInvalidAcronymWithBoolean:replaceInvalidAcronym_];
  OrgApacheLuceneAnalysisTokenStream *tok = new_OrgApacheLuceneAnalysisStandardClassicFilter_initWithOrgApacheLuceneAnalysisTokenStream_(src);
  tok = new_OrgApacheLuceneAnalysisLowerCaseFilter_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisTokenStream_(matchVersion_, tok);
  tok = new_OrgApacheLuceneAnalysisStopFilter_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(matchVersion_, tok, stopwords_);
  return new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, src, src, tok);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 3, 4, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, 4, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents;", 0x4, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilVersion:withJavaUtilSet:);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilVersion:);
  methods[2].selector = @selector(initWithOrgApacheLuceneUtilVersion:withJavaIoFile:);
  methods[3].selector = @selector(initWithOrgApacheLuceneUtilVersion:withJavaIoReader:);
  methods[4].selector = @selector(setMaxTokenLengthWithInt:);
  methods[5].selector = @selector(getMaxTokenLength);
  methods[6].selector = @selector(createComponentsWithNSString:withJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_TOKEN_LENGTH", "I", .constantValue.asInt = OrgApacheLuceneAnalysisStandardClassicAnalyzer_DEFAULT_MAX_TOKEN_LENGTH, 0x19, -1, -1, -1, -1 },
    { "maxTokenLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "replaceInvalidAcronym_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "STOP_WORDS_SET", "LJavaUtilSet;", .constantValue.asLong = 0, 0x19, -1, 10, 11, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilVersion;LJavaUtilSet;", "(Lorg/apache/lucene/util/Version;Ljava/util/Set<*>;)V", "LOrgApacheLuceneUtilVersion;", "LOrgApacheLuceneUtilVersion;LJavaIoFile;", "LJavaIoIOException;", "LOrgApacheLuceneUtilVersion;LJavaIoReader;", "setMaxTokenLength", "I", "createComponents", "LNSString;LJavaIoReader;", &OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET, "Ljava/util/Set<*>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardClassicAnalyzer = { "ClassicAnalyzer", "org.apache.lucene.analysis.standard", ptrTable, methods, fields, 7, 0x11, 7, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisStandardClassicAnalyzer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisStandardClassicAnalyzer class]) {
    OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET = JreLoadStatic(OrgApacheLuceneAnalysisStopAnalyzer, ENGLISH_STOP_WORDS_SET);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisStandardClassicAnalyzer)
  }
}

@end

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) {
  OrgApacheLuceneAnalysisStopwordAnalyzerBase_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, stopWords);
  self->maxTokenLength_ = OrgApacheLuceneAnalysisStandardClassicAnalyzer_DEFAULT_MAX_TOKEN_LENGTH;
  self->replaceInvalidAcronym_ = [((OrgApacheLuceneUtilVersion *) nil_chk(matchVersion)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_24)];
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_, matchVersion, stopWords)
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_, matchVersion, stopWords)
}

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, OrgApacheLuceneAnalysisStandardClassicAnalyzer_STOP_WORDS_SET);
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_, matchVersion)
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_, matchVersion)
}

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoFile_withJavaNioCharsetCharset_(stopwords, JreLoadStatic(OrgApacheLuceneUtilIOUtils, CHARSET_UTF_8)), matchVersion));
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoFile_, matchVersion, stopwords)
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoFile_, matchVersion, stopwords)
}

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneUtilVersion_(stopwords, matchVersion));
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoReader_, matchVersion, stopwords)
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoReader_, matchVersion, stopwords)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardClassicAnalyzer)

@implementation OrgApacheLuceneAnalysisStandardClassicAnalyzer_1

- (instancetype)initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer:(OrgApacheLuceneAnalysisStandardClassicAnalyzer *)outer$
                   withOrgApacheLuceneAnalysisStandardClassicTokenizer:(OrgApacheLuceneAnalysisStandardClassicTokenizer *)capture$0
                                  withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source
                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)result {
  OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, outer$, capture$0, source, result);
  return self;
}

- (jboolean)resetWithJavaIoReader:(JavaIoReader *)reader {
  [((OrgApacheLuceneAnalysisStandardClassicTokenizer *) nil_chk(val$src_)) setMaxTokenLengthWithInt:this$0_->maxTokenLength_];
  return [super resetWithJavaIoReader:reader];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer:withOrgApacheLuceneAnalysisStandardClassicTokenizer:withOrgApacheLuceneAnalysisTokenizer:withOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(resetWithJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneAnalysisStandardClassicAnalyzer;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$src_", "LOrgApacheLuceneAnalysisStandardClassicTokenizer;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenizer;LOrgApacheLuceneAnalysisTokenStream;", "reset", "LJavaIoReader;", "LJavaIoIOException;", "LOrgApacheLuceneAnalysisStandardClassicAnalyzer;", "createComponentsWithNSString:withJavaIoReader:" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 = { "", "org.apache.lucene.analysis.standard", ptrTable, methods, fields, 7, 0x8018, 2, 2, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneAnalysisStandardClassicAnalyzer_1;
}

@end

void OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 *self, OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  self->this$0_ = outer$;
  self->val$src_ = capture$0;
  OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, source, result);
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 *new_OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer_1, initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_, outer$, capture$0, source, result)
}

OrgApacheLuceneAnalysisStandardClassicAnalyzer_1 *create_OrgApacheLuceneAnalysisStandardClassicAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardClassicAnalyzer *outer$, OrgApacheLuceneAnalysisStandardClassicTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicAnalyzer_1, initWithOrgApacheLuceneAnalysisStandardClassicAnalyzer_withOrgApacheLuceneAnalysisStandardClassicTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_, outer$, capture$0, source, result)
}

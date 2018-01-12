//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/standard/StandardAnalyzer.java
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
#include "org/apache/lucene/analysis/standard/StandardAnalyzer.h"
#include "org/apache/lucene/analysis/standard/StandardFilter.h"
#include "org/apache/lucene/analysis/standard/StandardTokenizer.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"

@interface OrgApacheLuceneAnalysisStandardStandardAnalyzer () {
 @public
  jint maxTokenLength_;
  jboolean replaceInvalidAcronym_;
}

@end

@interface OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 : OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents {
 @public
  OrgApacheLuceneAnalysisStandardStandardAnalyzer *this$0_;
  OrgApacheLuceneAnalysisStandardStandardTokenizer *val$src_;
}

- (instancetype)initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer:(OrgApacheLuceneAnalysisStandardStandardAnalyzer *)outer$
                   withOrgApacheLuceneAnalysisStandardStandardTokenizer:(OrgApacheLuceneAnalysisStandardStandardTokenizer *)capture$0
                                   withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source
                                 withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)result;

- (jboolean)resetWithJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisStandardStandardAnalyzer_1)

__attribute__((unused)) static void OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 *self, OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisStandardStandardTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result);

__attribute__((unused)) static OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisStandardStandardTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 *create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisStandardStandardTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisStandardStandardAnalyzer)

id<JavaUtilSet> OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET;

@implementation OrgApacheLuceneAnalysisStandardStandardAnalyzer

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                   withJavaUtilSet:(id<JavaUtilSet>)stopWords {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, stopWords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_(self, matchVersion);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                    withJavaIoFile:(JavaIoFile *)stopwords {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(self, matchVersion, stopwords);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)matchVersion
                                  withJavaIoReader:(JavaIoReader *)stopwords {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(self, matchVersion, stopwords);
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
  OrgApacheLuceneAnalysisStandardStandardTokenizer *src = new_OrgApacheLuceneAnalysisStandardStandardTokenizer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(matchVersion_, reader);
  [src setMaxTokenLengthWithInt:maxTokenLength_];
  [src setReplaceInvalidAcronymWithBoolean:replaceInvalidAcronym_];
  OrgApacheLuceneAnalysisTokenStream *tok = new_OrgApacheLuceneAnalysisStandardStandardFilter_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisTokenStream_(matchVersion_, src);
  tok = new_OrgApacheLuceneAnalysisLowerCaseFilter_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisTokenStream_(matchVersion_, tok);
  tok = new_OrgApacheLuceneAnalysisStopFilter_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(matchVersion_, tok, stopwords_);
  return new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, src, src, tok);
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
    { "DEFAULT_MAX_TOKEN_LENGTH", "I", .constantValue.asInt = OrgApacheLuceneAnalysisStandardStandardAnalyzer_DEFAULT_MAX_TOKEN_LENGTH, 0x19, -1, -1, -1, -1 },
    { "maxTokenLength_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "replaceInvalidAcronym_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "STOP_WORDS_SET", "LJavaUtilSet;", .constantValue.asLong = 0, 0x19, -1, 10, 11, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilVersion;LJavaUtilSet;", "(Lorg/apache/lucene/util/Version;Ljava/util/Set<*>;)V", "LOrgApacheLuceneUtilVersion;", "LOrgApacheLuceneUtilVersion;LJavaIoFile;", "LJavaIoIOException;", "LOrgApacheLuceneUtilVersion;LJavaIoReader;", "setMaxTokenLength", "I", "createComponents", "LNSString;LJavaIoReader;", &OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET, "Ljava/util/Set<*>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardStandardAnalyzer = { "StandardAnalyzer", "org.apache.lucene.analysis.standard", ptrTable, methods, fields, 7, 0x11, 7, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisStandardStandardAnalyzer;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisStandardStandardAnalyzer class]) {
    OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET = JreLoadStatic(OrgApacheLuceneAnalysisStopAnalyzer, ENGLISH_STOP_WORDS_SET);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisStandardStandardAnalyzer)
  }
}

@end

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) {
  OrgApacheLuceneAnalysisStopwordAnalyzerBase_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, stopWords);
  self->maxTokenLength_ = OrgApacheLuceneAnalysisStandardStandardAnalyzer_DEFAULT_MAX_TOKEN_LENGTH;
  self->replaceInvalidAcronym_ = [((OrgApacheLuceneUtilVersion *) nil_chk(matchVersion)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadEnum(OrgApacheLuceneUtilVersion, LUCENE_24)];
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_, matchVersion, stopWords)
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(OrgApacheLuceneUtilVersion *matchVersion, id<JavaUtilSet> stopWords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_, matchVersion, stopWords)
}

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion) {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, OrgApacheLuceneAnalysisStandardStandardAnalyzer_STOP_WORDS_SET);
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_, matchVersion)
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilVersion *matchVersion) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_, matchVersion)
}

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneUtilVersion_(OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoFile_withJavaNioCharsetCharset_(stopwords, JreLoadStatic(OrgApacheLuceneUtilIOUtils, CHARSET_UTF_8)), matchVersion));
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoFile_, matchVersion, stopwords)
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoFile_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoFile *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoFile_, matchVersion, stopwords)
}

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *self, OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaUtilSet_(self, matchVersion, OrgApacheLuceneAnalysisWordlistLoader_getWordSetWithJavaIoReader_withOrgApacheLuceneUtilVersion_(stopwords, matchVersion));
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoReader_, matchVersion, stopwords)
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer *create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_initWithOrgApacheLuceneUtilVersion_withJavaIoReader_(OrgApacheLuceneUtilVersion *matchVersion, JavaIoReader *stopwords) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer, initWithOrgApacheLuceneUtilVersion_withJavaIoReader_, matchVersion, stopwords)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardStandardAnalyzer)

@implementation OrgApacheLuceneAnalysisStandardStandardAnalyzer_1

- (instancetype)initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer:(OrgApacheLuceneAnalysisStandardStandardAnalyzer *)outer$
                   withOrgApacheLuceneAnalysisStandardStandardTokenizer:(OrgApacheLuceneAnalysisStandardStandardTokenizer *)capture$0
                                   withOrgApacheLuceneAnalysisTokenizer:(OrgApacheLuceneAnalysisTokenizer *)source
                                 withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)result {
  OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, outer$, capture$0, source, result);
  return self;
}

- (jboolean)resetWithJavaIoReader:(JavaIoReader *)reader {
  [((OrgApacheLuceneAnalysisStandardStandardTokenizer *) nil_chk(val$src_)) setMaxTokenLengthWithInt:this$0_->maxTokenLength_];
  return [super resetWithJavaIoReader:reader];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer:withOrgApacheLuceneAnalysisStandardStandardTokenizer:withOrgApacheLuceneAnalysisTokenizer:withOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(resetWithJavaIoReader:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneAnalysisStandardStandardAnalyzer;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$src_", "LOrgApacheLuceneAnalysisStandardStandardTokenizer;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenizer;LOrgApacheLuceneAnalysisTokenStream;", "reset", "LJavaIoReader;", "LJavaIoIOException;", "LOrgApacheLuceneAnalysisStandardStandardAnalyzer;", "createComponentsWithNSString:withJavaIoReader:" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 = { "", "org.apache.lucene.analysis.standard", ptrTable, methods, fields, 7, 0x8018, 2, 2, 4, -1, 5, -1, -1 };
  return &_OrgApacheLuceneAnalysisStandardStandardAnalyzer_1;
}

@end

void OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 *self, OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisStandardStandardTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  self->this$0_ = outer$;
  self->val$src_ = capture$0;
  OrgApacheLuceneAnalysisReusableAnalyzerBase_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(self, source, result);
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 *new_OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisStandardStandardTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer_1, initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_, outer$, capture$0, source, result)
}

OrgApacheLuceneAnalysisStandardStandardAnalyzer_1 *create_OrgApacheLuceneAnalysisStandardStandardAnalyzer_1_initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisStandardStandardAnalyzer *outer$, OrgApacheLuceneAnalysisStandardStandardTokenizer *capture$0, OrgApacheLuceneAnalysisTokenizer *source, OrgApacheLuceneAnalysisTokenStream *result) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardStandardAnalyzer_1, initWithOrgApacheLuceneAnalysisStandardStandardAnalyzer_withOrgApacheLuceneAnalysisStandardStandardTokenizer_withOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_, outer$, capture$0, source, result)
}

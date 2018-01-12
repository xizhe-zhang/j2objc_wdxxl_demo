//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene_fis-core-grouping-3.5.0-sources.jar!org/apache/lucene/analysis/Analyzer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/document/Fieldable.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/util/CloseableThreadLocal.h"

@interface OrgApacheLuceneAnalysisAnalyzer () {
 @public
  OrgApacheLuceneUtilCloseableThreadLocal *tokenStreams_;
}

- (jboolean)assertFinal;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisAnalyzer, tokenStreams_, OrgApacheLuceneUtilCloseableThreadLocal *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisAnalyzer_assertFinal(OrgApacheLuceneAnalysisAnalyzer *self);

@implementation OrgApacheLuceneAnalysisAnalyzer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisAnalyzer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jboolean)assertFinal {
  return OrgApacheLuceneAnalysisAnalyzer_assertFinal(self);
}

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithNSString:(NSString *)fieldName
                                               withJavaIoReader:(JavaIoReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneAnalysisTokenStream *)reusableTokenStreamWithNSString:(NSString *)fieldName
                                                       withJavaIoReader:(JavaIoReader *)reader {
  return [self tokenStreamWithNSString:fieldName withJavaIoReader:reader];
}

- (id)getPreviousTokenStream {
  @try {
    return [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(tokenStreams_)) get];
  }
  @catch (JavaLangNullPointerException *npe) {
    if (tokenStreams_ == nil) {
      @throw new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Analyzer is closed");
    }
    else {
      @throw npe;
    }
  }
}

- (void)setPreviousTokenStreamWithId:(id)obj {
  @try {
    [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(tokenStreams_)) setWithId:obj];
  }
  @catch (JavaLangNullPointerException *npe) {
    if (tokenStreams_ == nil) {
      @throw new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Analyzer is closed");
    }
    else {
      @throw npe;
    }
  }
}

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName {
  return 0;
}

- (jint)getOffsetGapWithOrgApacheLuceneDocumentFieldable:(id<OrgApacheLuceneDocumentFieldable>)field {
  if ([((id<OrgApacheLuceneDocumentFieldable>) nil_chk(field)) isTokenized]) return 1;
  else return 0;
}

- (void)close {
  [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(tokenStreams_)) close];
  tokenStreams_ = nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 2, 1, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(assertFinal);
  methods[2].selector = @selector(tokenStreamWithNSString:withJavaIoReader:);
  methods[3].selector = @selector(reusableTokenStreamWithNSString:withJavaIoReader:);
  methods[4].selector = @selector(getPreviousTokenStream);
  methods[5].selector = @selector(setPreviousTokenStreamWithId:);
  methods[6].selector = @selector(getPositionIncrementGapWithNSString:);
  methods[7].selector = @selector(getOffsetGapWithOrgApacheLuceneDocumentFieldable:);
  methods[8].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "tokenStreams_", "LOrgApacheLuceneUtilCloseableThreadLocal;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
  };
  static const void *ptrTable[] = { "tokenStream", "LNSString;LJavaIoReader;", "reusableTokenStream", "LJavaIoIOException;", "setPreviousTokenStream", "LNSObject;", "getPositionIncrementGap", "LNSString;", "getOffsetGap", "LOrgApacheLuceneDocumentFieldable;", "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisAnalyzer = { "Analyzer", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x401, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisAnalyzer;
}

@end

void OrgApacheLuceneAnalysisAnalyzer_init(OrgApacheLuceneAnalysisAnalyzer *self) {
  NSObject_init(self);
  self->tokenStreams_ = new_OrgApacheLuceneUtilCloseableThreadLocal_init();
  JreAssert(OrgApacheLuceneAnalysisAnalyzer_assertFinal(self), @"org/apache/lucene/analysis/Analyzer.java:45 condition failed: assert assertFinal();");
}

jboolean OrgApacheLuceneAnalysisAnalyzer_assertFinal(OrgApacheLuceneAnalysisAnalyzer *self) {
  @try {
    IOSClass *clazz = [self java_getClass];
    if (![clazz desiredAssertionStatus]) return true;
    JreAssert([clazz isAnonymousClass] || ([clazz getModifiers] & (JavaLangReflectModifier_FINAL | JavaLangReflectModifier_PRIVATE)) != 0 || (JavaLangReflectModifier_isFinalWithInt_([((JavaLangReflectMethod *) nil_chk(([clazz getMethod:@"tokenStream" parameterTypes:[IOSObjectArray newArrayWithObjects:(id[]){ NSString_class_(), JavaIoReader_class_() } count:2 type:IOSClass_class_()]]))) getModifiers]) && JavaLangReflectModifier_isFinalWithInt_([((JavaLangReflectMethod *) nil_chk(([clazz getMethod:@"reusableTokenStream" parameterTypes:[IOSObjectArray newArrayWithObjects:(id[]){ NSString_class_(), JavaIoReader_class_() } count:2 type:IOSClass_class_()]]))) getModifiers])), @"Analyzer implementation classes or at least their tokenStream() and reusableTokenStream() implementations must be final");
    return true;
  }
  @catch (JavaLangNoSuchMethodException *nsme) {
    return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisAnalyzer)

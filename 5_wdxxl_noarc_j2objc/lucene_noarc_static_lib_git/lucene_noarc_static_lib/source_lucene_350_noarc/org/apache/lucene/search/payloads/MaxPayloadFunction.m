//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/payloads/MaxPayloadFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/apache/lucene/search/payloads/MaxPayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"

@implementation OrgApacheLuceneSearchPayloadsMaxPayloadFunction

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore {
  if (numPayloadsSeen == 0) {
    return currentPayloadScore;
  }
  else {
    return JavaLangMath_maxWithFloat_withFloat_(currentPayloadScore, currentScore);
  }
}

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore {
  return numPayloadsSeen > 0 ? payloadScore : 1;
}

- (OrgApacheLuceneSearchExplanation *)explainWithInt:(jint)doc
                                             withInt:(jint)numPayloadsSeen
                                           withFloat:(jfloat)payloadScore {
  OrgApacheLuceneSearchExplanation *expl = create_OrgApacheLuceneSearchExplanation_init();
  jfloat maxPayloadScore = (numPayloadsSeen > 0 ? payloadScore : 1);
  [expl setValueWithFloat:maxPayloadScore];
  [expl setDescriptionWithNSString:@"MaxPayloadFunction(...)"];
  return expl;
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + ((jint) [[self java_getClass] hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self java_getClass] != [obj java_getClass]) return false;
  return true;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchExplanation;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(currentScoreWithInt:withNSString:withInt:withInt:withInt:withFloat:withFloat:);
  methods[2].selector = @selector(docScoreWithInt:withNSString:withInt:withFloat:);
  methods[3].selector = @selector(explainWithInt:withInt:withFloat:);
  methods[4].selector = @selector(hash);
  methods[5].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "currentScore", "ILNSString;IIIFF", "docScore", "ILNSString;IF", "explain", "IIF", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsMaxPayloadFunction = { "MaxPayloadFunction", "org.apache.lucene.search.payloads", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsMaxPayloadFunction;
}

@end

void OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init(OrgApacheLuceneSearchPayloadsMaxPayloadFunction *self) {
  OrgApacheLuceneSearchPayloadsPayloadFunction_init(self);
}

OrgApacheLuceneSearchPayloadsMaxPayloadFunction *new_OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsMaxPayloadFunction, init)
}

OrgApacheLuceneSearchPayloadsMaxPayloadFunction *create_OrgApacheLuceneSearchPayloadsMaxPayloadFunction_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsMaxPayloadFunction, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsMaxPayloadFunction)

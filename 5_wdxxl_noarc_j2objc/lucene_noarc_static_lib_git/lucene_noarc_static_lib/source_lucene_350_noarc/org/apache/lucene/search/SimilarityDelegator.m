//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/search/SimilarityDelegator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/search/Similarity.h"
#include "org/apache/lucene/search/SimilarityDelegator.h"

@interface OrgApacheLuceneSearchSimilarityDelegator () {
 @public
  OrgApacheLuceneSearchSimilarity *delegee_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSimilarityDelegator, delegee_, OrgApacheLuceneSearchSimilarity *)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchSimilarityDelegator__Annotations$0(void);

@implementation OrgApacheLuceneSearchSimilarityDelegator

- (instancetype)initWithOrgApacheLuceneSearchSimilarity:(OrgApacheLuceneSearchSimilarity *)delegee {
  OrgApacheLuceneSearchSimilarityDelegator_initWithOrgApacheLuceneSearchSimilarity_(self, delegee);
  return self;
}

- (jfloat)computeNormWithNSString:(NSString *)fieldName
withOrgApacheLuceneIndexFieldInvertState:(OrgApacheLuceneIndexFieldInvertState *)state {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) computeNormWithNSString:fieldName withOrgApacheLuceneIndexFieldInvertState:state];
}

- (jfloat)queryNormWithFloat:(jfloat)sumOfSquaredWeights {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) queryNormWithFloat:sumOfSquaredWeights];
}

- (jfloat)tfWithFloat:(jfloat)freq {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) tfWithFloat:freq];
}

- (jfloat)sloppyFreqWithInt:(jint)distance {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) sloppyFreqWithInt:distance];
}

- (jfloat)idfWithInt:(jint)docFreq
             withInt:(jint)numDocs {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) idfWithInt:docFreq withInt:numDocs];
}

- (jfloat)coordWithInt:(jint)overlap
               withInt:(jint)maxOverlap {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) coordWithInt:overlap withInt:maxOverlap];
}

- (jfloat)scorePayloadWithInt:(jint)docId
                 withNSString:(NSString *)fieldName
                      withInt:(jint)start
                      withInt:(jint)end
                withByteArray:(IOSByteArray *)payload
                      withInt:(jint)offset
                      withInt:(jint)length {
  return [((OrgApacheLuceneSearchSimilarity *) nil_chk(delegee_)) scorePayloadWithInt:docId withNSString:fieldName withInt:start withInt:end withByteArray:payload withInt:offset withInt:length];
}

- (void)dealloc {
  RELEASE_(delegee_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 10, 9, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 11, 12, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSimilarity:);
  methods[1].selector = @selector(computeNormWithNSString:withOrgApacheLuceneIndexFieldInvertState:);
  methods[2].selector = @selector(queryNormWithFloat:);
  methods[3].selector = @selector(tfWithFloat:);
  methods[4].selector = @selector(sloppyFreqWithInt:);
  methods[5].selector = @selector(idfWithInt:withInt:);
  methods[6].selector = @selector(coordWithInt:withInt:);
  methods[7].selector = @selector(scorePayloadWithInt:withNSString:withInt:withInt:withByteArray:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegee_", "LOrgApacheLuceneSearchSimilarity;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSimilarity;", "computeNorm", "LNSString;LOrgApacheLuceneIndexFieldInvertState;", "queryNorm", "F", "tf", "sloppyFreq", "I", "idf", "II", "coord", "scorePayload", "ILNSString;II[BII", (void *)&OrgApacheLuceneSearchSimilarityDelegator__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSimilarityDelegator = { "SimilarityDelegator", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, -1, -1, -1, 13 };
  return &_OrgApacheLuceneSearchSimilarityDelegator;
}

@end

void OrgApacheLuceneSearchSimilarityDelegator_initWithOrgApacheLuceneSearchSimilarity_(OrgApacheLuceneSearchSimilarityDelegator *self, OrgApacheLuceneSearchSimilarity *delegee) {
  OrgApacheLuceneSearchSimilarity_init(self);
  JreStrongAssign(&self->delegee_, delegee);
}

OrgApacheLuceneSearchSimilarityDelegator *new_OrgApacheLuceneSearchSimilarityDelegator_initWithOrgApacheLuceneSearchSimilarity_(OrgApacheLuceneSearchSimilarity *delegee) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSimilarityDelegator, initWithOrgApacheLuceneSearchSimilarity_, delegee)
}

OrgApacheLuceneSearchSimilarityDelegator *create_OrgApacheLuceneSearchSimilarityDelegator_initWithOrgApacheLuceneSearchSimilarity_(OrgApacheLuceneSearchSimilarity *delegee) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSimilarityDelegator, initWithOrgApacheLuceneSearchSimilarity_, delegee)
}

IOSObjectArray *OrgApacheLuceneSearchSimilarityDelegator__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSimilarityDelegator)

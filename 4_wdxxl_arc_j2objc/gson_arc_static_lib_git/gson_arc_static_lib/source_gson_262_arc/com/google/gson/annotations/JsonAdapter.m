//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:gson-2.6.2-sources.jar!com/google/gson/annotations/JsonAdapter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/annotations/JsonAdapter.h"
#include "java/lang/annotation/Annotation.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

__attribute__((unused)) static IOSObjectArray *ComGoogleGsonAnnotationsJsonAdapter__Annotations$0(void);

@implementation ComGoogleGsonAnnotationsJsonAdapter

@synthesize value = value_;

- (IOSClass *)annotationType {
  return ComGoogleGsonAnnotationsJsonAdapter_class_();
}

- (NSString *)description {
  return [NSString stringWithFormat:@"@com.google.gson.annotations.JsonAdapter(value=%@)", value_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LIOSClass;", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(value);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "value_", "LIOSClass;", .constantValue.asLong = 0, 0x1000, -1, -1, 0, -1 },
  };
  static const void *ptrTable[] = { "Ljava/lang/Class<*>;", (void *)&ComGoogleGsonAnnotationsJsonAdapter__Annotations$0 };
  static const J2ObjcClassInfo _ComGoogleGsonAnnotationsJsonAdapter = { "JsonAdapter", "com.google.gson.annotations", ptrTable, methods, fields, 7, 0x2609, 1, 1, -1, -1, -1, -1, 1 };
  return &_ComGoogleGsonAnnotationsJsonAdapter;
}

@end

id<ComGoogleGsonAnnotationsJsonAdapter> create_ComGoogleGsonAnnotationsJsonAdapter(IOSClass *value) {
  ComGoogleGsonAnnotationsJsonAdapter *self = AUTORELEASE([[ComGoogleGsonAnnotationsJsonAdapter alloc] init]);
  self->value_ = RETAIN_(value);
  return self;
}

IOSObjectArray *ComGoogleGsonAnnotationsJsonAdapter__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangAnnotationRetention(JreLoadEnum(JavaLangAnnotationRetentionPolicy, RUNTIME)), create_JavaLangAnnotationTarget([IOSObjectArray newArrayWithObjects:(id[]){ JreLoadEnum(JavaLangAnnotationElementType, TYPE), JreLoadEnum(JavaLangAnnotationElementType, FIELD) } count:2 type:JavaLangAnnotationElementType_class_()]) } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleGsonAnnotationsJsonAdapter)

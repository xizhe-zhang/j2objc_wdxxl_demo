//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/text/translate/OctalUnescaper.java
//

#include "J2ObjC_source.h"
#include "java/io/Writer.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/commons/lang3/text/translate/CharSequenceTranslator.h"
#include "org/apache/commons/lang3/text/translate/OctalUnescaper.h"

@interface OrgApacheCommonsLang3TextTranslateOctalUnescaper ()

- (jboolean)isOctalDigitWithChar:(jchar)ch;

- (jboolean)isZeroToThreeWithChar:(jchar)ch;

@end

__attribute__((unused)) static jboolean OrgApacheCommonsLang3TextTranslateOctalUnescaper_isOctalDigitWithChar_(OrgApacheCommonsLang3TextTranslateOctalUnescaper *self, jchar ch);

__attribute__((unused)) static jboolean OrgApacheCommonsLang3TextTranslateOctalUnescaper_isZeroToThreeWithChar_(OrgApacheCommonsLang3TextTranslateOctalUnescaper *self, jchar ch);

@implementation OrgApacheCommonsLang3TextTranslateOctalUnescaper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheCommonsLang3TextTranslateOctalUnescaper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)translateWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                  withInt:(jint)index
                         withJavaIoWriter:(JavaIoWriter *)outArg {
  jint remaining = [((id<JavaLangCharSequence>) nil_chk(input)) java_length] - index - 1;
  JavaLangStringBuilder *builder = new_JavaLangStringBuilder_init();
  if ([input charAtWithInt:index] == '\\' && remaining > 0 && OrgApacheCommonsLang3TextTranslateOctalUnescaper_isOctalDigitWithChar_(self, [input charAtWithInt:index + 1])) {
    jint next = index + 1;
    jint next2 = index + 2;
    jint next3 = index + 3;
    (void) [builder appendWithChar:[input charAtWithInt:next]];
    if (remaining > 1 && OrgApacheCommonsLang3TextTranslateOctalUnescaper_isOctalDigitWithChar_(self, [input charAtWithInt:next2])) {
      (void) [builder appendWithChar:[input charAtWithInt:next2]];
      if (remaining > 2 && OrgApacheCommonsLang3TextTranslateOctalUnescaper_isZeroToThreeWithChar_(self, [input charAtWithInt:next]) && OrgApacheCommonsLang3TextTranslateOctalUnescaper_isOctalDigitWithChar_(self, [input charAtWithInt:next3])) {
        (void) [builder appendWithChar:[input charAtWithInt:next3]];
      }
    }
    [((JavaIoWriter *) nil_chk(outArg)) writeWithInt:JavaLangInteger_parseIntWithNSString_withInt_([builder description], 8)];
    return 1 + [builder java_length];
  }
  return 0;
}

- (jboolean)isOctalDigitWithChar:(jchar)ch {
  return OrgApacheCommonsLang3TextTranslateOctalUnescaper_isOctalDigitWithChar_(self, ch);
}

- (jboolean)isZeroToThreeWithChar:(jchar)ch {
  return OrgApacheCommonsLang3TextTranslateOctalUnescaper_isZeroToThreeWithChar_(self, ch);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "Z", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 5, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(translateWithJavaLangCharSequence:withInt:withJavaIoWriter:);
  methods[2].selector = @selector(isOctalDigitWithChar:);
  methods[3].selector = @selector(isZeroToThreeWithChar:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "translate", "LJavaLangCharSequence;ILJavaIoWriter;", "LJavaIoIOException;", "isOctalDigit", "C", "isZeroToThree" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3TextTranslateOctalUnescaper = { "OctalUnescaper", "org.apache.commons.lang3.text.translate", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheCommonsLang3TextTranslateOctalUnescaper;
}

@end

void OrgApacheCommonsLang3TextTranslateOctalUnescaper_init(OrgApacheCommonsLang3TextTranslateOctalUnescaper *self) {
  OrgApacheCommonsLang3TextTranslateCharSequenceTranslator_init(self);
}

OrgApacheCommonsLang3TextTranslateOctalUnescaper *new_OrgApacheCommonsLang3TextTranslateOctalUnescaper_init() {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3TextTranslateOctalUnescaper, init)
}

OrgApacheCommonsLang3TextTranslateOctalUnescaper *create_OrgApacheCommonsLang3TextTranslateOctalUnescaper_init() {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3TextTranslateOctalUnescaper, init)
}

jboolean OrgApacheCommonsLang3TextTranslateOctalUnescaper_isOctalDigitWithChar_(OrgApacheCommonsLang3TextTranslateOctalUnescaper *self, jchar ch) {
  return ch >= '0' && ch <= '7';
}

jboolean OrgApacheCommonsLang3TextTranslateOctalUnescaper_isZeroToThreeWithChar_(OrgApacheCommonsLang3TextTranslateOctalUnescaper *self, jchar ch) {
  return ch >= '0' && ch <= '3';
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3TextTranslateOctalUnescaper)

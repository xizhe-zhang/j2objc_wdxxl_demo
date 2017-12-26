//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/analysis/PorterStemmer.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/FileInputStream.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Character.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/PorterStemmer.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneAnalysisPorterStemmer () {
 @public
  IOSCharArray *b_;
  jint i_;
  jint j_;
  jint k_;
  jint k0_;
  jboolean dirty_;
}

- (jboolean)consWithInt:(jint)i;

- (jint)m;

- (jboolean)vowelinstem;

- (jboolean)doublecWithInt:(jint)j;

- (jboolean)cvcWithInt:(jint)i;

- (jboolean)endsWithNSString:(NSString *)s;

- (void)step1;

- (void)step2;

- (void)step3;

- (void)step4;

- (void)step5;

- (void)step6;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPorterStemmer, b_, IOSCharArray *)

inline jint OrgApacheLuceneAnalysisPorterStemmer_get_INITIAL_SIZE(void);
#define OrgApacheLuceneAnalysisPorterStemmer_INITIAL_SIZE 50
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisPorterStemmer, INITIAL_SIZE, jint)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(OrgApacheLuceneAnalysisPorterStemmer *self, jint i);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisPorterStemmer_m(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisPorterStemmer_vowelinstem(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisPorterStemmer_doublecWithInt_(OrgApacheLuceneAnalysisPorterStemmer *self, jint j);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisPorterStemmer_cvcWithInt_(OrgApacheLuceneAnalysisPorterStemmer *self, jint i);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(OrgApacheLuceneAnalysisPorterStemmer *self, NSString *s);

__attribute__((unused)) static void OrgApacheLuceneAnalysisPorterStemmer_step1(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisPorterStemmer_step2(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisPorterStemmer_step3(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisPorterStemmer_step4(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisPorterStemmer_step5(OrgApacheLuceneAnalysisPorterStemmer *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisPorterStemmer_step6(OrgApacheLuceneAnalysisPorterStemmer *self);

@implementation OrgApacheLuceneAnalysisPorterStemmer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPorterStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)reset {
  i_ = 0;
  dirty_ = false;
}

- (void)addWithChar:(jchar)ch {
  if (((IOSCharArray *) nil_chk(b_))->size_ <= i_) {
    b_ = OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_(b_, i_ + 1);
  }
  *IOSCharArray_GetRef(nil_chk(b_), i_++) = ch;
}

- (NSString *)description {
  return [NSString java_stringWithCharacters:b_ offset:0 length:i_];
}

- (jint)getResultLength {
  return i_;
}

- (IOSCharArray *)getResultBuffer {
  return b_;
}

- (jboolean)consWithInt:(jint)i {
  return OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i);
}

- (jint)m {
  return OrgApacheLuceneAnalysisPorterStemmer_m(self);
}

- (jboolean)vowelinstem {
  return OrgApacheLuceneAnalysisPorterStemmer_vowelinstem(self);
}

- (jboolean)doublecWithInt:(jint)j {
  return OrgApacheLuceneAnalysisPorterStemmer_doublecWithInt_(self, j);
}

- (jboolean)cvcWithInt:(jint)i {
  return OrgApacheLuceneAnalysisPorterStemmer_cvcWithInt_(self, i);
}

- (jboolean)endsWithNSString:(NSString *)s {
  return OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, s);
}

- (void)settoWithNSString:(NSString *)s {
  jint l = [((NSString *) nil_chk(s)) java_length];
  jint o = j_ + 1;
  for (jint i = 0; i < l; i++) *IOSCharArray_GetRef(nil_chk(b_), o + i) = [s charAtWithInt:i];
  k_ = j_ + l;
  dirty_ = true;
}

- (void)rWithNSString:(NSString *)s {
  if (OrgApacheLuceneAnalysisPorterStemmer_m(self) > 0) [self settoWithNSString:s];
}

- (void)step1 {
  OrgApacheLuceneAnalysisPorterStemmer_step1(self);
}

- (void)step2 {
  OrgApacheLuceneAnalysisPorterStemmer_step2(self);
}

- (void)step3 {
  OrgApacheLuceneAnalysisPorterStemmer_step3(self);
}

- (void)step4 {
  OrgApacheLuceneAnalysisPorterStemmer_step4(self);
}

- (void)step5 {
  OrgApacheLuceneAnalysisPorterStemmer_step5(self);
}

- (void)step6 {
  OrgApacheLuceneAnalysisPorterStemmer_step6(self);
}

- (NSString *)stemWithNSString:(NSString *)s {
  if ([self stemWithCharArray:[((NSString *) nil_chk(s)) java_toCharArray] withInt:[s java_length]]) return [self description];
  else return s;
}

- (jboolean)stemWithCharArray:(IOSCharArray *)word {
  return [self stemWithCharArray:word withInt:((IOSCharArray *) nil_chk(word))->size_];
}

- (jboolean)stemWithCharArray:(IOSCharArray *)wordBuffer
                      withInt:(jint)offset
                      withInt:(jint)wordLen {
  [self reset];
  if (((IOSCharArray *) nil_chk(b_))->size_ < wordLen) {
    b_ = [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(wordLen, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
  }
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(wordBuffer, offset, b_, 0, wordLen);
  i_ = wordLen;
  return [self stemWithInt:0];
}

- (jboolean)stemWithCharArray:(IOSCharArray *)word
                      withInt:(jint)wordLen {
  return [self stemWithCharArray:word withInt:0 withInt:wordLen];
}

- (jboolean)stem {
  return [self stemWithInt:0];
}

- (jboolean)stemWithInt:(jint)i0 {
  k_ = i_ - 1;
  k0_ = i0;
  if (k_ > k0_ + 1) {
    OrgApacheLuceneAnalysisPorterStemmer_step1(self);
    OrgApacheLuceneAnalysisPorterStemmer_step2(self);
    OrgApacheLuceneAnalysisPorterStemmer_step3(self);
    OrgApacheLuceneAnalysisPorterStemmer_step4(self);
    OrgApacheLuceneAnalysisPorterStemmer_step5(self);
    OrgApacheLuceneAnalysisPorterStemmer_step6(self);
  }
  if (i_ != k_ + 1) dirty_ = true;
  i_ = k_ + 1;
  return dirty_;
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneAnalysisPorterStemmer_mainWithNSStringArray_(args);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, 5, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, 6, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x12, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 9, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 10, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x12, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 8, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 14, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(reset);
  methods[2].selector = @selector(addWithChar:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(getResultLength);
  methods[5].selector = @selector(getResultBuffer);
  methods[6].selector = @selector(consWithInt:);
  methods[7].selector = @selector(m);
  methods[8].selector = @selector(vowelinstem);
  methods[9].selector = @selector(doublecWithInt:);
  methods[10].selector = @selector(cvcWithInt:);
  methods[11].selector = @selector(endsWithNSString:);
  methods[12].selector = @selector(settoWithNSString:);
  methods[13].selector = @selector(rWithNSString:);
  methods[14].selector = @selector(step1);
  methods[15].selector = @selector(step2);
  methods[16].selector = @selector(step3);
  methods[17].selector = @selector(step4);
  methods[18].selector = @selector(step5);
  methods[19].selector = @selector(step6);
  methods[20].selector = @selector(stemWithNSString:);
  methods[21].selector = @selector(stemWithCharArray:);
  methods[22].selector = @selector(stemWithCharArray:withInt:withInt:);
  methods[23].selector = @selector(stemWithCharArray:withInt:);
  methods[24].selector = @selector(stem);
  methods[25].selector = @selector(stemWithInt:);
  methods[26].selector = @selector(mainWithNSStringArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "b_", "[C", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "i_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "j_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "k_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "k0_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dirty_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "INITIAL_SIZE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisPorterStemmer_INITIAL_SIZE, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "C", "toString", "cons", "I", "doublec", "cvc", "ends", "LNSString;", "setto", "r", "stem", "[C", "[CII", "[CI", "main", "[LNSString;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPorterStemmer = { "PorterStemmer", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x0, 27, 7, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisPorterStemmer;
}

@end

void OrgApacheLuceneAnalysisPorterStemmer_init(OrgApacheLuceneAnalysisPorterStemmer *self) {
  NSObject_init(self);
  self->dirty_ = false;
  self->b_ = [IOSCharArray newArrayWithLength:OrgApacheLuceneAnalysisPorterStemmer_INITIAL_SIZE];
  self->i_ = 0;
}

OrgApacheLuceneAnalysisPorterStemmer *new_OrgApacheLuceneAnalysisPorterStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPorterStemmer, init)
}

OrgApacheLuceneAnalysisPorterStemmer *create_OrgApacheLuceneAnalysisPorterStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPorterStemmer, init)
}

jboolean OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(OrgApacheLuceneAnalysisPorterStemmer *self, jint i) {
  switch (IOSCharArray_Get(nil_chk(self->b_), i)) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    return false;
    case 'y':
    return (i == self->k0_) ? true : !OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i - 1);
    default:
    return true;
  }
}

jint OrgApacheLuceneAnalysisPorterStemmer_m(OrgApacheLuceneAnalysisPorterStemmer *self) {
  jint n = 0;
  jint i = self->k0_;
  while (true) {
    if (i > self->j_) return n;
    if (!OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i)) break;
    i++;
  }
  i++;
  while (true) {
    while (true) {
      if (i > self->j_) return n;
      if (OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i)) break;
      i++;
    }
    i++;
    n++;
    while (true) {
      if (i > self->j_) return n;
      if (!OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i)) break;
      i++;
    }
    i++;
  }
}

jboolean OrgApacheLuceneAnalysisPorterStemmer_vowelinstem(OrgApacheLuceneAnalysisPorterStemmer *self) {
  jint i;
  for (i = self->k0_; i <= self->j_; i++) if (!OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i)) return true;
  return false;
}

jboolean OrgApacheLuceneAnalysisPorterStemmer_doublecWithInt_(OrgApacheLuceneAnalysisPorterStemmer *self, jint j) {
  if (j < self->k0_ + 1) return false;
  if (IOSCharArray_Get(nil_chk(self->b_), j) != IOSCharArray_Get(self->b_, j - 1)) return false;
  return OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, j);
}

jboolean OrgApacheLuceneAnalysisPorterStemmer_cvcWithInt_(OrgApacheLuceneAnalysisPorterStemmer *self, jint i) {
  if (i < self->k0_ + 2 || !OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i) || OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i - 1) || !OrgApacheLuceneAnalysisPorterStemmer_consWithInt_(self, i - 2)) return false;
  else {
    jint ch = IOSCharArray_Get(nil_chk(self->b_), i);
    if (ch == 'w' || ch == 'x' || ch == 'y') return false;
  }
  return true;
}

jboolean OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(OrgApacheLuceneAnalysisPorterStemmer *self, NSString *s) {
  jint l = [((NSString *) nil_chk(s)) java_length];
  jint o = self->k_ - l + 1;
  if (o < self->k0_) return false;
  for (jint i = 0; i < l; i++) if (IOSCharArray_Get(nil_chk(self->b_), o + i) != [s charAtWithInt:i]) return false;
  self->j_ = self->k_ - l;
  return true;
}

void OrgApacheLuceneAnalysisPorterStemmer_step1(OrgApacheLuceneAnalysisPorterStemmer *self) {
  if (IOSCharArray_Get(nil_chk(self->b_), self->k_) == 's') {
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"sses")) self->k_ -= 2;
    else if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ies")) [self settoWithNSString:@"i"];
    else if (IOSCharArray_Get(nil_chk(self->b_), self->k_ - 1) != 's') self->k_--;
  }
  if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"eed")) {
    if (OrgApacheLuceneAnalysisPorterStemmer_m(self) > 0) self->k_--;
  }
  else if ((OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ed") || OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ing")) && OrgApacheLuceneAnalysisPorterStemmer_vowelinstem(self)) {
    self->k_ = self->j_;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"at")) [self settoWithNSString:@"ate"];
    else if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"bl")) [self settoWithNSString:@"ble"];
    else if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"iz")) [self settoWithNSString:@"ize"];
    else if (OrgApacheLuceneAnalysisPorterStemmer_doublecWithInt_(self, self->k_)) {
      jint ch = IOSCharArray_Get(nil_chk(self->b_), self->k_--);
      if (ch == 'l' || ch == 's' || ch == 'z') self->k_++;
    }
    else if (OrgApacheLuceneAnalysisPorterStemmer_m(self) == 1 && OrgApacheLuceneAnalysisPorterStemmer_cvcWithInt_(self, self->k_)) [self settoWithNSString:@"e"];
  }
}

void OrgApacheLuceneAnalysisPorterStemmer_step2(OrgApacheLuceneAnalysisPorterStemmer *self) {
  if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"y") && OrgApacheLuceneAnalysisPorterStemmer_vowelinstem(self)) {
    *IOSCharArray_GetRef(nil_chk(self->b_), self->k_) = 'i';
    self->dirty_ = true;
  }
}

void OrgApacheLuceneAnalysisPorterStemmer_step3(OrgApacheLuceneAnalysisPorterStemmer *self) {
  if (self->k_ == self->k0_) return;
  switch (IOSCharArray_Get(nil_chk(self->b_), self->k_ - 1)) {
    case 'a':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ational")) {
      [self rWithNSString:@"ate"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"tional")) {
      [self rWithNSString:@"tion"];
      break;
    }
    break;
    case 'c':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"enci")) {
      [self rWithNSString:@"ence"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"anci")) {
      [self rWithNSString:@"ance"];
      break;
    }
    break;
    case 'e':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"izer")) {
      [self rWithNSString:@"ize"];
      break;
    }
    break;
    case 'l':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"bli")) {
      [self rWithNSString:@"ble"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"alli")) {
      [self rWithNSString:@"al"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"entli")) {
      [self rWithNSString:@"ent"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"eli")) {
      [self rWithNSString:@"e"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ousli")) {
      [self rWithNSString:@"ous"];
      break;
    }
    break;
    case 'o':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ization")) {
      [self rWithNSString:@"ize"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ation")) {
      [self rWithNSString:@"ate"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ator")) {
      [self rWithNSString:@"ate"];
      break;
    }
    break;
    case 's':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"alism")) {
      [self rWithNSString:@"al"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"iveness")) {
      [self rWithNSString:@"ive"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"fulness")) {
      [self rWithNSString:@"ful"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ousness")) {
      [self rWithNSString:@"ous"];
      break;
    }
    break;
    case 't':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"aliti")) {
      [self rWithNSString:@"al"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"iviti")) {
      [self rWithNSString:@"ive"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"biliti")) {
      [self rWithNSString:@"ble"];
      break;
    }
    break;
    case 'g':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"logi")) {
      [self rWithNSString:@"log"];
      break;
    }
  }
}

void OrgApacheLuceneAnalysisPorterStemmer_step4(OrgApacheLuceneAnalysisPorterStemmer *self) {
  switch (IOSCharArray_Get(nil_chk(self->b_), self->k_)) {
    case 'e':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"icate")) {
      [self rWithNSString:@"ic"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ative")) {
      [self rWithNSString:@""];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"alize")) {
      [self rWithNSString:@"al"];
      break;
    }
    break;
    case 'i':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"iciti")) {
      [self rWithNSString:@"ic"];
      break;
    }
    break;
    case 'l':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ical")) {
      [self rWithNSString:@"ic"];
      break;
    }
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ful")) {
      [self rWithNSString:@""];
      break;
    }
    break;
    case 's':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ness")) {
      [self rWithNSString:@""];
      break;
    }
    break;
  }
}

void OrgApacheLuceneAnalysisPorterStemmer_step5(OrgApacheLuceneAnalysisPorterStemmer *self) {
  if (self->k_ == self->k0_) return;
  switch (IOSCharArray_Get(nil_chk(self->b_), self->k_ - 1)) {
    case 'a':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"al")) break;
    return;
    case 'c':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ance")) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ence")) break;
    return;
    case 'e':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"er")) break;
    return;
    case 'i':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ic")) break;
    return;
    case 'l':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"able")) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ible")) break;
    return;
    case 'n':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ant")) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ement")) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ment")) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ent")) break;
    return;
    case 'o':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ion") && self->j_ >= 0 && (IOSCharArray_Get(nil_chk(self->b_), self->j_) == 's' || IOSCharArray_Get(self->b_, self->j_) == 't')) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ou")) break;
    return;
    case 's':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ism")) break;
    return;
    case 't':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ate")) break;
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"iti")) break;
    return;
    case 'u':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ous")) break;
    return;
    case 'v':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ive")) break;
    return;
    case 'z':
    if (OrgApacheLuceneAnalysisPorterStemmer_endsWithNSString_(self, @"ize")) break;
    return;
    default:
    return;
  }
  if (OrgApacheLuceneAnalysisPorterStemmer_m(self) > 1) self->k_ = self->j_;
}

void OrgApacheLuceneAnalysisPorterStemmer_step6(OrgApacheLuceneAnalysisPorterStemmer *self) {
  self->j_ = self->k_;
  if (IOSCharArray_Get(nil_chk(self->b_), self->k_) == 'e') {
    jint a = OrgApacheLuceneAnalysisPorterStemmer_m(self);
    if (a > 1 || (a == 1 && !OrgApacheLuceneAnalysisPorterStemmer_cvcWithInt_(self, self->k_ - 1))) self->k_--;
  }
  if (IOSCharArray_Get(nil_chk(self->b_), self->k_) == 'l' && OrgApacheLuceneAnalysisPorterStemmer_doublecWithInt_(self, self->k_) && OrgApacheLuceneAnalysisPorterStemmer_m(self) > 1) self->k_--;
}

void OrgApacheLuceneAnalysisPorterStemmer_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneAnalysisPorterStemmer_initialize();
  OrgApacheLuceneAnalysisPorterStemmer *s = new_OrgApacheLuceneAnalysisPorterStemmer_init();
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(args))->size_; i++) {
    @try {
      JavaIoInputStream *in = new_JavaIoFileInputStream_initWithNSString_(IOSObjectArray_Get(args, i));
      IOSByteArray *buffer = [IOSByteArray newArrayWithLength:1024];
      jint bufferLen;
      jint offset;
      jint ch;
      bufferLen = [in readWithByteArray:buffer];
      offset = 0;
      [s reset];
      while (true) {
        if (offset < bufferLen) ch = IOSByteArray_Get(buffer, offset++);
        else {
          bufferLen = [in readWithByteArray:buffer];
          offset = 0;
          if (bufferLen < 0) ch = -1;
          else ch = IOSByteArray_Get(buffer, offset++);
        }
        if (JavaLangCharacter_isLetterWithChar_((jchar) ch)) {
          [s addWithChar:JavaLangCharacter_toLowerCaseWithChar_((jchar) ch)];
        }
        else {
          [s stem];
          [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printWithNSString:[s description]];
          [s reset];
          if (ch < 0) break;
          else {
            [JreLoadStatic(JavaLangSystem, out) printWithChar:(jchar) ch];
          }
        }
      }
      [in close];
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"error reading ", IOSObjectArray_Get(args, i))];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPorterStemmer)

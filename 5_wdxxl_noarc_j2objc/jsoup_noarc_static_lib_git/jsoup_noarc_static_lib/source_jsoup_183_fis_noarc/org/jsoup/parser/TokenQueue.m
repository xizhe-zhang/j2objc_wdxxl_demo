//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/parser/TokenQueue.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/StringBuilder.h"
#include "org/jsoup/helper/StringUtil.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/parser/TokenQueue.h"

@interface OrgJsoupParserTokenQueue () {
 @public
  NSString *queue_;
  jint pos_;
}

- (jint)remainingLength;

@end

J2OBJC_FIELD_SETTER(OrgJsoupParserTokenQueue, queue_, NSString *)

inline jchar OrgJsoupParserTokenQueue_get_ESC(void);
#define OrgJsoupParserTokenQueue_ESC '\\'
J2OBJC_STATIC_FIELD_CONSTANT(OrgJsoupParserTokenQueue, ESC, jchar)

__attribute__((unused)) static jint OrgJsoupParserTokenQueue_remainingLength(OrgJsoupParserTokenQueue *self);

@implementation OrgJsoupParserTokenQueue

- (instancetype)initWithNSString:(NSString *)data {
  OrgJsoupParserTokenQueue_initWithNSString_(self, data);
  return self;
}

- (jboolean)isEmpty {
  return OrgJsoupParserTokenQueue_remainingLength(self) == 0;
}

- (jint)remainingLength {
  return OrgJsoupParserTokenQueue_remainingLength(self);
}

- (jchar)peek {
  return [self isEmpty] ? 0 : [((NSString *) nil_chk(queue_)) charAtWithInt:pos_];
}

- (void)addFirstWithJavaLangCharacter:(JavaLangCharacter *)c {
  [self addFirstWithNSString:[((JavaLangCharacter *) nil_chk(c)) description]];
}

- (void)addFirstWithNSString:(NSString *)seq {
  JreStrongAssign(&queue_, JreStrcat("$$", seq, [((NSString *) nil_chk(queue_)) java_substring:pos_]));
  pos_ = 0;
}

- (jboolean)matchesWithNSString:(NSString *)seq {
  return [((NSString *) nil_chk(queue_)) java_regionMatches:true thisOffset:pos_ aString:seq otherOffset:0 count:[((NSString *) nil_chk(seq)) java_length]];
}

- (jboolean)matchesCSWithNSString:(NSString *)seq {
  return [((NSString *) nil_chk(queue_)) java_hasPrefix:seq offset:pos_];
}

- (jboolean)matchesAnyWithNSStringArray:(IOSObjectArray *)seq {
  {
    IOSObjectArray *a__ = seq;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *s = *b__++;
      if ([self matchesWithNSString:s]) return true;
    }
  }
  return false;
}

- (jboolean)matchesAnyWithCharArray:(IOSCharArray *)seq {
  if ([self isEmpty]) return false;
  {
    IOSCharArray *a__ = seq;
    jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
    jchar const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jchar c = *b__++;
      if ([((NSString *) nil_chk(queue_)) charAtWithInt:pos_] == c) return true;
    }
  }
  return false;
}

- (jboolean)matchesStartTag {
  return (OrgJsoupParserTokenQueue_remainingLength(self) >= 2 && [((NSString *) nil_chk(queue_)) charAtWithInt:pos_] == '<' && JavaLangCharacter_isLetterWithChar_([((NSString *) nil_chk(queue_)) charAtWithInt:pos_ + 1]));
}

- (jboolean)matchChompWithNSString:(NSString *)seq {
  if ([self matchesWithNSString:seq]) {
    pos_ += [((NSString *) nil_chk(seq)) java_length];
    return true;
  }
  else {
    return false;
  }
}

- (jboolean)matchesWhitespace {
  return ![self isEmpty] && OrgJsoupHelperStringUtil_isWhitespaceWithInt_([((NSString *) nil_chk(queue_)) charAtWithInt:pos_]);
}

- (jboolean)matchesWord {
  return ![self isEmpty] && JavaLangCharacter_isLetterOrDigitWithChar_([((NSString *) nil_chk(queue_)) charAtWithInt:pos_]);
}

- (void)advance {
  if (![self isEmpty]) pos_++;
}

- (jchar)consume {
  return [((NSString *) nil_chk(queue_)) charAtWithInt:pos_++];
}

- (void)consumeWithNSString:(NSString *)seq {
  if (![self matchesWithNSString:seq]) @throw create_JavaLangIllegalStateException_initWithNSString_(@"Queue did not match expected sequence");
  jint len = [((NSString *) nil_chk(seq)) java_length];
  if (len > OrgJsoupParserTokenQueue_remainingLength(self)) @throw create_JavaLangIllegalStateException_initWithNSString_(@"Queue not long enough to consume sequence");
  pos_ += len;
}

- (NSString *)consumeToWithNSString:(NSString *)seq {
  jint offset = [((NSString *) nil_chk(queue_)) java_indexOfString:seq fromIndex:pos_];
  if (offset != -1) {
    NSString *consumed = [((NSString *) nil_chk(queue_)) java_substring:pos_ endIndex:offset];
    pos_ += [((NSString *) nil_chk(consumed)) java_length];
    return consumed;
  }
  else {
    return [self remainder];
  }
}

- (NSString *)consumeToIgnoreCaseWithNSString:(NSString *)seq {
  jint start = pos_;
  NSString *first = [((NSString *) nil_chk(seq)) java_substring:0 endIndex:1];
  jboolean canScan = [((NSString *) nil_chk([((NSString *) nil_chk(first)) lowercaseString])) isEqual:[first uppercaseString]];
  while (![self isEmpty]) {
    if ([self matchesWithNSString:seq]) break;
    if (canScan) {
      jint skip = [((NSString *) nil_chk(queue_)) java_indexOfString:first fromIndex:pos_] - pos_;
      if (skip == 0) pos_++;
      else if (skip < 0) pos_ = [((NSString *) nil_chk(queue_)) java_length];
      else pos_ += skip;
    }
    else pos_++;
  }
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)consumeToAnyWithNSStringArray:(IOSObjectArray *)seq {
  jint start = pos_;
  while (![self isEmpty] && ![self matchesAnyWithNSStringArray:seq]) {
    pos_++;
  }
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)chompToWithNSString:(NSString *)seq {
  NSString *data = [self consumeToWithNSString:seq];
  [self matchChompWithNSString:seq];
  return data;
}

- (NSString *)chompToIgnoreCaseWithNSString:(NSString *)seq {
  NSString *data = [self consumeToIgnoreCaseWithNSString:seq];
  [self matchChompWithNSString:seq];
  return data;
}

- (NSString *)chompBalancedWithChar:(jchar)open
                           withChar:(jchar)close {
  jint start = -1;
  jint end = -1;
  jint depth = 0;
  jchar last = 0;
  do {
    if ([self isEmpty]) break;
    JavaLangCharacter *c = JavaLangCharacter_valueOfWithChar_([self consume]);
    if (last == 0 || last != OrgJsoupParserTokenQueue_ESC) {
      if ([c isEqual:JavaLangCharacter_valueOfWithChar_(open)]) {
        depth++;
        if (start == -1) start = pos_;
      }
      else if ([c isEqual:JavaLangCharacter_valueOfWithChar_(close)]) depth--;
    }
    if (depth > 0 && last != 0) end = pos_;
    last = [c charValue];
  }
  while (depth > 0);
  return (end >= 0) ? [((NSString *) nil_chk(queue_)) java_substring:start endIndex:end] : @"";
}

+ (NSString *)unescapeWithNSString:(NSString *)inArg {
  return OrgJsoupParserTokenQueue_unescapeWithNSString_(inArg);
}

- (jboolean)consumeWhitespace {
  jboolean seen = false;
  while ([self matchesWhitespace]) {
    pos_++;
    seen = true;
  }
  return seen;
}

- (NSString *)consumeWord {
  jint start = pos_;
  while ([self matchesWord]) pos_++;
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)consumeTagName {
  jint start = pos_;
  while (![self isEmpty] && ([self matchesWord] || [self matchesAnyWithCharArray:[IOSCharArray arrayWithChars:(jchar[]){ ':', '_', '-' } count:3]])) pos_++;
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)consumeElementSelector {
  jint start = pos_;
  while (![self isEmpty] && ([self matchesWord] || [self matchesAnyWithCharArray:[IOSCharArray arrayWithChars:(jchar[]){ '|', '_', '-' } count:3]])) pos_++;
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)consumeCssIdentifier {
  jint start = pos_;
  while (![self isEmpty] && ([self matchesWord] || [self matchesAnyWithCharArray:[IOSCharArray arrayWithChars:(jchar[]){ '-', '_' } count:2]])) pos_++;
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)consumeAttributeKey {
  jint start = pos_;
  while (![self isEmpty] && ([self matchesWord] || [self matchesAnyWithCharArray:[IOSCharArray arrayWithChars:(jchar[]){ '-', '_', ':' } count:3]])) pos_++;
  return [((NSString *) nil_chk(queue_)) java_substring:start endIndex:pos_];
}

- (NSString *)remainder {
  NSString *remainder = [((NSString *) nil_chk(queue_)) java_substring:pos_ endIndex:[queue_ java_length]];
  pos_ = [((NSString *) nil_chk(queue_)) java_length];
  return remainder;
}

- (NSString *)description {
  return [((NSString *) nil_chk(queue_)) java_substring:pos_];
}

- (void)dealloc {
  RELEASE_(queue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x81, 5, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "C", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 11, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x81, 12, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 13, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 17, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(isEmpty);
  methods[2].selector = @selector(remainingLength);
  methods[3].selector = @selector(peek);
  methods[4].selector = @selector(addFirstWithJavaLangCharacter:);
  methods[5].selector = @selector(addFirstWithNSString:);
  methods[6].selector = @selector(matchesWithNSString:);
  methods[7].selector = @selector(matchesCSWithNSString:);
  methods[8].selector = @selector(matchesAnyWithNSStringArray:);
  methods[9].selector = @selector(matchesAnyWithCharArray:);
  methods[10].selector = @selector(matchesStartTag);
  methods[11].selector = @selector(matchChompWithNSString:);
  methods[12].selector = @selector(matchesWhitespace);
  methods[13].selector = @selector(matchesWord);
  methods[14].selector = @selector(advance);
  methods[15].selector = @selector(consume);
  methods[16].selector = @selector(consumeWithNSString:);
  methods[17].selector = @selector(consumeToWithNSString:);
  methods[18].selector = @selector(consumeToIgnoreCaseWithNSString:);
  methods[19].selector = @selector(consumeToAnyWithNSStringArray:);
  methods[20].selector = @selector(chompToWithNSString:);
  methods[21].selector = @selector(chompToIgnoreCaseWithNSString:);
  methods[22].selector = @selector(chompBalancedWithChar:withChar:);
  methods[23].selector = @selector(unescapeWithNSString:);
  methods[24].selector = @selector(consumeWhitespace);
  methods[25].selector = @selector(consumeWord);
  methods[26].selector = @selector(consumeTagName);
  methods[27].selector = @selector(consumeElementSelector);
  methods[28].selector = @selector(consumeCssIdentifier);
  methods[29].selector = @selector(consumeAttributeKey);
  methods[30].selector = @selector(remainder);
  methods[31].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "queue_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "pos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "ESC", "C", .constantValue.asUnichar = OrgJsoupParserTokenQueue_ESC, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "addFirst", "LJavaLangCharacter;", "matches", "matchesCS", "matchesAny", "[LNSString;", "[C", "matchChomp", "consume", "consumeTo", "consumeToIgnoreCase", "consumeToAny", "chompTo", "chompToIgnoreCase", "chompBalanced", "CC", "unescape", "toString" };
  static const J2ObjcClassInfo _OrgJsoupParserTokenQueue = { "TokenQueue", "org.jsoup.parser", ptrTable, methods, fields, 7, 0x1, 32, 3, -1, -1, -1, -1, -1 };
  return &_OrgJsoupParserTokenQueue;
}

@end

void OrgJsoupParserTokenQueue_initWithNSString_(OrgJsoupParserTokenQueue *self, NSString *data) {
  NSObject_init(self);
  self->pos_ = 0;
  OrgJsoupHelperValidate_notNullWithId_(data);
  JreStrongAssign(&self->queue_, data);
}

OrgJsoupParserTokenQueue *new_OrgJsoupParserTokenQueue_initWithNSString_(NSString *data) {
  J2OBJC_NEW_IMPL(OrgJsoupParserTokenQueue, initWithNSString_, data)
}

OrgJsoupParserTokenQueue *create_OrgJsoupParserTokenQueue_initWithNSString_(NSString *data) {
  J2OBJC_CREATE_IMPL(OrgJsoupParserTokenQueue, initWithNSString_, data)
}

jint OrgJsoupParserTokenQueue_remainingLength(OrgJsoupParserTokenQueue *self) {
  return [((NSString *) nil_chk(self->queue_)) java_length] - self->pos_;
}

NSString *OrgJsoupParserTokenQueue_unescapeWithNSString_(NSString *inArg) {
  OrgJsoupParserTokenQueue_initialize();
  JavaLangStringBuilder *out = create_JavaLangStringBuilder_init();
  jchar last = 0;
  {
    IOSCharArray *a__ = [((NSString *) nil_chk(inArg)) java_toCharArray];
    jchar const *b__ = ((IOSCharArray *) nil_chk(a__))->buffer_;
    jchar const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jchar c = *b__++;
      if (c == OrgJsoupParserTokenQueue_ESC) {
        if (last != 0 && last == OrgJsoupParserTokenQueue_ESC) [out appendWithChar:c];
      }
      else [out appendWithChar:c];
      last = c;
    }
  }
  return [out description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupParserTokenQueue)

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:commons-lang3-3.4-fis-sources.jar!org/apache/commons/lang3/math/Fraction.java
//

#include "J2ObjC_source.h"
#include "java/lang/ArithmeticException.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/math/BigInteger.h"
#include "org/apache/commons/lang3/math/Fraction.h"

@interface OrgApacheCommonsLang3MathFraction () {
 @public
  jint numerator_;
  jint denominator_;
  jint hashCode_;
  NSString *toString_;
  NSString *toProperString_;
}

- (instancetype)initWithInt:(jint)numerator
                    withInt:(jint)denominator;

+ (jint)greatestCommonDivisorWithInt:(jint)u
                             withInt:(jint)v;

+ (jint)mulAndCheckWithInt:(jint)x
                   withInt:(jint)y;

+ (jint)mulPosAndCheckWithInt:(jint)x
                      withInt:(jint)y;

+ (jint)addAndCheckWithInt:(jint)x
                   withInt:(jint)y;

+ (jint)subAndCheckWithInt:(jint)x
                   withInt:(jint)y;

- (OrgApacheCommonsLang3MathFraction *)addSubWithOrgApacheCommonsLang3MathFraction:(OrgApacheCommonsLang3MathFraction *)fraction
                                                                       withBoolean:(jboolean)isAdd;

@end

J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3MathFraction, toString_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheCommonsLang3MathFraction, toProperString_, NSString *)

inline jlong OrgApacheCommonsLang3MathFraction_get_serialVersionUID(void);
#define OrgApacheCommonsLang3MathFraction_serialVersionUID 65382027393090LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheCommonsLang3MathFraction, serialVersionUID, jlong)

__attribute__((unused)) static void OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(OrgApacheCommonsLang3MathFraction *self, jint numerator, jint denominator);

__attribute__((unused)) static OrgApacheCommonsLang3MathFraction *new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(jint numerator, jint denominator) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheCommonsLang3MathFraction *create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(jint numerator, jint denominator);

__attribute__((unused)) static jint OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(jint u, jint v);

__attribute__((unused)) static jint OrgApacheCommonsLang3MathFraction_mulAndCheckWithInt_withInt_(jint x, jint y);

__attribute__((unused)) static jint OrgApacheCommonsLang3MathFraction_mulPosAndCheckWithInt_withInt_(jint x, jint y);

__attribute__((unused)) static jint OrgApacheCommonsLang3MathFraction_addAndCheckWithInt_withInt_(jint x, jint y);

__attribute__((unused)) static jint OrgApacheCommonsLang3MathFraction_subAndCheckWithInt_withInt_(jint x, jint y);

__attribute__((unused)) static OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_addSubWithOrgApacheCommonsLang3MathFraction_withBoolean_(OrgApacheCommonsLang3MathFraction *self, OrgApacheCommonsLang3MathFraction *fraction, jboolean isAdd);

J2OBJC_INITIALIZED_DEFN(OrgApacheCommonsLang3MathFraction)

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_ZERO;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_ONE;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_ONE_HALF;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_ONE_THIRD;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_TWO_THIRDS;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_ONE_QUARTER;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_TWO_QUARTERS;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_THREE_QUARTERS;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_ONE_FIFTH;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_TWO_FIFTHS;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_THREE_FIFTHS;
OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_FOUR_FIFTHS;

@implementation OrgApacheCommonsLang3MathFraction

- (instancetype)initWithInt:(jint)numerator
                    withInt:(jint)denominator {
  OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(self, numerator, denominator);
  return self;
}

+ (OrgApacheCommonsLang3MathFraction *)getFractionWithInt:(jint)numerator
                                                  withInt:(jint)denominator {
  return OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_(numerator, denominator);
}

+ (OrgApacheCommonsLang3MathFraction *)getFractionWithInt:(jint)whole
                                                  withInt:(jint)numerator
                                                  withInt:(jint)denominator {
  return OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_withInt_(whole, numerator, denominator);
}

+ (OrgApacheCommonsLang3MathFraction *)getReducedFractionWithInt:(jint)numerator
                                                         withInt:(jint)denominator {
  return OrgApacheCommonsLang3MathFraction_getReducedFractionWithInt_withInt_(numerator, denominator);
}

+ (OrgApacheCommonsLang3MathFraction *)getFractionWithDouble:(jdouble)value {
  return OrgApacheCommonsLang3MathFraction_getFractionWithDouble_(value);
}

+ (OrgApacheCommonsLang3MathFraction *)getFractionWithNSString:(NSString *)str {
  return OrgApacheCommonsLang3MathFraction_getFractionWithNSString_(str);
}

- (jint)getNumerator {
  return numerator_;
}

- (jint)getDenominator {
  return denominator_;
}

- (jint)getProperNumerator {
  return JavaLangMath_absWithInt_(numerator_ % denominator_);
}

- (jint)getProperWhole {
  return numerator_ / denominator_;
}

- (jint)intValue {
  return numerator_ / denominator_;
}

- (jlong)longLongValue {
  return (jlong) numerator_ / denominator_;
}

- (jfloat)floatValue {
  return (jfloat) numerator_ / (jfloat) denominator_;
}

- (jdouble)doubleValue {
  return (jdouble) numerator_ / (jdouble) denominator_;
}

- (OrgApacheCommonsLang3MathFraction *)reduce {
  if (numerator_ == 0) {
    return [self isEqual:OrgApacheCommonsLang3MathFraction_ZERO] ? self : OrgApacheCommonsLang3MathFraction_ZERO;
  }
  jint gcd = OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(JavaLangMath_absWithInt_(numerator_), denominator_);
  if (gcd == 1) {
    return self;
  }
  return OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_(numerator_ / gcd, denominator_ / gcd);
}

- (OrgApacheCommonsLang3MathFraction *)invert {
  if (numerator_ == 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"Unable to invert zero.");
  }
  if (numerator_ == JavaLangInteger_MIN_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: can't negate numerator");
  }
  if (numerator_ < 0) {
    return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(-denominator_, -numerator_);
  }
  return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(denominator_, numerator_);
}

- (OrgApacheCommonsLang3MathFraction *)negate {
  if (numerator_ == JavaLangInteger_MIN_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: too large to negate");
  }
  return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(-numerator_, denominator_);
}

- (OrgApacheCommonsLang3MathFraction *)abs {
  if (numerator_ >= 0) {
    return self;
  }
  return [self negate];
}

- (OrgApacheCommonsLang3MathFraction *)powWithInt:(jint)power {
  if (power == 1) {
    return self;
  }
  else if (power == 0) {
    return OrgApacheCommonsLang3MathFraction_ONE;
  }
  else if (power < 0) {
    if (power == JavaLangInteger_MIN_VALUE) {
      return [((OrgApacheCommonsLang3MathFraction *) nil_chk([((OrgApacheCommonsLang3MathFraction *) nil_chk([self invert])) powWithInt:2])) powWithInt:-(power / 2)];
    }
    return [((OrgApacheCommonsLang3MathFraction *) nil_chk([self invert])) powWithInt:-power];
  }
  else {
    OrgApacheCommonsLang3MathFraction *f = [self multiplyByWithOrgApacheCommonsLang3MathFraction:self];
    if (power % 2 == 0) {
      return [((OrgApacheCommonsLang3MathFraction *) nil_chk(f)) powWithInt:power / 2];
    }
    return [((OrgApacheCommonsLang3MathFraction *) nil_chk([((OrgApacheCommonsLang3MathFraction *) nil_chk(f)) powWithInt:power / 2])) multiplyByWithOrgApacheCommonsLang3MathFraction:self];
  }
}

+ (jint)greatestCommonDivisorWithInt:(jint)u
                             withInt:(jint)v {
  return OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(u, v);
}

+ (jint)mulAndCheckWithInt:(jint)x
                   withInt:(jint)y {
  return OrgApacheCommonsLang3MathFraction_mulAndCheckWithInt_withInt_(x, y);
}

+ (jint)mulPosAndCheckWithInt:(jint)x
                      withInt:(jint)y {
  return OrgApacheCommonsLang3MathFraction_mulPosAndCheckWithInt_withInt_(x, y);
}

+ (jint)addAndCheckWithInt:(jint)x
                   withInt:(jint)y {
  return OrgApacheCommonsLang3MathFraction_addAndCheckWithInt_withInt_(x, y);
}

+ (jint)subAndCheckWithInt:(jint)x
                   withInt:(jint)y {
  return OrgApacheCommonsLang3MathFraction_subAndCheckWithInt_withInt_(x, y);
}

- (OrgApacheCommonsLang3MathFraction *)addWithOrgApacheCommonsLang3MathFraction:(OrgApacheCommonsLang3MathFraction *)fraction {
  return OrgApacheCommonsLang3MathFraction_addSubWithOrgApacheCommonsLang3MathFraction_withBoolean_(self, fraction, true);
}

- (OrgApacheCommonsLang3MathFraction *)subtractWithOrgApacheCommonsLang3MathFraction:(OrgApacheCommonsLang3MathFraction *)fraction {
  return OrgApacheCommonsLang3MathFraction_addSubWithOrgApacheCommonsLang3MathFraction_withBoolean_(self, fraction, false);
}

- (OrgApacheCommonsLang3MathFraction *)addSubWithOrgApacheCommonsLang3MathFraction:(OrgApacheCommonsLang3MathFraction *)fraction
                                                                       withBoolean:(jboolean)isAdd {
  return OrgApacheCommonsLang3MathFraction_addSubWithOrgApacheCommonsLang3MathFraction_withBoolean_(self, fraction, isAdd);
}

- (OrgApacheCommonsLang3MathFraction *)multiplyByWithOrgApacheCommonsLang3MathFraction:(OrgApacheCommonsLang3MathFraction *)fraction {
  if (fraction == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The fraction must not be null");
  }
  if (numerator_ == 0 || fraction->numerator_ == 0) {
    return OrgApacheCommonsLang3MathFraction_ZERO;
  }
  jint d1 = OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(numerator_, fraction->denominator_);
  jint d2 = OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(fraction->numerator_, denominator_);
  return OrgApacheCommonsLang3MathFraction_getReducedFractionWithInt_withInt_(OrgApacheCommonsLang3MathFraction_mulAndCheckWithInt_withInt_(numerator_ / d1, fraction->numerator_ / d2), OrgApacheCommonsLang3MathFraction_mulPosAndCheckWithInt_withInt_(denominator_ / d2, fraction->denominator_ / d1));
}

- (OrgApacheCommonsLang3MathFraction *)divideByWithOrgApacheCommonsLang3MathFraction:(OrgApacheCommonsLang3MathFraction *)fraction {
  if (fraction == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The fraction must not be null");
  }
  if (fraction->numerator_ == 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The fraction to divide by must not be zero");
  }
  return [self multiplyByWithOrgApacheCommonsLang3MathFraction:[fraction invert]];
}

- (jboolean)isEqual:(id)obj {
  if (obj == self) {
    return true;
  }
  if ([obj isKindOfClass:[OrgApacheCommonsLang3MathFraction class]] == false) {
    return false;
  }
  OrgApacheCommonsLang3MathFraction *other = (OrgApacheCommonsLang3MathFraction *) cast_chk(obj, [OrgApacheCommonsLang3MathFraction class]);
  return [self getNumerator] == [((OrgApacheCommonsLang3MathFraction *) nil_chk(other)) getNumerator] && [self getDenominator] == [other getDenominator];
}

- (NSUInteger)hash {
  if (hashCode_ == 0) {
    hashCode_ = 37 * (37 * 17 + [self getNumerator]) + [self getDenominator];
  }
  return hashCode_;
}

- (jint)compareToWithId:(OrgApacheCommonsLang3MathFraction *)other {
  cast_chk(other, [OrgApacheCommonsLang3MathFraction class]);
  if (self == other) {
    return 0;
  }
  if (numerator_ == ((OrgApacheCommonsLang3MathFraction *) nil_chk(other))->numerator_ && denominator_ == other->denominator_) {
    return 0;
  }
  jlong first = (jlong) numerator_ * (jlong) other->denominator_;
  jlong second = (jlong) other->numerator_ * (jlong) denominator_;
  if (first == second) {
    return 0;
  }
  else if (first < second) {
    return -1;
  }
  else {
    return 1;
  }
}

- (NSString *)description {
  if (toString_ == nil) {
    JreStrongAssign(&toString_, [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([create_JavaLangStringBuilder_initWithInt_(32) appendWithInt:[self getNumerator]])) appendWithChar:'/'])) appendWithInt:[self getDenominator]])) description]);
  }
  return toString_;
}

- (NSString *)toProperString {
  if (toProperString_ == nil) {
    if (numerator_ == 0) {
      JreStrongAssign(&toProperString_, @"0");
    }
    else if (numerator_ == denominator_) {
      JreStrongAssign(&toProperString_, @"1");
    }
    else if (numerator_ == -1 * denominator_) {
      JreStrongAssign(&toProperString_, @"-1");
    }
    else if ((numerator_ > 0 ? -numerator_ : numerator_) < -denominator_) {
      jint properNumerator = [self getProperNumerator];
      if (properNumerator == 0) {
        JreStrongAssign(&toProperString_, JavaLangInteger_toStringWithInt_([self getProperWhole]));
      }
      else {
        JreStrongAssign(&toProperString_, [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([create_JavaLangStringBuilder_initWithInt_(32) appendWithInt:[self getProperWhole]])) appendWithChar:' '])) appendWithInt:properNumerator])) appendWithChar:'/'])) appendWithInt:[self getDenominator]])) description]);
      }
    }
    else {
      JreStrongAssign(&toProperString_, [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([create_JavaLangStringBuilder_initWithInt_(32) appendWithInt:[self getNumerator]])) appendWithChar:'/'])) appendWithInt:[self getDenominator]])) description]);
    }
  }
  return toProperString_;
}

- (void)dealloc {
  RELEASE_(toString_);
  RELEASE_(toProperString_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x9, 3, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x9, 1, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x9, 1, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 6, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 9, 0, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 10, 0, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 11, 0, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 12, 0, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 13, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, 16, 15, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x2, 17, 18, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, 19, 15, -1, -1, -1, -1 },
    { NULL, "LOrgApacheCommonsLang3MathFraction;", 0x1, 20, 15, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 21, 22, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 23, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 24, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 25, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(getFractionWithInt:withInt:);
  methods[2].selector = @selector(getFractionWithInt:withInt:withInt:);
  methods[3].selector = @selector(getReducedFractionWithInt:withInt:);
  methods[4].selector = @selector(getFractionWithDouble:);
  methods[5].selector = @selector(getFractionWithNSString:);
  methods[6].selector = @selector(getNumerator);
  methods[7].selector = @selector(getDenominator);
  methods[8].selector = @selector(getProperNumerator);
  methods[9].selector = @selector(getProperWhole);
  methods[10].selector = @selector(intValue);
  methods[11].selector = @selector(longLongValue);
  methods[12].selector = @selector(floatValue);
  methods[13].selector = @selector(doubleValue);
  methods[14].selector = @selector(reduce);
  methods[15].selector = @selector(invert);
  methods[16].selector = @selector(negate);
  methods[17].selector = @selector(abs);
  methods[18].selector = @selector(powWithInt:);
  methods[19].selector = @selector(greatestCommonDivisorWithInt:withInt:);
  methods[20].selector = @selector(mulAndCheckWithInt:withInt:);
  methods[21].selector = @selector(mulPosAndCheckWithInt:withInt:);
  methods[22].selector = @selector(addAndCheckWithInt:withInt:);
  methods[23].selector = @selector(subAndCheckWithInt:withInt:);
  methods[24].selector = @selector(addWithOrgApacheCommonsLang3MathFraction:);
  methods[25].selector = @selector(subtractWithOrgApacheCommonsLang3MathFraction:);
  methods[26].selector = @selector(addSubWithOrgApacheCommonsLang3MathFraction:withBoolean:);
  methods[27].selector = @selector(multiplyByWithOrgApacheCommonsLang3MathFraction:);
  methods[28].selector = @selector(divideByWithOrgApacheCommonsLang3MathFraction:);
  methods[29].selector = @selector(isEqual:);
  methods[30].selector = @selector(hash);
  methods[31].selector = @selector(compareToWithId:);
  methods[32].selector = @selector(description);
  methods[33].selector = @selector(toProperString);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgApacheCommonsLang3MathFraction_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "ZERO", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "ONE", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "ONE_HALF", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "ONE_THIRD", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "TWO_THIRDS", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 30, -1, -1 },
    { "ONE_QUARTER", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 31, -1, -1 },
    { "TWO_QUARTERS", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 32, -1, -1 },
    { "THREE_QUARTERS", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 33, -1, -1 },
    { "ONE_FIFTH", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 34, -1, -1 },
    { "TWO_FIFTHS", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 35, -1, -1 },
    { "THREE_FIFTHS", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 36, -1, -1 },
    { "FOUR_FIFTHS", "LOrgApacheCommonsLang3MathFraction;", .constantValue.asLong = 0, 0x19, -1, 37, -1, -1 },
    { "numerator_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "denominator_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "hashCode_", "I", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
    { "toString_", "LNSString;", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
    { "toProperString_", "LNSString;", .constantValue.asLong = 0, 0x82, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "getFraction", "III", "getReducedFraction", "D", "LNSString;", "longValue", "pow", "I", "greatestCommonDivisor", "mulAndCheck", "mulPosAndCheck", "addAndCheck", "subAndCheck", "add", "LOrgApacheCommonsLang3MathFraction;", "subtract", "addSub", "LOrgApacheCommonsLang3MathFraction;Z", "multiplyBy", "divideBy", "equals", "LNSObject;", "hashCode", "compareTo", "toString", &OrgApacheCommonsLang3MathFraction_ZERO, &OrgApacheCommonsLang3MathFraction_ONE, &OrgApacheCommonsLang3MathFraction_ONE_HALF, &OrgApacheCommonsLang3MathFraction_ONE_THIRD, &OrgApacheCommonsLang3MathFraction_TWO_THIRDS, &OrgApacheCommonsLang3MathFraction_ONE_QUARTER, &OrgApacheCommonsLang3MathFraction_TWO_QUARTERS, &OrgApacheCommonsLang3MathFraction_THREE_QUARTERS, &OrgApacheCommonsLang3MathFraction_ONE_FIFTH, &OrgApacheCommonsLang3MathFraction_TWO_FIFTHS, &OrgApacheCommonsLang3MathFraction_THREE_FIFTHS, &OrgApacheCommonsLang3MathFraction_FOUR_FIFTHS, "Ljava/lang/Number;Ljava/lang/Comparable<Lorg/apache/commons/lang3/math/Fraction;>;" };
  static const J2ObjcClassInfo _OrgApacheCommonsLang3MathFraction = { "Fraction", "org.apache.commons.lang3.math", ptrTable, methods, fields, 7, 0x11, 34, 18, -1, -1, -1, 38, -1 };
  return &_OrgApacheCommonsLang3MathFraction;
}

+ (void)initialize {
  if (self == [OrgApacheCommonsLang3MathFraction class]) {
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_ZERO, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(0, 1));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_ONE, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(1, 1));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_ONE_HALF, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(1, 2));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_ONE_THIRD, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(1, 3));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_TWO_THIRDS, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(2, 3));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_ONE_QUARTER, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(1, 4));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_TWO_QUARTERS, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(2, 4));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_THREE_QUARTERS, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(3, 4));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_ONE_FIFTH, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(1, 5));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_TWO_FIFTHS, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(2, 5));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_THREE_FIFTHS, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(3, 5));
    JreStrongAssignAndConsume(&OrgApacheCommonsLang3MathFraction_FOUR_FIFTHS, new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(4, 5));
    J2OBJC_SET_INITIALIZED(OrgApacheCommonsLang3MathFraction)
  }
}

@end

void OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(OrgApacheCommonsLang3MathFraction *self, jint numerator, jint denominator) {
  NSNumber_init(self);
  self->hashCode_ = 0;
  JreStrongAssign(&self->toString_, nil);
  JreStrongAssign(&self->toProperString_, nil);
  self->numerator_ = numerator;
  self->denominator_ = denominator;
}

OrgApacheCommonsLang3MathFraction *new_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(jint numerator, jint denominator) {
  J2OBJC_NEW_IMPL(OrgApacheCommonsLang3MathFraction, initWithInt_withInt_, numerator, denominator)
}

OrgApacheCommonsLang3MathFraction *create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(jint numerator, jint denominator) {
  J2OBJC_CREATE_IMPL(OrgApacheCommonsLang3MathFraction, initWithInt_withInt_, numerator, denominator)
}

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_(jint numerator, jint denominator) {
  OrgApacheCommonsLang3MathFraction_initialize();
  if (denominator == 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The denominator must not be zero");
  }
  if (denominator < 0) {
    if (numerator == JavaLangInteger_MIN_VALUE || denominator == JavaLangInteger_MIN_VALUE) {
      @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: can't negate");
    }
    numerator = -numerator;
    denominator = -denominator;
  }
  return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(numerator, denominator);
}

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_withInt_(jint whole, jint numerator, jint denominator) {
  OrgApacheCommonsLang3MathFraction_initialize();
  if (denominator == 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The denominator must not be zero");
  }
  if (denominator < 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The denominator must not be negative");
  }
  if (numerator < 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The numerator must not be negative");
  }
  jlong numeratorValue;
  if (whole < 0) {
    numeratorValue = whole * (jlong) denominator - numerator;
  }
  else {
    numeratorValue = whole * (jlong) denominator + numerator;
  }
  if (numeratorValue < JavaLangInteger_MIN_VALUE || numeratorValue > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"Numerator too large to represent as an Integer.");
  }
  return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_((jint) numeratorValue, denominator);
}

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_getReducedFractionWithInt_withInt_(jint numerator, jint denominator) {
  OrgApacheCommonsLang3MathFraction_initialize();
  if (denominator == 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The denominator must not be zero");
  }
  if (numerator == 0) {
    return OrgApacheCommonsLang3MathFraction_ZERO;
  }
  if (denominator == JavaLangInteger_MIN_VALUE && (numerator & 1) == 0) {
    numerator /= 2;
    denominator /= 2;
  }
  if (denominator < 0) {
    if (numerator == JavaLangInteger_MIN_VALUE || denominator == JavaLangInteger_MIN_VALUE) {
      @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: can't negate");
    }
    numerator = -numerator;
    denominator = -denominator;
  }
  jint gcd = OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(numerator, denominator);
  numerator /= gcd;
  denominator /= gcd;
  return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(numerator, denominator);
}

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_getFractionWithDouble_(jdouble value) {
  OrgApacheCommonsLang3MathFraction_initialize();
  jint sign = value < 0 ? -1 : 1;
  value = JavaLangMath_absWithDouble_(value);
  if (value > JavaLangInteger_MAX_VALUE || JavaLangDouble_isNaNWithDouble_(value)) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"The value must not be greater than Integer.MAX_VALUE or NaN");
  }
  jint wholeNumber = JreFpToInt(value);
  JreMinusAssignDoubleD(&value, wholeNumber);
  jint numer0 = 0;
  jint denom0 = 1;
  jint numer1 = 1;
  jint denom1 = 0;
  jint numer2 = 0;
  jint denom2 = 0;
  jint a1 = JreFpToInt(value);
  jint a2 = 0;
  jdouble x1 = 1;
  jdouble x2 = 0;
  jdouble y1 = value - a1;
  jdouble y2 = 0;
  jdouble delta1;
  jdouble delta2 = JavaLangDouble_MAX_VALUE;
  jdouble fraction;
  jint i = 1;
  do {
    delta1 = delta2;
    a2 = JreFpToInt((x1 / y1));
    x2 = y1;
    y2 = x1 - a2 * y1;
    numer2 = a1 * numer1 + numer0;
    denom2 = a1 * denom1 + denom0;
    fraction = (jdouble) numer2 / (jdouble) denom2;
    delta2 = JavaLangMath_absWithDouble_(value - fraction);
    a1 = a2;
    x1 = x2;
    y1 = y2;
    numer0 = numer1;
    denom0 = denom1;
    numer1 = numer2;
    denom1 = denom2;
    i++;
  }
  while (delta1 > delta2 && denom2 <= 10000 && denom2 > 0 && i < 25);
  if (i == 25) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"Unable to convert double to fraction");
  }
  return OrgApacheCommonsLang3MathFraction_getReducedFractionWithInt_withInt_((numer0 + wholeNumber * denom0) * sign, denom0);
}

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_getFractionWithNSString_(NSString *str) {
  OrgApacheCommonsLang3MathFraction_initialize();
  if (str == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The string must not be null");
  }
  jint pos = [str java_indexOf:'.'];
  if (pos >= 0) {
    return OrgApacheCommonsLang3MathFraction_getFractionWithDouble_(JavaLangDouble_parseDoubleWithNSString_(str));
  }
  pos = [str java_indexOf:' '];
  if (pos > 0) {
    jint whole = JavaLangInteger_parseIntWithNSString_([str java_substring:0 endIndex:pos]);
    str = [str java_substring:pos + 1];
    pos = [((NSString *) nil_chk(str)) java_indexOf:'/'];
    if (pos < 0) {
      @throw create_JavaLangNumberFormatException_initWithNSString_(@"The fraction could not be parsed as the format X Y/Z");
    }
    jint numer = JavaLangInteger_parseIntWithNSString_([str java_substring:0 endIndex:pos]);
    jint denom = JavaLangInteger_parseIntWithNSString_([str java_substring:pos + 1]);
    return OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_withInt_(whole, numer, denom);
  }
  pos = [str java_indexOf:'/'];
  if (pos < 0) {
    return OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_(JavaLangInteger_parseIntWithNSString_(str), 1);
  }
  jint numer = JavaLangInteger_parseIntWithNSString_([str java_substring:0 endIndex:pos]);
  jint denom = JavaLangInteger_parseIntWithNSString_([str java_substring:pos + 1]);
  return OrgApacheCommonsLang3MathFraction_getFractionWithInt_withInt_(numer, denom);
}

jint OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(jint u, jint v) {
  OrgApacheCommonsLang3MathFraction_initialize();
  if (u == 0 || v == 0) {
    if (u == JavaLangInteger_MIN_VALUE || v == JavaLangInteger_MIN_VALUE) {
      @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: gcd is 2^31");
    }
    return JavaLangMath_absWithInt_(u) + JavaLangMath_absWithInt_(v);
  }
  if (JavaLangMath_absWithInt_(u) == 1 || JavaLangMath_absWithInt_(v) == 1) {
    return 1;
  }
  if (u > 0) {
    u = -u;
  }
  if (v > 0) {
    v = -v;
  }
  jint k = 0;
  while ((u & 1) == 0 && (v & 1) == 0 && k < 31) {
    u /= 2;
    v /= 2;
    k++;
  }
  if (k == 31) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: gcd is 2^31");
  }
  jint t = (u & 1) == 1 ? v : -(u / 2);
  do {
    while ((t & 1) == 0) {
      t /= 2;
    }
    if (t > 0) {
      u = -t;
    }
    else {
      v = t;
    }
    t = (v - u) / 2;
  }
  while (t != 0);
  return -u * (JreLShift32(1, k));
}

jint OrgApacheCommonsLang3MathFraction_mulAndCheckWithInt_withInt_(jint x, jint y) {
  OrgApacheCommonsLang3MathFraction_initialize();
  jlong m = (jlong) x * (jlong) y;
  if (m < JavaLangInteger_MIN_VALUE || m > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: mul");
  }
  return (jint) m;
}

jint OrgApacheCommonsLang3MathFraction_mulPosAndCheckWithInt_withInt_(jint x, jint y) {
  OrgApacheCommonsLang3MathFraction_initialize();
  jlong m = (jlong) x * (jlong) y;
  if (m > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: mulPos");
  }
  return (jint) m;
}

jint OrgApacheCommonsLang3MathFraction_addAndCheckWithInt_withInt_(jint x, jint y) {
  OrgApacheCommonsLang3MathFraction_initialize();
  jlong s = (jlong) x + (jlong) y;
  if (s < JavaLangInteger_MIN_VALUE || s > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: add");
  }
  return (jint) s;
}

jint OrgApacheCommonsLang3MathFraction_subAndCheckWithInt_withInt_(jint x, jint y) {
  OrgApacheCommonsLang3MathFraction_initialize();
  jlong s = (jlong) x - (jlong) y;
  if (s < JavaLangInteger_MIN_VALUE || s > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: add");
  }
  return (jint) s;
}

OrgApacheCommonsLang3MathFraction *OrgApacheCommonsLang3MathFraction_addSubWithOrgApacheCommonsLang3MathFraction_withBoolean_(OrgApacheCommonsLang3MathFraction *self, OrgApacheCommonsLang3MathFraction *fraction, jboolean isAdd) {
  if (fraction == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The fraction must not be null");
  }
  if (self->numerator_ == 0) {
    return isAdd ? fraction : [fraction negate];
  }
  if (fraction->numerator_ == 0) {
    return self;
  }
  jint d1 = OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(self->denominator_, fraction->denominator_);
  if (d1 == 1) {
    jint uvp = OrgApacheCommonsLang3MathFraction_mulAndCheckWithInt_withInt_(self->numerator_, fraction->denominator_);
    jint upv = OrgApacheCommonsLang3MathFraction_mulAndCheckWithInt_withInt_(fraction->numerator_, self->denominator_);
    return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_(isAdd ? OrgApacheCommonsLang3MathFraction_addAndCheckWithInt_withInt_(uvp, upv) : OrgApacheCommonsLang3MathFraction_subAndCheckWithInt_withInt_(uvp, upv), OrgApacheCommonsLang3MathFraction_mulPosAndCheckWithInt_withInt_(self->denominator_, fraction->denominator_));
  }
  JavaMathBigInteger *uvp = [((JavaMathBigInteger *) nil_chk(JavaMathBigInteger_valueOfWithLong_(self->numerator_))) multiplyWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(fraction->denominator_ / d1)];
  JavaMathBigInteger *upv = [((JavaMathBigInteger *) nil_chk(JavaMathBigInteger_valueOfWithLong_(fraction->numerator_))) multiplyWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(self->denominator_ / d1)];
  JavaMathBigInteger *t = isAdd ? [((JavaMathBigInteger *) nil_chk(uvp)) addWithJavaMathBigInteger:upv] : [((JavaMathBigInteger *) nil_chk(uvp)) subtractWithJavaMathBigInteger:upv];
  jint tmodd1 = [((JavaMathBigInteger *) nil_chk([t modWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(d1)])) intValue];
  jint d2 = tmodd1 == 0 ? d1 : OrgApacheCommonsLang3MathFraction_greatestCommonDivisorWithInt_withInt_(tmodd1, d1);
  JavaMathBigInteger *w = [t divideWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(d2)];
  if ([((JavaMathBigInteger *) nil_chk(w)) bitLength] > 31) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"overflow: numerator too large after multiply");
  }
  return create_OrgApacheCommonsLang3MathFraction_initWithInt_withInt_([w intValue], OrgApacheCommonsLang3MathFraction_mulPosAndCheckWithInt_withInt_(self->denominator_ / d1, fraction->denominator_ / d2));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheCommonsLang3MathFraction)

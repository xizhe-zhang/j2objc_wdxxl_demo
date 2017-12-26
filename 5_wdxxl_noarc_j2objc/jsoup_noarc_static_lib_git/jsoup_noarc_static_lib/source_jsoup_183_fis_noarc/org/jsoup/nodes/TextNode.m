//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/nodes/TextNode.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/List.h"
#include "org/jsoup/helper/StringUtil.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/nodes/Attributes.h"
#include "org/jsoup/nodes/Document.h"
#include "org/jsoup/nodes/Element.h"
#include "org/jsoup/nodes/Entities.h"
#include "org/jsoup/nodes/Node.h"
#include "org/jsoup/nodes/TextNode.h"
#include "org/jsoup/parser/Tag.h"

@interface OrgJsoupNodesTextNode ()

- (void)ensureAttributes;

@end

inline NSString *OrgJsoupNodesTextNode_get_TEXT_KEY(void);
static NSString *OrgJsoupNodesTextNode_TEXT_KEY = @"text";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupNodesTextNode, TEXT_KEY, NSString *)

__attribute__((unused)) static void OrgJsoupNodesTextNode_ensureAttributes(OrgJsoupNodesTextNode *self);

@implementation OrgJsoupNodesTextNode

- (instancetype)initWithNSString:(NSString *)text
                    withNSString:(NSString *)baseUri {
  OrgJsoupNodesTextNode_initWithNSString_withNSString_(self, text, baseUri);
  return self;
}

- (NSString *)nodeName {
  return @"#text";
}

- (NSString *)text {
  return OrgJsoupNodesTextNode_normaliseWhitespaceWithNSString_([self getWholeText]);
}

- (OrgJsoupNodesTextNode *)textWithNSString:(NSString *)text {
  JreStrongAssign(&self->text_, text);
  if (attributes_ != nil) [attributes_ putWithNSString:OrgJsoupNodesTextNode_TEXT_KEY withNSString:text];
  return self;
}

- (NSString *)getWholeText {
  return attributes_ == nil ? text_ : [attributes_ getWithNSString:OrgJsoupNodesTextNode_TEXT_KEY];
}

- (jboolean)isBlank {
  return OrgJsoupHelperStringUtil_isBlankWithNSString_([self getWholeText]);
}

- (OrgJsoupNodesTextNode *)splitTextWithInt:(jint)offset {
  OrgJsoupHelperValidate_isTrueWithBoolean_withNSString_(offset >= 0, @"Split offset must be not be negative");
  OrgJsoupHelperValidate_isTrueWithBoolean_withNSString_(offset < [((NSString *) nil_chk(text_)) java_length], @"Split offset must not be greater than current text length");
  NSString *head = [((NSString *) nil_chk([self getWholeText])) java_substring:0 endIndex:offset];
  NSString *tail = [((NSString *) nil_chk([self getWholeText])) java_substring:offset];
  [self textWithNSString:head];
  OrgJsoupNodesTextNode *tailNode = create_OrgJsoupNodesTextNode_initWithNSString_withNSString_(tail, [self baseUri]);
  if ([self parent] != nil) [((OrgJsoupNodesNode *) nil_chk([self parent])) addChildrenWithInt:[self siblingIndex] + 1 withOrgJsoupNodesNodeArray:[IOSObjectArray arrayWithObjects:(id[]){ tailNode } count:1 type:OrgJsoupNodesNode_class_()]];
  return tailNode;
}

- (void)outerHtmlHeadWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                       withInt:(jint)depth
      withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
  if ([((OrgJsoupNodesDocument_OutputSettings *) nil_chk(outArg)) prettyPrint] && (([self siblingIndex] == 0 && [parentNode_ isKindOfClass:[OrgJsoupNodesElement class]] && [((OrgJsoupParserTag *) nil_chk([((OrgJsoupNodesElement *) nil_chk(((OrgJsoupNodesElement *) cast_chk(parentNode_, [OrgJsoupNodesElement class])))) tag])) formatAsBlock] && ![self isBlank]) || ([outArg outline] && [((id<JavaUtilList>) nil_chk([self siblingNodes])) size] > 0 && ![self isBlank]))) [self indentWithJavaLangStringBuilder:accum withInt:depth withOrgJsoupNodesDocument_OutputSettings:outArg];
  jboolean normaliseWhite = [outArg prettyPrint] && [[self parent] isKindOfClass:[OrgJsoupNodesElement class]] && !OrgJsoupNodesElement_preserveWhitespaceWithOrgJsoupNodesNode_([self parent]);
  OrgJsoupNodesEntities_escapeWithJavaLangStringBuilder_withNSString_withOrgJsoupNodesDocument_OutputSettings_withBoolean_withBoolean_withBoolean_(accum, [self getWholeText], outArg, false, normaliseWhite, false);
}

- (void)outerHtmlTailWithJavaLangStringBuilder:(JavaLangStringBuilder *)accum
                                       withInt:(jint)depth
      withOrgJsoupNodesDocument_OutputSettings:(OrgJsoupNodesDocument_OutputSettings *)outArg {
}

- (NSString *)description {
  return [self outerHtml];
}

+ (OrgJsoupNodesTextNode *)createFromEncodedWithNSString:(NSString *)encodedText
                                            withNSString:(NSString *)baseUri {
  return OrgJsoupNodesTextNode_createFromEncodedWithNSString_withNSString_(encodedText, baseUri);
}

+ (NSString *)normaliseWhitespaceWithNSString:(NSString *)text {
  return OrgJsoupNodesTextNode_normaliseWhitespaceWithNSString_(text);
}

+ (NSString *)stripLeadingWhitespaceWithNSString:(NSString *)text {
  return OrgJsoupNodesTextNode_stripLeadingWhitespaceWithNSString_(text);
}

+ (jboolean)lastCharIsWhitespaceWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb {
  return OrgJsoupNodesTextNode_lastCharIsWhitespaceWithJavaLangStringBuilder_(sb);
}

- (void)ensureAttributes {
  OrgJsoupNodesTextNode_ensureAttributes(self);
}

- (NSString *)attrWithNSString:(NSString *)attributeKey {
  OrgJsoupNodesTextNode_ensureAttributes(self);
  return [super attrWithNSString:attributeKey];
}

- (OrgJsoupNodesAttributes *)attributes {
  OrgJsoupNodesTextNode_ensureAttributes(self);
  return [super attributes];
}

- (OrgJsoupNodesNode *)attrWithNSString:(NSString *)attributeKey
                           withNSString:(NSString *)attributeValue {
  OrgJsoupNodesTextNode_ensureAttributes(self);
  return [super attrWithNSString:attributeKey withNSString:attributeValue];
}

- (jboolean)hasAttrWithNSString:(NSString *)attributeKey {
  OrgJsoupNodesTextNode_ensureAttributes(self);
  return [super hasAttrWithNSString:attributeKey];
}

- (OrgJsoupNodesNode *)removeAttrWithNSString:(NSString *)attributeKey {
  OrgJsoupNodesTextNode_ensureAttributes(self);
  return [super removeAttrWithNSString:attributeKey];
}

- (NSString *)absUrlWithNSString:(NSString *)attributeKey {
  OrgJsoupNodesTextNode_ensureAttributes(self);
  return [super absUrlWithNSString:attributeKey];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (o == nil || [self java_getClass] != [o java_getClass]) return false;
  if (![super isEqual:o]) return false;
  OrgJsoupNodesTextNode *textNode = (OrgJsoupNodesTextNode *) cast_chk(o, [OrgJsoupNodesTextNode class]);
  return !(text_ != nil ? ![text_ isEqual:textNode->text_] : textNode->text_ != nil);
}

- (NSUInteger)hash {
  jint result = ((jint) [super hash]);
  result = 31 * result + (text_ != nil ? ((jint) [text_ hash]) : 0);
  return result;
}

- (void)dealloc {
  RELEASE_(text_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesTextNode;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesTextNode;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 7, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesTextNode;", 0x9, 9, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 10, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 11, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x8, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 14, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesAttributes;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 14, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 2, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesNode;", 0x1, 16, 2, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 18, 19, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 20, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(nodeName);
  methods[2].selector = @selector(text);
  methods[3].selector = @selector(textWithNSString:);
  methods[4].selector = @selector(getWholeText);
  methods[5].selector = @selector(isBlank);
  methods[6].selector = @selector(splitTextWithInt:);
  methods[7].selector = @selector(outerHtmlHeadWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[8].selector = @selector(outerHtmlTailWithJavaLangStringBuilder:withInt:withOrgJsoupNodesDocument_OutputSettings:);
  methods[9].selector = @selector(description);
  methods[10].selector = @selector(createFromEncodedWithNSString:withNSString:);
  methods[11].selector = @selector(normaliseWhitespaceWithNSString:);
  methods[12].selector = @selector(stripLeadingWhitespaceWithNSString:);
  methods[13].selector = @selector(lastCharIsWhitespaceWithJavaLangStringBuilder:);
  methods[14].selector = @selector(ensureAttributes);
  methods[15].selector = @selector(attrWithNSString:);
  methods[16].selector = @selector(attributes);
  methods[17].selector = @selector(attrWithNSString:withNSString:);
  methods[18].selector = @selector(hasAttrWithNSString:);
  methods[19].selector = @selector(removeAttrWithNSString:);
  methods[20].selector = @selector(absUrlWithNSString:);
  methods[21].selector = @selector(isEqual:);
  methods[22].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TEXT_KEY", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
    { "text_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "text", "LNSString;", "splitText", "I", "outerHtmlHead", "LJavaLangStringBuilder;ILOrgJsoupNodesDocument_OutputSettings;", "outerHtmlTail", "toString", "createFromEncoded", "normaliseWhitespace", "stripLeadingWhitespace", "lastCharIsWhitespace", "LJavaLangStringBuilder;", "attr", "hasAttr", "removeAttr", "absUrl", "equals", "LNSObject;", "hashCode", &OrgJsoupNodesTextNode_TEXT_KEY };
  static const J2ObjcClassInfo _OrgJsoupNodesTextNode = { "TextNode", "org.jsoup.nodes", ptrTable, methods, fields, 7, 0x1, 23, 2, -1, -1, -1, -1, -1 };
  return &_OrgJsoupNodesTextNode;
}

@end

void OrgJsoupNodesTextNode_initWithNSString_withNSString_(OrgJsoupNodesTextNode *self, NSString *text, NSString *baseUri) {
  OrgJsoupNodesNode_init(self);
  JreStrongAssign(&self->baseUri_, baseUri);
  JreStrongAssign(&self->text_, text);
}

OrgJsoupNodesTextNode *new_OrgJsoupNodesTextNode_initWithNSString_withNSString_(NSString *text, NSString *baseUri) {
  J2OBJC_NEW_IMPL(OrgJsoupNodesTextNode, initWithNSString_withNSString_, text, baseUri)
}

OrgJsoupNodesTextNode *create_OrgJsoupNodesTextNode_initWithNSString_withNSString_(NSString *text, NSString *baseUri) {
  J2OBJC_CREATE_IMPL(OrgJsoupNodesTextNode, initWithNSString_withNSString_, text, baseUri)
}

OrgJsoupNodesTextNode *OrgJsoupNodesTextNode_createFromEncodedWithNSString_withNSString_(NSString *encodedText, NSString *baseUri) {
  OrgJsoupNodesTextNode_initialize();
  NSString *text = OrgJsoupNodesEntities_unescapeWithNSString_(encodedText);
  return create_OrgJsoupNodesTextNode_initWithNSString_withNSString_(text, baseUri);
}

NSString *OrgJsoupNodesTextNode_normaliseWhitespaceWithNSString_(NSString *text) {
  OrgJsoupNodesTextNode_initialize();
  text = OrgJsoupHelperStringUtil_normaliseWhitespaceWithNSString_(text);
  return text;
}

NSString *OrgJsoupNodesTextNode_stripLeadingWhitespaceWithNSString_(NSString *text) {
  OrgJsoupNodesTextNode_initialize();
  return [((NSString *) nil_chk(text)) java_replaceFirst:@"^\\s+" withReplacement:@""];
}

jboolean OrgJsoupNodesTextNode_lastCharIsWhitespaceWithJavaLangStringBuilder_(JavaLangStringBuilder *sb) {
  OrgJsoupNodesTextNode_initialize();
  return [((JavaLangStringBuilder *) nil_chk(sb)) java_length] != 0 && [sb charAtWithInt:[sb java_length] - 1] == ' ';
}

void OrgJsoupNodesTextNode_ensureAttributes(OrgJsoupNodesTextNode *self) {
  if (self->attributes_ == nil) {
    JreStrongAssignAndConsume(&self->attributes_, new_OrgJsoupNodesAttributes_init());
    [self->attributes_ putWithNSString:OrgJsoupNodesTextNode_TEXT_KEY withNSString:self->text_];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupNodesTextNode)

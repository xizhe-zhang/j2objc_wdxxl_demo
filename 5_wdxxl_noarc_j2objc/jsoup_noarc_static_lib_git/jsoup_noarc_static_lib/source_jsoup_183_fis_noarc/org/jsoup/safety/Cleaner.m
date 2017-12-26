//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/safety/Cleaner.java
//

#include "J2ObjC_source.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/nodes/Attribute.h"
#include "org/jsoup/nodes/Attributes.h"
#include "org/jsoup/nodes/DataNode.h"
#include "org/jsoup/nodes/Document.h"
#include "org/jsoup/nodes/Element.h"
#include "org/jsoup/nodes/Node.h"
#include "org/jsoup/nodes/TextNode.h"
#include "org/jsoup/parser/Tag.h"
#include "org/jsoup/safety/Cleaner.h"
#include "org/jsoup/safety/Whitelist.h"
#include "org/jsoup/select/NodeTraversor.h"
#include "org/jsoup/select/NodeVisitor.h"

@class OrgJsoupSafetyCleaner_ElementMeta;

@interface OrgJsoupSafetyCleaner () {
 @public
  OrgJsoupSafetyWhitelist *whitelist_;
}

- (jint)copySafeNodesWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)source
                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)dest OBJC_METHOD_FAMILY_NONE;

- (OrgJsoupSafetyCleaner_ElementMeta *)createSafeElementWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)sourceEl;

@end

J2OBJC_FIELD_SETTER(OrgJsoupSafetyCleaner, whitelist_, OrgJsoupSafetyWhitelist *)

__attribute__((unused)) static jint OrgJsoupSafetyCleaner_copySafeNodesWithOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *self, OrgJsoupNodesElement *source, OrgJsoupNodesElement *dest);

__attribute__((unused)) static OrgJsoupSafetyCleaner_ElementMeta *OrgJsoupSafetyCleaner_createSafeElementWithOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *self, OrgJsoupNodesElement *sourceEl);

@interface OrgJsoupSafetyCleaner_CleaningVisitor : NSObject < OrgJsoupSelectNodeVisitor > {
 @public
  OrgJsoupSafetyCleaner *this$0_;
  jint numDiscarded_;
  OrgJsoupNodesElement *root_;
  OrgJsoupNodesElement *destination_;
}

- (instancetype)initWithOrgJsoupSafetyCleaner:(OrgJsoupSafetyCleaner *)outer$
                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)root
                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)destination;

- (void)headWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)source
                          withInt:(jint)depth;

- (void)tailWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)source
                          withInt:(jint)depth;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyCleaner_CleaningVisitor)

J2OBJC_FIELD_SETTER(OrgJsoupSafetyCleaner_CleaningVisitor, root_, OrgJsoupNodesElement *)
J2OBJC_FIELD_SETTER(OrgJsoupSafetyCleaner_CleaningVisitor, destination_, OrgJsoupNodesElement *)

__attribute__((unused)) static void OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner_CleaningVisitor *self, OrgJsoupSafetyCleaner *outer$, OrgJsoupNodesElement *root, OrgJsoupNodesElement *destination);

__attribute__((unused)) static OrgJsoupSafetyCleaner_CleaningVisitor *new_OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *outer$, OrgJsoupNodesElement *root, OrgJsoupNodesElement *destination) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupSafetyCleaner_CleaningVisitor *create_OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *outer$, OrgJsoupNodesElement *root, OrgJsoupNodesElement *destination);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyCleaner_CleaningVisitor)

@interface OrgJsoupSafetyCleaner_ElementMeta : NSObject {
 @public
  OrgJsoupNodesElement *el_;
  jint numAttribsDiscarded_;
}

- (instancetype)initWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)el
                                     withInt:(jint)numAttribsDiscarded;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSafetyCleaner_ElementMeta)

J2OBJC_FIELD_SETTER(OrgJsoupSafetyCleaner_ElementMeta, el_, OrgJsoupNodesElement *)

__attribute__((unused)) static void OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(OrgJsoupSafetyCleaner_ElementMeta *self, OrgJsoupNodesElement *el, jint numAttribsDiscarded);

__attribute__((unused)) static OrgJsoupSafetyCleaner_ElementMeta *new_OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(OrgJsoupNodesElement *el, jint numAttribsDiscarded) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupSafetyCleaner_ElementMeta *create_OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(OrgJsoupNodesElement *el, jint numAttribsDiscarded);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSafetyCleaner_ElementMeta)

@implementation OrgJsoupSafetyCleaner

- (instancetype)initWithOrgJsoupSafetyWhitelist:(OrgJsoupSafetyWhitelist *)whitelist {
  OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(self, whitelist);
  return self;
}

- (OrgJsoupNodesDocument *)cleanWithOrgJsoupNodesDocument:(OrgJsoupNodesDocument *)dirtyDocument {
  OrgJsoupHelperValidate_notNullWithId_(dirtyDocument);
  OrgJsoupNodesDocument *clean = OrgJsoupNodesDocument_createShellWithNSString_([((OrgJsoupNodesDocument *) nil_chk(dirtyDocument)) baseUri]);
  if ([dirtyDocument body] != nil) OrgJsoupSafetyCleaner_copySafeNodesWithOrgJsoupNodesElement_withOrgJsoupNodesElement_(self, [dirtyDocument body], [((OrgJsoupNodesDocument *) nil_chk(clean)) body]);
  return clean;
}

- (jboolean)isValidWithOrgJsoupNodesDocument:(OrgJsoupNodesDocument *)dirtyDocument {
  OrgJsoupHelperValidate_notNullWithId_(dirtyDocument);
  OrgJsoupNodesDocument *clean = OrgJsoupNodesDocument_createShellWithNSString_([((OrgJsoupNodesDocument *) nil_chk(dirtyDocument)) baseUri]);
  jint numDiscarded = OrgJsoupSafetyCleaner_copySafeNodesWithOrgJsoupNodesElement_withOrgJsoupNodesElement_(self, [dirtyDocument body], [((OrgJsoupNodesDocument *) nil_chk(clean)) body]);
  return numDiscarded == 0;
}

- (jint)copySafeNodesWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)source
                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)dest {
  return OrgJsoupSafetyCleaner_copySafeNodesWithOrgJsoupNodesElement_withOrgJsoupNodesElement_(self, source, dest);
}

- (OrgJsoupSafetyCleaner_ElementMeta *)createSafeElementWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)sourceEl {
  return OrgJsoupSafetyCleaner_createSafeElementWithOrgJsoupNodesElement_(self, sourceEl);
}

- (void)dealloc {
  RELEASE_(whitelist_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupSafetyCleaner_ElementMeta;", 0x2, 6, 7, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJsoupSafetyWhitelist:);
  methods[1].selector = @selector(cleanWithOrgJsoupNodesDocument:);
  methods[2].selector = @selector(isValidWithOrgJsoupNodesDocument:);
  methods[3].selector = @selector(copySafeNodesWithOrgJsoupNodesElement:withOrgJsoupNodesElement:);
  methods[4].selector = @selector(createSafeElementWithOrgJsoupNodesElement:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "whitelist_", "LOrgJsoupSafetyWhitelist;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJsoupSafetyWhitelist;", "clean", "LOrgJsoupNodesDocument;", "isValid", "copySafeNodes", "LOrgJsoupNodesElement;LOrgJsoupNodesElement;", "createSafeElement", "LOrgJsoupNodesElement;", "LOrgJsoupSafetyCleaner_CleaningVisitor;LOrgJsoupSafetyCleaner_ElementMeta;" };
  static const J2ObjcClassInfo _OrgJsoupSafetyCleaner = { "Cleaner", "org.jsoup.safety", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, 8, -1, -1, -1 };
  return &_OrgJsoupSafetyCleaner;
}

@end

void OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(OrgJsoupSafetyCleaner *self, OrgJsoupSafetyWhitelist *whitelist) {
  NSObject_init(self);
  OrgJsoupHelperValidate_notNullWithId_(whitelist);
  JreStrongAssign(&self->whitelist_, whitelist);
}

OrgJsoupSafetyCleaner *new_OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(OrgJsoupSafetyWhitelist *whitelist) {
  J2OBJC_NEW_IMPL(OrgJsoupSafetyCleaner, initWithOrgJsoupSafetyWhitelist_, whitelist)
}

OrgJsoupSafetyCleaner *create_OrgJsoupSafetyCleaner_initWithOrgJsoupSafetyWhitelist_(OrgJsoupSafetyWhitelist *whitelist) {
  J2OBJC_CREATE_IMPL(OrgJsoupSafetyCleaner, initWithOrgJsoupSafetyWhitelist_, whitelist)
}

jint OrgJsoupSafetyCleaner_copySafeNodesWithOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *self, OrgJsoupNodesElement *source, OrgJsoupNodesElement *dest) {
  OrgJsoupSafetyCleaner_CleaningVisitor *cleaningVisitor = create_OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(self, source, dest);
  OrgJsoupSelectNodeTraversor *traversor = create_OrgJsoupSelectNodeTraversor_initWithOrgJsoupSelectNodeVisitor_(cleaningVisitor);
  [traversor traverseWithOrgJsoupNodesNode:source];
  return cleaningVisitor->numDiscarded_;
}

OrgJsoupSafetyCleaner_ElementMeta *OrgJsoupSafetyCleaner_createSafeElementWithOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *self, OrgJsoupNodesElement *sourceEl) {
  NSString *sourceTag = [((OrgJsoupNodesElement *) nil_chk(sourceEl)) tagName];
  OrgJsoupNodesAttributes *destAttrs = create_OrgJsoupNodesAttributes_init();
  OrgJsoupNodesElement *dest = create_OrgJsoupNodesElement_initWithOrgJsoupParserTag_withNSString_withOrgJsoupNodesAttributes_(OrgJsoupParserTag_valueOfWithNSString_(sourceTag), [sourceEl baseUri], destAttrs);
  jint numDiscarded = 0;
  OrgJsoupNodesAttributes *sourceAttrs = [sourceEl attributes];
  for (OrgJsoupNodesAttribute * __strong sourceAttr in nil_chk(sourceAttrs)) {
    if ([((OrgJsoupSafetyWhitelist *) nil_chk(self->whitelist_)) isSafeAttributeWithNSString:sourceTag withOrgJsoupNodesElement:sourceEl withOrgJsoupNodesAttribute:sourceAttr]) [destAttrs putWithOrgJsoupNodesAttribute:sourceAttr];
    else numDiscarded++;
  }
  OrgJsoupNodesAttributes *enforcedAttrs = [((OrgJsoupSafetyWhitelist *) nil_chk(self->whitelist_)) getEnforcedAttributesWithNSString:sourceTag];
  [destAttrs addAllWithOrgJsoupNodesAttributes:enforcedAttrs];
  return create_OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(dest, numDiscarded);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupSafetyCleaner)

@implementation OrgJsoupSafetyCleaner_CleaningVisitor

- (instancetype)initWithOrgJsoupSafetyCleaner:(OrgJsoupSafetyCleaner *)outer$
                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)root
                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)destination {
  OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(self, outer$, root, destination);
  return self;
}

- (void)headWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)source
                          withInt:(jint)depth {
  if ([source isKindOfClass:[OrgJsoupNodesElement class]]) {
    OrgJsoupNodesElement *sourceEl = (OrgJsoupNodesElement *) cast_chk(source, [OrgJsoupNodesElement class]);
    if ([((OrgJsoupSafetyWhitelist *) nil_chk(this$0_->whitelist_)) isSafeTagWithNSString:[((OrgJsoupNodesElement *) nil_chk(sourceEl)) tagName]]) {
      OrgJsoupSafetyCleaner_ElementMeta *meta = OrgJsoupSafetyCleaner_createSafeElementWithOrgJsoupNodesElement_(this$0_, sourceEl);
      OrgJsoupNodesElement *destChild = ((OrgJsoupSafetyCleaner_ElementMeta *) nil_chk(meta))->el_;
      [((OrgJsoupNodesElement *) nil_chk(destination_)) appendChildWithOrgJsoupNodesNode:destChild];
      numDiscarded_ += meta->numAttribsDiscarded_;
      JreStrongAssign(&destination_, destChild);
    }
    else if (source != root_) {
      numDiscarded_++;
    }
  }
  else if ([source isKindOfClass:[OrgJsoupNodesTextNode class]]) {
    OrgJsoupNodesTextNode *sourceText = (OrgJsoupNodesTextNode *) cast_chk(source, [OrgJsoupNodesTextNode class]);
    OrgJsoupNodesTextNode *destText = create_OrgJsoupNodesTextNode_initWithNSString_withNSString_([((OrgJsoupNodesTextNode *) nil_chk(sourceText)) getWholeText], [((OrgJsoupNodesNode *) nil_chk(source)) baseUri]);
    [((OrgJsoupNodesElement *) nil_chk(destination_)) appendChildWithOrgJsoupNodesNode:destText];
  }
  else if ([source isKindOfClass:[OrgJsoupNodesDataNode class]] && [((OrgJsoupSafetyWhitelist *) nil_chk(this$0_->whitelist_)) isSafeTagWithNSString:[((OrgJsoupNodesNode *) nil_chk([((OrgJsoupNodesNode *) nil_chk(source)) parent])) nodeName]]) {
    OrgJsoupNodesDataNode *sourceData = (OrgJsoupNodesDataNode *) cast_chk(source, [OrgJsoupNodesDataNode class]);
    OrgJsoupNodesDataNode *destData = create_OrgJsoupNodesDataNode_initWithNSString_withNSString_([((OrgJsoupNodesDataNode *) nil_chk(sourceData)) getWholeData], [((OrgJsoupNodesNode *) nil_chk(source)) baseUri]);
    [((OrgJsoupNodesElement *) nil_chk(destination_)) appendChildWithOrgJsoupNodesNode:destData];
  }
  else {
    numDiscarded_++;
  }
}

- (void)tailWithOrgJsoupNodesNode:(OrgJsoupNodesNode *)source
                          withInt:(jint)depth {
  if ([source isKindOfClass:[OrgJsoupNodesElement class]] && [((OrgJsoupSafetyWhitelist *) nil_chk(this$0_->whitelist_)) isSafeTagWithNSString:[((OrgJsoupNodesNode *) nil_chk(source)) nodeName]]) {
    JreStrongAssign(&destination_, [((OrgJsoupNodesElement *) nil_chk(destination_)) parent]);
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(root_);
  RELEASE_(destination_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJsoupSafetyCleaner:withOrgJsoupNodesElement:withOrgJsoupNodesElement:);
  methods[1].selector = @selector(headWithOrgJsoupNodesNode:withInt:);
  methods[2].selector = @selector(tailWithOrgJsoupNodesNode:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgJsoupSafetyCleaner;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "numDiscarded_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "root_", "LOrgJsoupNodesElement;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "destination_", "LOrgJsoupNodesElement;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJsoupNodesElement;LOrgJsoupNodesElement;", "head", "LOrgJsoupNodesNode;I", "tail", "LOrgJsoupSafetyCleaner;" };
  static const J2ObjcClassInfo _OrgJsoupSafetyCleaner_CleaningVisitor = { "CleaningVisitor", "org.jsoup.safety", ptrTable, methods, fields, 7, 0x12, 3, 4, 4, -1, -1, -1, -1 };
  return &_OrgJsoupSafetyCleaner_CleaningVisitor;
}

@end

void OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner_CleaningVisitor *self, OrgJsoupSafetyCleaner *outer$, OrgJsoupNodesElement *root, OrgJsoupNodesElement *destination) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  self->numDiscarded_ = 0;
  JreStrongAssign(&self->root_, root);
  JreStrongAssign(&self->destination_, destination);
}

OrgJsoupSafetyCleaner_CleaningVisitor *new_OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *outer$, OrgJsoupNodesElement *root, OrgJsoupNodesElement *destination) {
  J2OBJC_NEW_IMPL(OrgJsoupSafetyCleaner_CleaningVisitor, initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_, outer$, root, destination)
}

OrgJsoupSafetyCleaner_CleaningVisitor *create_OrgJsoupSafetyCleaner_CleaningVisitor_initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_(OrgJsoupSafetyCleaner *outer$, OrgJsoupNodesElement *root, OrgJsoupNodesElement *destination) {
  J2OBJC_CREATE_IMPL(OrgJsoupSafetyCleaner_CleaningVisitor, initWithOrgJsoupSafetyCleaner_withOrgJsoupNodesElement_withOrgJsoupNodesElement_, outer$, root, destination)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupSafetyCleaner_CleaningVisitor)

@implementation OrgJsoupSafetyCleaner_ElementMeta

- (instancetype)initWithOrgJsoupNodesElement:(OrgJsoupNodesElement *)el
                                     withInt:(jint)numAttribsDiscarded {
  OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(self, el, numAttribsDiscarded);
  return self;
}

- (void)dealloc {
  RELEASE_(el_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithOrgJsoupNodesElement:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "el_", "LOrgJsoupNodesElement;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "numAttribsDiscarded_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgJsoupNodesElement;I", "LOrgJsoupSafetyCleaner;" };
  static const J2ObjcClassInfo _OrgJsoupSafetyCleaner_ElementMeta = { "ElementMeta", "org.jsoup.safety", ptrTable, methods, fields, 7, 0xa, 1, 2, 1, -1, -1, -1, -1 };
  return &_OrgJsoupSafetyCleaner_ElementMeta;
}

@end

void OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(OrgJsoupSafetyCleaner_ElementMeta *self, OrgJsoupNodesElement *el, jint numAttribsDiscarded) {
  NSObject_init(self);
  JreStrongAssign(&self->el_, el);
  self->numAttribsDiscarded_ = numAttribsDiscarded;
}

OrgJsoupSafetyCleaner_ElementMeta *new_OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(OrgJsoupNodesElement *el, jint numAttribsDiscarded) {
  J2OBJC_NEW_IMPL(OrgJsoupSafetyCleaner_ElementMeta, initWithOrgJsoupNodesElement_withInt_, el, numAttribsDiscarded)
}

OrgJsoupSafetyCleaner_ElementMeta *create_OrgJsoupSafetyCleaner_ElementMeta_initWithOrgJsoupNodesElement_withInt_(OrgJsoupNodesElement *el, jint numAttribsDiscarded) {
  J2OBJC_CREATE_IMPL(OrgJsoupSafetyCleaner_ElementMeta, initWithOrgJsoupNodesElement_withInt_, el, numAttribsDiscarded)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupSafetyCleaner_ElementMeta)

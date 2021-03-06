//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/select/Selector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJsoupSelectSelector")
#ifdef RESTRICT_OrgJsoupSelectSelector
#define INCLUDE_ALL_OrgJsoupSelectSelector 0
#else
#define INCLUDE_ALL_OrgJsoupSelectSelector 1
#endif
#undef RESTRICT_OrgJsoupSelectSelector

#if !defined (OrgJsoupSelectSelector_) && (INCLUDE_ALL_OrgJsoupSelectSelector || defined(INCLUDE_OrgJsoupSelectSelector))
#define OrgJsoupSelectSelector_

@class OrgJsoupNodesElement;
@class OrgJsoupSelectElements;
@class OrgJsoupSelectEvaluator;
@protocol JavaLangIterable;
@protocol JavaUtilCollection;

@interface OrgJsoupSelectSelector : NSObject

#pragma mark Public

+ (OrgJsoupSelectElements *)selectWithOrgJsoupSelectEvaluator:(OrgJsoupSelectEvaluator *)evaluator
                                     withOrgJsoupNodesElement:(OrgJsoupNodesElement *)root;

+ (OrgJsoupSelectElements *)selectWithNSString:(NSString *)query
                      withOrgJsoupNodesElement:(OrgJsoupNodesElement *)root;

+ (OrgJsoupSelectElements *)selectWithNSString:(NSString *)query
                          withJavaLangIterable:(id<JavaLangIterable>)roots;

#pragma mark Package-Private

+ (OrgJsoupSelectElements *)filterOutWithJavaUtilCollection:(id<JavaUtilCollection>)elements
                                     withJavaUtilCollection:(id<JavaUtilCollection>)outs;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSelectSelector)

FOUNDATION_EXPORT OrgJsoupSelectElements *OrgJsoupSelectSelector_selectWithNSString_withOrgJsoupNodesElement_(NSString *query, OrgJsoupNodesElement *root);

FOUNDATION_EXPORT OrgJsoupSelectElements *OrgJsoupSelectSelector_selectWithOrgJsoupSelectEvaluator_withOrgJsoupNodesElement_(OrgJsoupSelectEvaluator *evaluator, OrgJsoupNodesElement *root);

FOUNDATION_EXPORT OrgJsoupSelectElements *OrgJsoupSelectSelector_selectWithNSString_withJavaLangIterable_(NSString *query, id<JavaLangIterable> roots);

FOUNDATION_EXPORT OrgJsoupSelectElements *OrgJsoupSelectSelector_filterOutWithJavaUtilCollection_withJavaUtilCollection_(id<JavaUtilCollection> elements, id<JavaUtilCollection> outs);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSelectSelector)

#endif

#if !defined (OrgJsoupSelectSelector_SelectorParseException_) && (INCLUDE_ALL_OrgJsoupSelectSelector || defined(INCLUDE_OrgJsoupSelectSelector_SelectorParseException))
#define OrgJsoupSelectSelector_SelectorParseException_

#define RESTRICT_JavaLangIllegalStateException 1
#define INCLUDE_JavaLangIllegalStateException 1
#include "java/lang/IllegalStateException.h"

@class IOSObjectArray;
@class JavaLangThrowable;

@interface OrgJsoupSelectSelector_SelectorParseException : JavaLangIllegalStateException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)msg
               withNSObjectArray:(IOSObjectArray *)params;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithNSString:(NSString *)arg0
           withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJsoupSelectSelector_SelectorParseException)

FOUNDATION_EXPORT void OrgJsoupSelectSelector_SelectorParseException_initWithNSString_withNSObjectArray_(OrgJsoupSelectSelector_SelectorParseException *self, NSString *msg, IOSObjectArray *params);

FOUNDATION_EXPORT OrgJsoupSelectSelector_SelectorParseException *new_OrgJsoupSelectSelector_SelectorParseException_initWithNSString_withNSObjectArray_(NSString *msg, IOSObjectArray *params) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJsoupSelectSelector_SelectorParseException *create_OrgJsoupSelectSelector_SelectorParseException_initWithNSString_withNSObjectArray_(NSString *msg, IOSObjectArray *params);

J2OBJC_TYPE_LITERAL_HEADER(OrgJsoupSelectSelector_SelectorParseException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJsoupSelectSelector")

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-grouping-3.5.0-sources.jar!org/apache/lucene/util/fst/PairOutputs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstPairOutputs")
#ifdef RESTRICT_OrgApacheLuceneUtilFstPairOutputs
#define INCLUDE_ALL_OrgApacheLuceneUtilFstPairOutputs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstPairOutputs 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstPairOutputs

#if !defined (OrgApacheLuceneUtilFstPairOutputs_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstPairOutputs || defined(INCLUDE_OrgApacheLuceneUtilFstPairOutputs))
#define OrgApacheLuceneUtilFstPairOutputs_

#define RESTRICT_OrgApacheLuceneUtilFstOutputs 1
#define INCLUDE_OrgApacheLuceneUtilFstOutputs 1
#include "org/apache/lucene/util/fst/Outputs.h"

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneUtilFstPairOutputs_Pair;

@interface OrgApacheLuceneUtilFstPairOutputs : OrgApacheLuceneUtilFstOutputs

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs1
                    withOrgApacheLuceneUtilFstOutputs:(OrgApacheLuceneUtilFstOutputs *)outputs2;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)addWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)prefix
                                               withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)commonWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair1
                                                  withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)pair2;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)getWithId:(id)output1
                                               withId:(id)output2;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)getNoOutput;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)mergeWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)arg0
                                                 withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)arg1;

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (OrgApacheLuceneUtilFstPairOutputs_Pair *)subtractWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output
                                                    withId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)inc;

- (void)writeWithId:(OrgApacheLuceneUtilFstPairOutputs_Pair *)output
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)writer;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstPairOutputs)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstPairOutputs *self, OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstPairOutputs *new_OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstPairOutputs *create_OrgApacheLuceneUtilFstPairOutputs_initWithOrgApacheLuceneUtilFstOutputs_withOrgApacheLuceneUtilFstOutputs_(OrgApacheLuceneUtilFstOutputs *outputs1, OrgApacheLuceneUtilFstOutputs *outputs2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstPairOutputs)

#endif

#if !defined (OrgApacheLuceneUtilFstPairOutputs_Pair_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstPairOutputs || defined(INCLUDE_OrgApacheLuceneUtilFstPairOutputs_Pair))
#define OrgApacheLuceneUtilFstPairOutputs_Pair_

@interface OrgApacheLuceneUtilFstPairOutputs_Pair : NSObject {
 @public
  id output1_;
  id output2_;
}

#pragma mark Public

- (instancetype)initWithId:(id)output1
                    withId:(id)output2;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstPairOutputs_Pair)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs_Pair, output1_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstPairOutputs_Pair, output2_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(OrgApacheLuceneUtilFstPairOutputs_Pair *self, id output1, id output2);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstPairOutputs_Pair *new_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstPairOutputs_Pair *create_OrgApacheLuceneUtilFstPairOutputs_Pair_initWithId_withId_(id output1, id output2);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstPairOutputs_Pair)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstPairOutputs")

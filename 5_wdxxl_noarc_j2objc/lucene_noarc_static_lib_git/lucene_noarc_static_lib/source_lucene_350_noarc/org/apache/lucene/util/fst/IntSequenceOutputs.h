//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:lucene-core-3.5.0-sources.jar!org/apache/lucene/util/fst/IntSequenceOutputs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstIntSequenceOutputs")
#ifdef RESTRICT_OrgApacheLuceneUtilFstIntSequenceOutputs
#define INCLUDE_ALL_OrgApacheLuceneUtilFstIntSequenceOutputs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstIntSequenceOutputs 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstIntSequenceOutputs

#if !defined (OrgApacheLuceneUtilFstIntSequenceOutputs_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstIntSequenceOutputs || defined(INCLUDE_OrgApacheLuceneUtilFstIntSequenceOutputs))
#define OrgApacheLuceneUtilFstIntSequenceOutputs_

#define RESTRICT_OrgApacheLuceneUtilFstOutputs 1
#define INCLUDE_OrgApacheLuceneUtilFstOutputs 1
#include "org/apache/lucene/util/fst/Outputs.h"

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneUtilIntsRef;

@interface OrgApacheLuceneUtilFstIntSequenceOutputs : OrgApacheLuceneUtilFstOutputs

#pragma mark Public

- (OrgApacheLuceneUtilIntsRef *)addWithId:(OrgApacheLuceneUtilIntsRef *)prefix
                                   withId:(OrgApacheLuceneUtilIntsRef *)output;

- (OrgApacheLuceneUtilIntsRef *)commonWithId:(OrgApacheLuceneUtilIntsRef *)output1
                                      withId:(OrgApacheLuceneUtilIntsRef *)output2;

- (OrgApacheLuceneUtilIntsRef *)getNoOutput;

+ (OrgApacheLuceneUtilFstIntSequenceOutputs *)getSingleton;

- (OrgApacheLuceneUtilIntsRef *)mergeWithId:(OrgApacheLuceneUtilIntsRef *)arg0
                                     withId:(OrgApacheLuceneUtilIntsRef *)arg1;

- (NSString *)outputToStringWithId:(OrgApacheLuceneUtilIntsRef *)output;

- (OrgApacheLuceneUtilIntsRef *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg;

- (OrgApacheLuceneUtilIntsRef *)subtractWithId:(OrgApacheLuceneUtilIntsRef *)output
                                        withId:(OrgApacheLuceneUtilIntsRef *)inc;

- (void)writeWithId:(OrgApacheLuceneUtilIntsRef *)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilFstIntSequenceOutputs)

FOUNDATION_EXPORT OrgApacheLuceneUtilFstIntSequenceOutputs *OrgApacheLuceneUtilFstIntSequenceOutputs_getSingleton(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstIntSequenceOutputs)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstIntSequenceOutputs")

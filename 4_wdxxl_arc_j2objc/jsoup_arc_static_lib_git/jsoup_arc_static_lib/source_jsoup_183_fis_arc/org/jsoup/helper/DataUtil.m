//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: jar:file:jsoup-1.8.3-fis-sources.jar!org/jsoup/helper/DataUtil.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/File.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/io/RandomAccessFile.h"
#include "java/lang/StringBuilder.h"
#include "java/nio/Buffer.h"
#include "java/nio/ByteBuffer.h"
#include "java/nio/CharBuffer.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/IllegalCharsetNameException.h"
#include "java/util/Locale.h"
#include "java/util/Random.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "org/jsoup/helper/DataUtil.h"
#include "org/jsoup/helper/Validate.h"
#include "org/jsoup/nodes/Document.h"
#include "org/jsoup/nodes/Element.h"
#include "org/jsoup/parser/Parser.h"
#include "org/jsoup/select/Elements.h"

@interface OrgJsoupHelperDataUtil ()

- (instancetype)init;

@end

inline JavaUtilRegexPattern *OrgJsoupHelperDataUtil_get_charsetPattern(void);
static JavaUtilRegexPattern *OrgJsoupHelperDataUtil_charsetPattern;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupHelperDataUtil, charsetPattern, JavaUtilRegexPattern *)

inline jint OrgJsoupHelperDataUtil_get_bufferSize(void);
#define OrgJsoupHelperDataUtil_bufferSize 131072
J2OBJC_STATIC_FIELD_CONSTANT(OrgJsoupHelperDataUtil, bufferSize, jint)

inline jint OrgJsoupHelperDataUtil_get_UNICODE_BOM(void);
#define OrgJsoupHelperDataUtil_UNICODE_BOM 65279
J2OBJC_STATIC_FIELD_CONSTANT(OrgJsoupHelperDataUtil, UNICODE_BOM, jint)

inline IOSCharArray *OrgJsoupHelperDataUtil_get_mimeBoundaryChars(void);
static IOSCharArray *OrgJsoupHelperDataUtil_mimeBoundaryChars;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJsoupHelperDataUtil, mimeBoundaryChars, IOSCharArray *)

__attribute__((unused)) static void OrgJsoupHelperDataUtil_init(OrgJsoupHelperDataUtil *self);

__attribute__((unused)) static OrgJsoupHelperDataUtil *new_OrgJsoupHelperDataUtil_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJsoupHelperDataUtil *create_OrgJsoupHelperDataUtil_init(void);

J2OBJC_INITIALIZED_DEFN(OrgJsoupHelperDataUtil)

NSString *OrgJsoupHelperDataUtil_defaultCharset = @"UTF-8";

@implementation OrgJsoupHelperDataUtil

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJsoupHelperDataUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgJsoupNodesDocument *)load__WithJavaIoFile:(JavaIoFile *)inArg
                                   withNSString:(NSString *)charsetName
                                   withNSString:(NSString *)baseUri {
  return OrgJsoupHelperDataUtil_load__WithJavaIoFile_withNSString_withNSString_(inArg, charsetName, baseUri);
}

+ (OrgJsoupNodesDocument *)load__WithJavaIoInputStream:(JavaIoInputStream *)inArg
                                          withNSString:(NSString *)charsetName
                                          withNSString:(NSString *)baseUri {
  return OrgJsoupHelperDataUtil_load__WithJavaIoInputStream_withNSString_withNSString_(inArg, charsetName, baseUri);
}

+ (OrgJsoupNodesDocument *)load__WithJavaIoInputStream:(JavaIoInputStream *)inArg
                                          withNSString:(NSString *)charsetName
                                          withNSString:(NSString *)baseUri
                              withOrgJsoupParserParser:(OrgJsoupParserParser *)parser {
  return OrgJsoupHelperDataUtil_load__WithJavaIoInputStream_withNSString_withNSString_withOrgJsoupParserParser_(inArg, charsetName, baseUri, parser);
}

+ (void)crossStreamsWithJavaIoInputStream:(JavaIoInputStream *)inArg
                   withJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  OrgJsoupHelperDataUtil_crossStreamsWithJavaIoInputStream_withJavaIoOutputStream_(inArg, outArg);
}

+ (OrgJsoupNodesDocument *)parseByteDataWithJavaNioByteBuffer:(JavaNioByteBuffer *)byteData
                                                 withNSString:(NSString *)charsetName
                                                 withNSString:(NSString *)baseUri
                                     withOrgJsoupParserParser:(OrgJsoupParserParser *)parser {
  return OrgJsoupHelperDataUtil_parseByteDataWithJavaNioByteBuffer_withNSString_withNSString_withOrgJsoupParserParser_(byteData, charsetName, baseUri, parser);
}

+ (JavaNioByteBuffer *)readToByteBufferWithJavaIoInputStream:(JavaIoInputStream *)inStream
                                                     withInt:(jint)maxSize {
  return OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_withInt_(inStream, maxSize);
}

+ (JavaNioByteBuffer *)readToByteBufferWithJavaIoInputStream:(JavaIoInputStream *)inStream {
  return OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_(inStream);
}

+ (JavaNioByteBuffer *)readFileToByteBufferWithJavaIoFile:(JavaIoFile *)file {
  return OrgJsoupHelperDataUtil_readFileToByteBufferWithJavaIoFile_(file);
}

+ (JavaNioByteBuffer *)emptyByteBuffer {
  return OrgJsoupHelperDataUtil_emptyByteBuffer();
}

+ (NSString *)getCharsetFromContentTypeWithNSString:(NSString *)contentType {
  return OrgJsoupHelperDataUtil_getCharsetFromContentTypeWithNSString_(contentType);
}

+ (NSString *)mimeBoundary {
  return OrgJsoupHelperDataUtil_mimeBoundary();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument;", 0x9, 0, 3, 2, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument;", 0x9, 0, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x8, 5, 6, 2, -1, -1, -1 },
    { NULL, "LOrgJsoupNodesDocument;", 0x8, 7, 8, -1, -1, -1, -1 },
    { NULL, "LJavaNioByteBuffer;", 0x8, 9, 10, 2, -1, -1, -1 },
    { NULL, "LJavaNioByteBuffer;", 0x8, 9, 11, 2, -1, -1, -1 },
    { NULL, "LJavaNioByteBuffer;", 0x8, 12, 13, 2, -1, -1, -1 },
    { NULL, "LJavaNioByteBuffer;", 0x8, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, 14, 15, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x8, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(load__WithJavaIoFile:withNSString:withNSString:);
  methods[2].selector = @selector(load__WithJavaIoInputStream:withNSString:withNSString:);
  methods[3].selector = @selector(load__WithJavaIoInputStream:withNSString:withNSString:withOrgJsoupParserParser:);
  methods[4].selector = @selector(crossStreamsWithJavaIoInputStream:withJavaIoOutputStream:);
  methods[5].selector = @selector(parseByteDataWithJavaNioByteBuffer:withNSString:withNSString:withOrgJsoupParserParser:);
  methods[6].selector = @selector(readToByteBufferWithJavaIoInputStream:withInt:);
  methods[7].selector = @selector(readToByteBufferWithJavaIoInputStream:);
  methods[8].selector = @selector(readFileToByteBufferWithJavaIoFile:);
  methods[9].selector = @selector(emptyByteBuffer);
  methods[10].selector = @selector(getCharsetFromContentTypeWithNSString:);
  methods[11].selector = @selector(mimeBoundary);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "charsetPattern", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "defaultCharset", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 17, -1, -1 },
    { "bufferSize", "I", .constantValue.asInt = OrgJsoupHelperDataUtil_bufferSize, 0x1a, -1, -1, -1, -1 },
    { "UNICODE_BOM", "I", .constantValue.asInt = OrgJsoupHelperDataUtil_UNICODE_BOM, 0x1a, -1, -1, -1, -1 },
    { "mimeBoundaryChars", "[C", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
    { "boundaryLength", "I", .constantValue.asInt = OrgJsoupHelperDataUtil_boundaryLength, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "load", "LJavaIoFile;LNSString;LNSString;", "LJavaIoIOException;", "LJavaIoInputStream;LNSString;LNSString;", "LJavaIoInputStream;LNSString;LNSString;LOrgJsoupParserParser;", "crossStreams", "LJavaIoInputStream;LJavaIoOutputStream;", "parseByteData", "LJavaNioByteBuffer;LNSString;LNSString;LOrgJsoupParserParser;", "readToByteBuffer", "LJavaIoInputStream;I", "LJavaIoInputStream;", "readFileToByteBuffer", "LJavaIoFile;", "getCharsetFromContentType", "LNSString;", &OrgJsoupHelperDataUtil_charsetPattern, &OrgJsoupHelperDataUtil_defaultCharset, &OrgJsoupHelperDataUtil_mimeBoundaryChars };
  static const J2ObjcClassInfo _OrgJsoupHelperDataUtil = { "DataUtil", "org.jsoup.helper", ptrTable, methods, fields, 7, 0x11, 12, 6, -1, -1, -1, -1, -1 };
  return &_OrgJsoupHelperDataUtil;
}

+ (void)initialize {
  if (self == [OrgJsoupHelperDataUtil class]) {
    OrgJsoupHelperDataUtil_charsetPattern = JavaUtilRegexPattern_compileWithNSString_(@"(?i)\\bcharset=\\s*(?:\"|')?([^\\s,;\"']*)");
    OrgJsoupHelperDataUtil_mimeBoundaryChars = [@"-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" java_toCharArray];
    J2OBJC_SET_INITIALIZED(OrgJsoupHelperDataUtil)
  }
}

@end

void OrgJsoupHelperDataUtil_init(OrgJsoupHelperDataUtil *self) {
  NSObject_init(self);
}

OrgJsoupHelperDataUtil *new_OrgJsoupHelperDataUtil_init() {
  J2OBJC_NEW_IMPL(OrgJsoupHelperDataUtil, init)
}

OrgJsoupHelperDataUtil *create_OrgJsoupHelperDataUtil_init() {
  J2OBJC_CREATE_IMPL(OrgJsoupHelperDataUtil, init)
}

OrgJsoupNodesDocument *OrgJsoupHelperDataUtil_load__WithJavaIoFile_withNSString_withNSString_(JavaIoFile *inArg, NSString *charsetName, NSString *baseUri) {
  OrgJsoupHelperDataUtil_initialize();
  JavaNioByteBuffer *byteData = OrgJsoupHelperDataUtil_readFileToByteBufferWithJavaIoFile_(inArg);
  return OrgJsoupHelperDataUtil_parseByteDataWithJavaNioByteBuffer_withNSString_withNSString_withOrgJsoupParserParser_(byteData, charsetName, baseUri, OrgJsoupParserParser_htmlParser());
}

OrgJsoupNodesDocument *OrgJsoupHelperDataUtil_load__WithJavaIoInputStream_withNSString_withNSString_(JavaIoInputStream *inArg, NSString *charsetName, NSString *baseUri) {
  OrgJsoupHelperDataUtil_initialize();
  JavaNioByteBuffer *byteData = OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_(inArg);
  return OrgJsoupHelperDataUtil_parseByteDataWithJavaNioByteBuffer_withNSString_withNSString_withOrgJsoupParserParser_(byteData, charsetName, baseUri, OrgJsoupParserParser_htmlParser());
}

OrgJsoupNodesDocument *OrgJsoupHelperDataUtil_load__WithJavaIoInputStream_withNSString_withNSString_withOrgJsoupParserParser_(JavaIoInputStream *inArg, NSString *charsetName, NSString *baseUri, OrgJsoupParserParser *parser) {
  OrgJsoupHelperDataUtil_initialize();
  JavaNioByteBuffer *byteData = OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_(inArg);
  return OrgJsoupHelperDataUtil_parseByteDataWithJavaNioByteBuffer_withNSString_withNSString_withOrgJsoupParserParser_(byteData, charsetName, baseUri, parser);
}

void OrgJsoupHelperDataUtil_crossStreamsWithJavaIoInputStream_withJavaIoOutputStream_(JavaIoInputStream *inArg, JavaIoOutputStream *outArg) {
  OrgJsoupHelperDataUtil_initialize();
  IOSByteArray *buffer = [IOSByteArray newArrayWithLength:OrgJsoupHelperDataUtil_bufferSize];
  jint len;
  while ((len = [((JavaIoInputStream *) nil_chk(inArg)) readWithByteArray:buffer]) != -1) {
    [((JavaIoOutputStream *) nil_chk(outArg)) writeWithByteArray:buffer withInt:0 withInt:len];
  }
}

OrgJsoupNodesDocument *OrgJsoupHelperDataUtil_parseByteDataWithJavaNioByteBuffer_withNSString_withNSString_withOrgJsoupParserParser_(JavaNioByteBuffer *byteData, NSString *charsetName, NSString *baseUri, OrgJsoupParserParser *parser) {
  OrgJsoupHelperDataUtil_initialize();
  NSString *docData;
  OrgJsoupNodesDocument *doc = nil;
  if (charsetName == nil) {
    docData = [((JavaNioCharBuffer *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JavaNioCharsetCharset_forNameWithNSString_(OrgJsoupHelperDataUtil_defaultCharset))) decodeWithJavaNioByteBuffer:byteData])) description];
    doc = [((OrgJsoupParserParser *) nil_chk(parser)) parseInputWithNSString:docData withNSString:baseUri];
    OrgJsoupNodesElement *meta = [((OrgJsoupSelectElements *) nil_chk([((OrgJsoupNodesDocument *) nil_chk(doc)) selectWithNSString:@"meta[http-equiv=content-type], meta[charset]"])) first];
    if (meta != nil) {
      NSString *foundCharset = nil;
      if ([meta hasAttrWithNSString:@"http-equiv"]) {
        foundCharset = OrgJsoupHelperDataUtil_getCharsetFromContentTypeWithNSString_([meta attrWithNSString:@"content"]);
      }
      if (foundCharset == nil && [meta hasAttrWithNSString:@"charset"]) {
        @try {
          if (JavaNioCharsetCharset_isSupportedWithNSString_([meta attrWithNSString:@"charset"])) {
            foundCharset = [meta attrWithNSString:@"charset"];
          }
        }
        @catch (JavaNioCharsetIllegalCharsetNameException *e) {
          foundCharset = nil;
        }
      }
      if (foundCharset != nil && [foundCharset java_length] != 0 && ![foundCharset isEqual:OrgJsoupHelperDataUtil_defaultCharset]) {
        foundCharset = [((NSString *) nil_chk([foundCharset java_trim])) java_replaceAll:@"[\"']" withReplacement:@""];
        charsetName = foundCharset;
        (void) [((JavaNioByteBuffer *) nil_chk(byteData)) rewind];
        docData = [((JavaNioCharBuffer *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JavaNioCharsetCharset_forNameWithNSString_(foundCharset))) decodeWithJavaNioByteBuffer:byteData])) description];
        doc = nil;
      }
    }
  }
  else {
    OrgJsoupHelperValidate_notEmptyWithNSString_withNSString_(charsetName, @"Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
    docData = [((JavaNioCharBuffer *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JavaNioCharsetCharset_forNameWithNSString_(charsetName))) decodeWithJavaNioByteBuffer:byteData])) description];
  }
  if ([((NSString *) nil_chk(docData)) java_length] > 0 && [docData charAtWithInt:0] == OrgJsoupHelperDataUtil_UNICODE_BOM) {
    (void) [((JavaNioByteBuffer *) nil_chk(byteData)) rewind];
    docData = [((JavaNioCharBuffer *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JavaNioCharsetCharset_forNameWithNSString_(OrgJsoupHelperDataUtil_defaultCharset))) decodeWithJavaNioByteBuffer:byteData])) description];
    docData = [((NSString *) nil_chk(docData)) java_substring:1];
    charsetName = OrgJsoupHelperDataUtil_defaultCharset;
    doc = nil;
  }
  if (doc == nil) {
    doc = [((OrgJsoupParserParser *) nil_chk(parser)) parseInputWithNSString:docData withNSString:baseUri];
    (void) [((OrgJsoupNodesDocument_OutputSettings *) nil_chk([((OrgJsoupNodesDocument *) nil_chk(doc)) outputSettings])) charsetWithNSString:charsetName];
  }
  return doc;
}

JavaNioByteBuffer *OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_withInt_(JavaIoInputStream *inStream, jint maxSize) {
  OrgJsoupHelperDataUtil_initialize();
  OrgJsoupHelperValidate_isTrueWithBoolean_withNSString_(maxSize >= 0, @"maxSize must be 0 (unlimited) or larger");
  jboolean capped = maxSize > 0;
  IOSByteArray *buffer = [IOSByteArray newArrayWithLength:OrgJsoupHelperDataUtil_bufferSize];
  JavaIoByteArrayOutputStream *outStream = new_JavaIoByteArrayOutputStream_initWithInt_(OrgJsoupHelperDataUtil_bufferSize);
  jint read;
  jint remaining = maxSize;
  while (true) {
    read = [((JavaIoInputStream *) nil_chk(inStream)) readWithByteArray:buffer];
    if (read == -1) break;
    if (capped) {
      if (read > remaining) {
        [outStream writeWithByteArray:buffer withInt:0 withInt:remaining];
        break;
      }
      remaining -= read;
    }
    [outStream writeWithByteArray:buffer withInt:0 withInt:read];
  }
  return JavaNioByteBuffer_wrapWithByteArray_([outStream toByteArray]);
}

JavaNioByteBuffer *OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_(JavaIoInputStream *inStream) {
  OrgJsoupHelperDataUtil_initialize();
  return OrgJsoupHelperDataUtil_readToByteBufferWithJavaIoInputStream_withInt_(inStream, 0);
}

JavaNioByteBuffer *OrgJsoupHelperDataUtil_readFileToByteBufferWithJavaIoFile_(JavaIoFile *file) {
  OrgJsoupHelperDataUtil_initialize();
  JavaIoRandomAccessFile *randomAccessFile = nil;
  @try {
    randomAccessFile = new_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(file, @"r");
    IOSByteArray *bytes = [IOSByteArray newArrayWithLength:(jint) [randomAccessFile length]];
    [randomAccessFile readFullyWithByteArray:bytes];
    return JavaNioByteBuffer_wrapWithByteArray_(bytes);
  }
  @finally {
    if (randomAccessFile != nil) [randomAccessFile close];
  }
}

JavaNioByteBuffer *OrgJsoupHelperDataUtil_emptyByteBuffer() {
  OrgJsoupHelperDataUtil_initialize();
  return JavaNioByteBuffer_allocateWithInt_(0);
}

NSString *OrgJsoupHelperDataUtil_getCharsetFromContentTypeWithNSString_(NSString *contentType) {
  OrgJsoupHelperDataUtil_initialize();
  if (contentType == nil) return nil;
  JavaUtilRegexMatcher *m = [((JavaUtilRegexPattern *) nil_chk(OrgJsoupHelperDataUtil_charsetPattern)) matcherWithJavaLangCharSequence:contentType];
  if ([((JavaUtilRegexMatcher *) nil_chk(m)) find]) {
    NSString *charset = [((NSString *) nil_chk([m groupWithInt:1])) java_trim];
    charset = [((NSString *) nil_chk(charset)) java_replace:@"charset=" withSequence:@""];
    if ([((NSString *) nil_chk(charset)) java_length] == 0) return nil;
    @try {
      if (JavaNioCharsetCharset_isSupportedWithNSString_(charset)) return charset;
      charset = [charset java_uppercaseStringWithJRELocale:JreLoadStatic(JavaUtilLocale, ENGLISH)];
      if (JavaNioCharsetCharset_isSupportedWithNSString_(charset)) return charset;
    }
    @catch (JavaNioCharsetIllegalCharsetNameException *e) {
      return nil;
    }
  }
  return nil;
}

NSString *OrgJsoupHelperDataUtil_mimeBoundary() {
  OrgJsoupHelperDataUtil_initialize();
  JavaLangStringBuilder *mime = new_JavaLangStringBuilder_initWithInt_(OrgJsoupHelperDataUtil_boundaryLength);
  JavaUtilRandom *rand = new_JavaUtilRandom_init();
  for (jint i = 0; i < OrgJsoupHelperDataUtil_boundaryLength; i++) {
    (void) [mime appendWithChar:IOSCharArray_Get(OrgJsoupHelperDataUtil_mimeBoundaryChars, [rand nextIntWithInt:((IOSCharArray *) nil_chk(OrgJsoupHelperDataUtil_mimeBoundaryChars))->size_])];
  }
  return [mime description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJsoupHelperDataUtil)

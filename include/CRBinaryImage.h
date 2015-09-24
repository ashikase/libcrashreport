/**
 * Name: libcrashreport
 * Type: iOS/OS X shared library
 * Desc: Library for parsing and symbolicating iOS crash log files.
 *
 * Author: Lance Fetters (aka. ashikase)
 * License: LGPL v3 (See LICENSE file for details)
 */

@class PIPackage;
@class SCBinaryInfo;

@interface CRBinaryImage : NSObject
@property(nonatomic, readonly) NSString *path;
@property(nonatomic, readonly) uint64_t address;
@property(nonatomic, readonly) uint64_t size;
@property(nonatomic, readonly) NSString *architecture;
@property(nonatomic, readonly) NSString *uuid;
+ (id)new __attribute__((unavailable("Must use custom init method.")));
- (id)init __attribute__((unavailable("Must use custom init method.")));
- (id)initWithPath:(NSString *)path address:(uint64_t)address size:(uint64_t)size architecture:(NSString *)architecture uuid:(NSString *)uuid;

// Information added by this library.
@property(nonatomic, retain) PIPackage *package;

// Information used during processing.
@property(nonatomic, readonly) SCBinaryInfo *binaryInfo;
@property(nonatomic, getter = isBlamable) BOOL blamable;
@property(nonatomic, getter = isCrashedProcess) BOOL crashedProcess;
@end

/* vim: set ft=objcpp ff=unix sw=4 ts=4 tw=80 expandtab: */

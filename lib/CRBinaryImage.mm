/**
 * Name: libcrashreport
 * Type: iOS/OS X shared library
 * Desc: Library for parsing and symbolicating iOS crash log files.
 *
 * Author: Lance Fetters (aka. ashikase)
 * License: LGPL v3 (See LICENSE file for details)
 */

#import "CRBinaryImage.h"

#import <libpackageinfo/libpackageinfo.h>
#import <libsymbolicate/libsymbolicate.h>

@implementation CRBinaryImage

@synthesize path = path_;
@synthesize address = address_;
@synthesize size = size_;
@synthesize architecture = architecture_;
@synthesize uuid = uuid_;
@synthesize binaryInfo = binaryInfo_;
@synthesize package = package_;
@synthesize blamable = blamable_;

- (id)initWithPath:(NSString *)path address:(uint64_t)address size:(uint64_t)size architecture:(NSString *)architecture uuid:(NSString *)uuid {
    self = [super init];
    if (self != nil) {
        path_ = [path copy];
        address_ = address;
        size_ = size;
        architecture_ = [architecture copy];
        uuid_ = [uuid copy];
    }
    return self;
}

- (void)dealloc {
    [path_ release];
    [architecture_ release];
    [uuid_ release];
    [binaryInfo_ release];
    [package_ release];
    [super dealloc];
}

- (SCBinaryInfo *)binaryInfo {
    if (binaryInfo_ == nil) {
        NSString *path = [self path];
        uint64_t address = [self address];
        NSString *architecture = [self architecture];
        NSString *uuid = [self uuid];
        NSCAssert((path != nil) && (address != 0) && (architecture != nil) && (uuid != nil),
            @"ERROR: Must first set path, address, architecture and uuid of binary image before retrieving binary info.");
        binaryInfo_ = [[SCBinaryInfo alloc] initWithPath:path address:address architecture:architecture uuid:uuid];
    }
    return binaryInfo_;
}

@end

/* vim: set ft=objcpp ff=unix sw=4 ts=4 tw=80 expandtab: */

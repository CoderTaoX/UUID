//
//  UUID.m
//  date
//
//  Created by Developer on 16/5/26.
//  Copyright © 2016年 TaoXu. All rights reserved.
//

#import "UUID.h"

#define kIsStringValid(text) (text && text!=NULL && text.length>0)

@implementation UUID

+ (NSString *)get_UUID {
    CFUUIDRef uuid_ref = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef uuid_string_ref= CFUUIDCreateString(kCFAllocatorDefault, uuid_ref);
    
    CFRelease(uuid_ref);
    NSString *uuid = [NSString stringWithString:(__bridge NSString*)uuid_string_ref];
    if (!kIsStringValid(uuid))
    {
        uuid = @"";
    }
    CFRelease(uuid_string_ref);
    return [[uuid lowercaseString] uppercaseString];
}

@end

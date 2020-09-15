//
//  NSString+ZPH.m
//  ModuleDemo
//
//  Created by zph on 2020/9/15.
//  Copyright © 2020 zph. All rights reserved.
//

#import "NSString+ZPH.h"

@implementation NSString (ZPH)

-(BOOL)stringWithVaild {
    
    if (self == nil ||
        self == (id)[NSNull null] ||
        [self isEqual:@"null"] ||
        [self isEqual:@"<null>"] ||
        [self isEqual:@""] ||
        [self isEqual:@"(null)"]) {
        return false;
    }
    return true;
}

@end

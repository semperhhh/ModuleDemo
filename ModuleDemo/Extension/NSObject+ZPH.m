//
//  NSObject+ZPH.m
//  ModuleDemo
//
//  Created by zhangpenghui on 2020/9/14.
//  Copyright © 2020 zph. All rights reserved.
//

#import "NSObject+ZPH.h"

@implementation NSObject (ZPH)

-(void)debugPrint {
    
    NSLog(@"- %@ -", NSStringFromClass(self.class));
}

@end

//
//  CTMediator+Mediator.m
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

#import "CTMediator+Mediator.h"

@implementation CTMediator (Mediator)
-(UIViewController *)mediatorViewControllerWithDictionary:(NSDictionary *)dict Callback:(void(^)(NSString *result))callback {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"callback"] = callback;
    [params addEntriesFromDictionary:dict];
    UIViewController *controll = [self performTarget:@"Mediator" action:@"Category_ViewController" params:params shouldCacheTarget:false];
    return controll;
}
@end

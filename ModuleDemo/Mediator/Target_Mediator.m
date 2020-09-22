//
//  Target_Mediator.m
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

#import "Target_Mediator.h"
#import "MediatorViewController.h"

@implementation Target_Mediator

-(MediatorViewController *)Action_Category_ViewController:(NSDictionary *)params {
    
    NSString *userId = params[@"userId"];
    if (params[@"callback"]) {
        void (^callback)(NSString *result) = params[@"callback"];
        callback(@"success");
    }
    MediatorViewController *mediator = [[MediatorViewController alloc]initWithUserId:userId];
    return mediator;
}
@end

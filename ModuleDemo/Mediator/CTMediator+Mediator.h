//
//  CTMediator+Mediator.h
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (Mediator)
-(UIViewController *)mediatorViewControllerWithDictionary:(NSDictionary *)dict Callback:(void(^)(NSString *result))callback;
@end

NS_ASSUME_NONNULL_END

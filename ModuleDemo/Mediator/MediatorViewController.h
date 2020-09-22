//
//  MediatorViewController.h
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MediatorViewController : UIViewController

@property (nonatomic, strong) NSString *userId;

-(instancetype)initWithUserId:(NSString *)userId;
@end

NS_ASSUME_NONNULL_END

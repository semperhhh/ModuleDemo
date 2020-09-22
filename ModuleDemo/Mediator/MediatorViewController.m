//
//  MediatorViewController.m
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

#import "MediatorViewController.h"

@interface MediatorViewController ()

@end

@implementation MediatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"userid = %@", self.userId);
    
    self.view.backgroundColor = UIColor.blueColor;
}

-(instancetype)initWithUserId:(NSString *)userId {
    
    if (self = [super init]) {
        
        self.userId = userId;
    }
    return self;
}

@end

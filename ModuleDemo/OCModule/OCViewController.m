//
//  OCViewController.m
//  ModuleDemo
//
//  Created by zph on 2020/9/15.
//  Copyright © 2020 zph. All rights reserved.
//

#import "OCViewController.h"
#import "UIViewController+Style.h"
#import <ModuleDemo-Swift.h>

@interface OCViewController ()

@end

@implementation OCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    NSLog(@"ocviewcontroller userId = %@", self.userId);
    [self initWithStyle];
    
    [[[MessageTool_Bridge alloc]init]messageTest];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

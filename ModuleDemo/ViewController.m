//
//  ViewController.m
//  ModuleDemo
//
//  Created by zhangpenghui on 2020/9/14.
//  Copyright © 2020 zph. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ZPH.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *ocButton;
@property (nonatomic,strong) UIButton *swiftButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.ocButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, KScreenWidth, 100)];
    self.ocButton.layer.backgroundColor = UIColor.redColor.CGColor;
    [self.ocButton setTitle:@"ocButton" forState:UIControlStateNormal];
    [self.ocButton addTarget:self action:@selector(ocButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.ocButton];
    
    self.swiftButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 250, KScreenWidth, 100)];
    self.swiftButton.layer.backgroundColor = UIColor.cyanColor.CGColor;
    [self.swiftButton setTitle:@"swiftButton" forState:UIControlStateNormal];
    [self.swiftButton addTarget:self action:@selector(swiftButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.swiftButton];
    
    [self.view debugPrint];
    
}

//MARK: 调用oc模块
-(void)ocButtonAction {
    NSLog(@"ocButtonAction");
}

//MARK: 调用swift模块
-(void)swiftButtonAction {
    NSLog(@"swiftButtonAction");
}


@end

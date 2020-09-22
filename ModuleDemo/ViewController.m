//
//  ViewController.m
//  ModuleDemo
//
//  Created by zhangpenghui on 2020/9/14.
//  Copyright © 2020 zph. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+ZPH.h"
#import <OCTool/NSString+ZPH.h>
#import "ZPHLineView.h"

#import "ModuleDemo-Swift.h"

#import <CTMediator.h>
#import "CTMediator+Mediator.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view debugPrint];
    
    NSLog(@"%d", [@"123" stringWithVaild]);

    [self.view addSubview:self.tableView];
    self.tableView.frame = CGRectMake(0, 0, KScreenWidth, KScreenHeight);
}

//MARK: 调用oc模块
-(void)ocButtonAction {
    NSLog(@"ocButtonAction");
    
    //正常调用
    /*
    OCViewController *controller = [[OCViewController alloc]init];
    [self.navigationController pushViewController: animated:true];
    */
    
    //反射
    Class cla = NSClassFromString(@"OCViewController");
    id controller = [[cla alloc]init];
    SEL selector = NSSelectorFromString(@"setUserId:");
    [controller performSelector:selector withObject:@"123456"];
    [self.navigationController pushViewController:controller animated:true];
}

//MARK: 调用swift模块
-(void)swiftButtonAction {
    NSLog(@"swiftButtonAction");
    
    //正常调用
//    SwiftViewController *controller = [[SwiftViewController alloc]init];
//    controller.userId = @"654321";
//    [self.navigationController pushViewController:controller animated:true];

    //反射
    NSString *nameSpace = [NSBundle mainBundle].infoDictionary[@"CFBundleExecutable"];
    NSString *string = [NSString stringWithFormat:@"%@.SwiftViewController", nameSpace];
    id controller = [[NSClassFromString(string) alloc]init];
    if (controller == nil) {
        NSLog(@"未找到此类 - %@", string);
        return;
    }
    //传参
    [controller performSelector:NSSelectorFromString(@"setNavigationTitle:") withObject:@"swiftViewController"];
    [controller performSelector:NSSelectorFromString(@"setUserId:") withObject:@"654321"];
    
    [self.navigationController pushViewController:controller animated:true];
}

// MARK: mediator模块
-(void)mediatorButtonAction {
    
    //依赖了中间件
//    Target_Mediator *mediator = [[Target_Mediator alloc]init];
//    UIViewController *controller = [mediator Action_viewController:@{@"userId": @"23455"}];
//    [self.navigationController pushViewController:controller animated:true];
    
    id controller = [[CTMediator sharedInstance]mediatorViewControllerWithDictionary:@{@"userId": @"23546"} Callback:^(NSString * _Nonnull result) {
        NSLog(@"result = %@", result);
    }];
    
    [self.navigationController pushViewController:controller animated:true];
}

// MARK: UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"oc";
            break;
        case 1:
            cell.textLabel.text = @"swift";
            break;
        case 2:
            cell.textLabel.text = @"mediator";
            break;
        case 3:
            cell.textLabel.text = @"CTMediator";
            break;
        default:
            break;
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    
    switch (indexPath.row) {
        case 0:
            [self ocButtonAction];
            break;
        case 1:
            [self swiftButtonAction];
            break;
        case 2:
            [self mediatorButtonAction];
            break;
        default:
            break;
    }
}

// MARK: lazy loading

-(UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}
@end

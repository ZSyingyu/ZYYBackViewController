//
//  ZYYFourthViewController.m
//  ZYYBackViewController
//
//  Created by liguo.chen on 17/3/29.
//  Copyright © 2017年 Slience. All rights reserved.
//

#import "ZYYFourthViewController.h"
#import "ZYYSeconedViewController.h"
#import "ZYYThirdViewController.h"

@interface ZYYFourthViewController ()

@end

@implementation ZYYFourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第四个";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 50)];
    [btn setTitle:@"回退" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction {
    
    //回退到跟控制器,即第一个界面
//    [self.navigationController popToRootViewControllerAnimated:YES];
    
    //回退到指定界面
    UINavigationController *naviVc = self.navigationController;//self.navigationController表示本界面
    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];//初始化一个vc的数组,用于存放跳转本界面以来的所有vc
    for (UIViewController *vc in [naviVc viewControllers]) {//遍历一路跳转到本界面以来的所有界面
        [viewControllers addObject:vc];//将遍历出来的界面存放入数组
        
        //判断要回退的指定界面是否与遍历的界面相同,ZYYSeconedViewController也可以替换为ZYYThirdViewController
        if ([vc isKindOfClass:[ZYYSeconedViewController class]]) {
            [self.navigationController popToViewController:vc animated:YES];//执行回退动作
        }
        
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

//
//  ZYYFirstViewController.m
//  ZYYBackViewController
//
//  Created by liguo.chen on 17/3/29.
//  Copyright © 2017年 Slience. All rights reserved.
//

#import "ZYYFirstViewController.h"
#import "ZYYSeconedViewController.h"

@interface ZYYFirstViewController ()

@end

@implementation ZYYFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一个";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, SCREEN_WIDTH - 40, 50)];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnAction {
    ZYYSeconedViewController *secondVc = [[ZYYSeconedViewController alloc] init];
    [self.navigationController pushViewController:secondVc animated:YES];
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

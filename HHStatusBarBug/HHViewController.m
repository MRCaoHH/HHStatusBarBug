//
//  HHViewController.m
//  HHStatusBarBug
//
//  Created by caohuihui on 2016/12/12.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHViewController.h"
#import "HHViewControllerTow.h"
#import "HHMacroKey.h"

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initSubView];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initSubView{
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:self.view.frame];
    pushBtn.backgroundColor  = [UIColor blueColor];
    [pushBtn addTarget:self action:@selector(clickPushBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)clickPushBtn{
    HHViewControllerTow *vc = [[HHViewControllerTow alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end

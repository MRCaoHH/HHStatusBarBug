//
//  HHNavigationController.m
//  HHStatusBarBug
//
//  Created by caohuihui on 2016/12/12.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHNavigationController.h"
#import "HHMacroKey.h"

@interface HHNavigationController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@end

@implementation HHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.interactivePopGestureRecognizer.delegate = self;
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


#if !HHShowBug
- (UIViewController *)childViewControllerForStatusBarStyle{
    return self.visibleViewController;
}
#endif

@end

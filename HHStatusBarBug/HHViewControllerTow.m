//
//  HHViewControllerTow.m
//  HHStatusBarBug
//
//  Created by caohuihui on 2016/12/12.
//  Copyright © 2016年 caohuihi. All rights reserved.
//

#import "HHViewControllerTow.h"

@interface HHViewControllerTow ()

@end

@implementation HHViewControllerTow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;
}
@end

//
//  QYHMainViewController.m
//  xibLearn
//
//  Created by hao on 2017/11/25.
//  Copyright © 2017年 hao. All rights reserved.
//

#import "QYHMainViewController.h"
#import "QYHLongInViewController.h"
@interface QYHMainViewController ()

@end

@implementation QYHMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)longIn:(id)sender {
    QYHLongInViewController *longInVc = [[QYHLongInViewController alloc]initWithNibName:@"QYHLongInViewController" bundle:nil];
    [self presentViewController:longInVc animated:YES completion:nil];
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

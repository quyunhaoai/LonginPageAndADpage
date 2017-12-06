//
//  CustomerViewController.m
//  xibLearn
//
//  Created by hao on 2017/11/21.
//  Copyright © 2017年 hao. All rights reserved.
//

#import "CustomerViewController.h"
#import "QYHMainViewController.h"
@interface CustomerViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *LaunchScreen;
@property (retain, nonatomic) UIImageView *customPrepLoadingActView;
@property (weak, nonatomic) IBOutlet UIButton *mybutton;
@property (weak, nonatomic) NSTimer *timer;
@end


@implementation CustomerViewController

- (IBAction)chickAction:(UIButton *)sender {
    QYHMainViewController *vc = [[QYHMainViewController alloc] initWithNibName:@"QYHMainViewController" bundle:nil];
    
    [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    [self.timer invalidate];
    
}

- (UIImageView *)customPrepLoadingActView {
    if (!_customPrepLoadingActView) {
        _customPrepLoadingActView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"newviewpagerprogress"]];
        _customPrepLoadingActView.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2, [[UIScreen mainScreen] bounds].size.height/2+100);
        _customPrepLoadingActView.bounds = CGRectMake(0, 0, 25, 25);
    }
    return _customPrepLoadingActView;
}
- (void)startAnimation:(float)imageviewAngle
{
    CGAffineTransform endAngle = CGAffineTransformMakeRotation(imageviewAngle * (M_PI / 180.0f));
    
    [UIView animateWithDuration:0.01 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.customPrepLoadingActView.transform = endAngle;
    } completion:^(BOOL finished) {
        float angle = imageviewAngle;
        angle += 5;
        [self startAnimation:angle];
    }];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self startAnimation:0];
    [self.view addSubview:self.customPrepLoadingActView];
    UIImage * image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"0df3d7ca7bcb0a46f4c48af36263f6246a60af11" ofType:@"jpg"]];
    self.LaunchScreen.image = image;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
    
    
}
-(void)timerAction
{
    NSLog(@"%s",__FUNCTION__);
    static int i = 10;
    if (i == 0) {
        [self chickAction:nil];
    }
    i --;
    [self.mybutton setTitle:[NSString stringWithFormat:@"跳过(%d)",i] forState:UIControlStateNormal];
    
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

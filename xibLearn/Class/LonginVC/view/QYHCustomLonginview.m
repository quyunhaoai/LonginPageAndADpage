//
//  QYHCustomLonginview.m
//  xibLearn
//
//  Created by hao on 2017/11/25.
//  Copyright © 2017年 hao. All rights reserved.
//

#import "QYHCustomLonginview.h"

@implementation QYHCustomLonginview
+(instancetype)fastLoadLongView
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}
+(instancetype)fastRegisterView
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
}

@end

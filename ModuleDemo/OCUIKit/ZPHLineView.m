//
//  ZPHLineView.m
//  ModuleDemo
//
//  Created by zph on 2020/9/17.
//  Copyright © 2020 zph. All rights reserved.
//

#import "ZPHLineView.h"

@implementation ZPHLineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    CGFloat lengths[2] = {10, 10};
    [path setLineDash:lengths count:2 phase:0];
    [path moveToPoint:CGPointMake(0, self.bounds.size.height / 2)];
    [path addLineToPoint:CGPointMake(self.bounds.size.width, self.bounds.size.height / 2)];
    [path setLineWidth:self.bounds.size.height];
    [UIColor.blueColor set];
    [path stroke];
}


@end

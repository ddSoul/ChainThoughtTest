//
//  UIButton+Test.m
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/25.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "UIButton+Test.h"

@implementation UIButton (Test)

+ (void)initUIButton:(void (^)(UIButton *button)) parameter
{
    UIButton *_button = [[UIButton alloc] init];
    parameter(_button);
}

- (UIButton * (^)(UIColor *color)) KBackgroundColor
{
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (UIButton * (^)(CGRect frame)) KFrame
{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIButton * (^)(UIView *superView)) KAddSubView
{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

- (UIButton * (^)(SEL select)) KSelect
{
    return ^(SEL select){
        [self addTarget:nil action:select forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

@end

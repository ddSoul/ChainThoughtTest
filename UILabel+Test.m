//
//  UILabel+Test.m
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/21.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "UILabel+Test.h"

@implementation UILabel (Test)

+ (void)initUILabel:(void (^)(UILabel *label)) parameter
{
    UILabel *_label = [[UILabel alloc] init];
    parameter(_label);
}

- (UILabel * (^)(UIColor *color)) KBackgroundColor
{
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (UILabel * (^)(NSString *text)) KText
{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel * (^)(UIColor *textcolor)) KTextColor
{
    return ^(UIColor *textcolor){
        self.textColor = textcolor;
        return self;
    };
}

- (UILabel * (^)(CGFloat textAlignment)) KTextAlignment
{
    return ^(CGFloat textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel * (^)(CGRect frame)) KFrame
{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UILabel * (^)(UIView *superView)) KAddSubView
{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

@end

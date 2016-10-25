//
//  UIImageView+Test.m
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/21.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "UIImageView+Test.h"

@implementation UIImageView (Test)

+ (void)initUIImageView:(void (^)(UIImageView *imageView)) parameter
{
    UIImageView *_imageView = [[UIImageView alloc] init];
    parameter(_imageView);
}

- (UIImageView * (^)(UIColor *color)) KBackgroundColor
{
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

- (UIImageView * (^)(NSString *imageName)) KImageName
{
    return ^(NSString *imageName){
        self.image = [UIImage imageNamed:imageName];
        return self;
    };
}

- (UIImageView * (^)(CGRect frame)) KFrame
{
    return ^(CGRect frame){
        self.frame = frame;
        return self;
    };
}

- (UIImageView * (^)(UIView *superView)) KAddSubView
{
    return ^(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}

@end

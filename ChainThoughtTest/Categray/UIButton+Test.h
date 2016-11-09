//
//  UIButton+Test.h
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/25.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Test)

+ (void)initUIButton:(void (^)(UIButton *button)) parameter;

- (UIButton * (^)(UIColor *color)) KBackgroundColor;

- (UIButton * (^)(CGRect frame)) KFrame;

- (UIButton * (^)(UIView *superView)) KAddSubView;

- (UIButton * (^)(SEL select)) KSelect;

@end

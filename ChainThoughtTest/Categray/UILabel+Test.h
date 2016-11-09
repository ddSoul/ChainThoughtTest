//
//  UILabel+Test.h
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/21.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Test)

+ (void)initUILabel:(void (^)(UILabel *label)) parameter;

- (UILabel * (^)(UIColor *color)) KBackgroundColor;

- (UILabel * (^)(NSString *text)) KText;

- (UILabel * (^)(UIColor *textcolor)) KTextColor;

- (UILabel * (^)(CGFloat textAlignment)) KTextAlignment;

- (UILabel * (^)(CGRect frame)) KFrame;

- (UILabel * (^)(UIView *superView)) KAddSubView;

@end

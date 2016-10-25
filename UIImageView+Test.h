//
//  UIImageView+Test.h
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/21.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Test)

+ (void)initUIImageView:(void (^)(UIImageView *imageView)) parameter;

- (UIImageView * (^)(UIColor *color)) KBackgroundColor;

- (UIImageView * (^)(NSString *imageName)) KImageName;

- (UIImageView * (^)(CGRect frame)) KFrame;

- (UIImageView * (^)(UIView *superView)) KAddSubView;

@end

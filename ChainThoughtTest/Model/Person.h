//
//  Person.h
//  ChainThoughtTest
//
//  Created by ddSoul on 16/10/31.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^KGG) (NSString *KGG);

@interface Person : NSObject

/***
 
 +()方法只是想通过block获取Person类实例对象，
 - ()方法只是一个get方法，返回值类型为Block,该Block带有返回值Person对象。
 
 ***/

+ (void)initPerson:(void (^)(Person *person)) parterm;

- (Person * (^)(NSString *nameString)) KNameString;

- (Person * (^)(NSString *sexString)) KSexString;

- (void (^) (NSString *tset)) KTest;

@property (nonatomic, copy) void (^Kgg) (NSString *gg);

@property (nonatomic, copy) KGG gg;

@property (nonatomic, copy) NSString *name;

- (NSString *)kname;

@end

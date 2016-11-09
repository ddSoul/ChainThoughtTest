//
//  Person.h
//  ChainThoughtTest
//
//  Created by ddSoul on 16/10/31.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

+ (void)initPerson:(void (^)(Person *person)) parterm;

- (Person * (^)(NSString *nameString)) KNameString;

- (Person * (^)(NSString *sexString)) KSexString;

@end

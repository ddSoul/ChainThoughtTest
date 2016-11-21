//
//  Person.m
//  ChainThoughtTest
//
//  Created by ddSoul on 16/10/31.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (void)initPerson:(void (^)(Person *person)) parterm
{
    Person *_person = [[Person alloc] init];
    parterm(_person);
}

- (Person * (^)(NSString *nameString)) KNameString
{
    return ^(NSString *nameString){
        
        NSLog(@"姓名：_%@",nameString);
        return self;
    };
}

- (Person * (^)(NSString *sexString)) KSexString
{
    return ^(NSString *sexString){
        
        NSLog(@"性别：%@",sexString);
        return self;
    };
}


@end

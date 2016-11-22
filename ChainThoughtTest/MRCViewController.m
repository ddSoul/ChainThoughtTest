//
//  MRCViewController.m
//  ChainThoughtTest
//
//  Created by ddSoul on 16/11/22.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "MRCViewController.h"

@interface MRCViewController ()

@end

@implementation MRCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int x = 100;
    float (^sum) (int a, int b) = ^ float (int a, int b) {
        return x +a + b;
    };
    NSLog(@"%@",sum);
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

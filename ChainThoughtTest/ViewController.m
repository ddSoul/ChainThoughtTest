//
//  ViewController.m
//  ChainThoughtTest
//
//  Created by 邓西亮 on 16/10/21.
//  Copyright © 2016年 dxl. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Test.h"
#import "UILabel+Test.h"
#import "UIButton+Test.h"
#import "Person.h"
#import "MRCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self crateViews];
}

- (void)crateViews
{
    [UILabel initUILabel:^(UILabel *label){
        
        label.KFrame(CGRectMake(0, 100, 100, 100))
        .KBackgroundColor([UIColor redColor])
        .KText(@"hello")
        .KTextColor([UIColor whiteColor])
        .KTextAlignment(1)
        .KAddSubView(self.view);
        
    }];
    
    [UIImageView initUIImageView:^(UIImageView *imageView){
        
        imageView.KFrame(CGRectMake(0, 200, 200, 400))
        .KImageName(@"testtest")
        .KAddSubView(self.view);
        
    }];
    
    [UIButton initUIButton:^(UIButton *button){
        
        button.KFrame(CGRectMake(100, 100, 100, 100))
        .KBackgroundColor([UIColor brownColor])
        .KSelect(@selector(click))
        .KAddSubView(self.view);
        
    }];
}

- (void)click
{
    [Person initPerson:^(Person *person){
       
        person.KNameString(@"张三李四王二")
        .KSexString(@"男女");
        
        person =  person.KNameString(@"张三李四王二");
        person.gg = ^(NSString *ss){
            
        };
        
        NSLog(@"______1:%@", [person KNameString]);
        NSLog(@"______2:%@",person.KNameString(@"hello"));
        NSLog(@"______3:%@",person.KNameString);
        NSLog(@"______4:%@",[person.KNameString(@"hello") class]);
        NSLog(@"______5:%@",[person.KNameString class]);
        NSLog(@"______6:%@",[person.KTest class]);
        NSLog(@"______7:%@",person.Kgg);
        NSLog(@"______8:%@",[person.Kgg class]);
        NSLog(@"______9:%@",person.gg);
        NSLog(@"______10:%@",[person.gg class]);
        NSLog(@"______11:%@",person.name);
        NSLog(@"______12:%@",person.kname);
        

        
    }];
    
    
    float (^sum)(float, float) = ^(float a, float b){
        
        return a + b;
    };
    
    
    NSLog(@"block is %@", sum); //block is <__NSGlobalBlock__: 0x47d0>
    NSLog(@"sum is %f", sum(1,2)); //block is <__3>
    
    
    int x = 10;
    float (^sumMalloc)(float, float) = ^(float a, float b){
        
        return a + b + x;
    };
    
    NSLog(@"Mallocblock is %@", sumMalloc); //block is <__NSGlobalBlock__: 0x47d0>
    NSLog(@"Mallocsum is %f", sumMalloc(1,2)); //block is <__13>


}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    MRCViewController *mrc = [[MRCViewController alloc] init];
    [self presentViewController:mrc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

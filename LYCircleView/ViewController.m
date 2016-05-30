//
//  ViewController.m
//  LYCircleView
//
//  Created by user on 16/5/17.
//  Copyright © 2016年 ly. All rights reserved.
//

#import "ViewController.h"
#import "LYCircleView.h"

@interface ViewController ()<LYCircleViewDataSource>
{
    NSArray *dataArray;
    LYCircleView *circle;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    circle = [[LYCircleView alloc]initWithFrame:CGRectMake(0, 44, self.view.bounds.size.width, 300)];
    circle.dataSource = self;
    [self.view addSubview:circle];
}

- (NSArray *)percentOfTheCircle{
    return @[@"24", @"35",@"11", @"10", @"20"];
}

- (NSArray *)textStringOfCircle{
    return @[@"IT", @"金融", @"土木工程", @"传统行业", @"其他"];
}

- (NSArray *)hexStringOfCircleColor{
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

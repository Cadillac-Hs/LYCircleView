//
//  ViewController.m
//  LYCircleView
//
//  Created by user on 16/5/17.
//  Copyright © 2016年 ly. All rights reserved.
//

#import "ViewController.h"
#import "LYCircleView.h"

@interface ViewController ()<LYCircleViewDataSource,LYCircleViewDelegate>
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
    circle.delegate = self;
    [self.view addSubview:circle];
}

- (void)didSelectCircleViewAtIndex:(NSInteger)index{
    NSLog(@"%ld",index);
}

- (NSArray *)percentOfTheCircle{
    return @[@"39.7",@"19.3",@"18.0",@"22.6",@"0.4"];
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

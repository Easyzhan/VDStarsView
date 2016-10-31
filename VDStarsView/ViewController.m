//
//  ViewController.m
//  VDStarsView
//
//  Created by Zin_戦 on 16/10/28.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//


#import "PureLayout.h"
#import "ViewController.h"
#import "VDStarsView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    VDStarsView *view = [[VDStarsView alloc] initWithFrame:CGRectMake(0, 65, [UIScreen mainScreen].bounds.size.width/2, 60)];
    view.starsNum = 2;
    view.gujiNum = 3;
    view.exText = @"月采购";
    [view creatXing];
    [view addClickAction:^(id sender) {
        NSLog(@"一人我饮酒醉--");
    }];
    [self.view addSubview:view];

    VDStarsView *view2 = [[VDStarsView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2+2, 65, [UIScreen mainScreen].bounds.size.width/2, 60)];
    view2.starsNum = 2;
    view2.gujiNum = 5;
    view2.exText = @"配合度";
    [view2 creatXing];
    [view2 addClickAction:^(id sender) {
        NSLog(@"醉把佳人成双对");
    }];
    [self.view addSubview:view2];
}

- (void)Click:(UIButton *)sender
{
    NSLog(@"----click");
}


@end

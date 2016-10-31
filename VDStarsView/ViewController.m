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
//    VDStarsView *view = [[VDStarsView alloc] initWithStarsNumber:3];
//    view.frame =CGRectMake(0, 65, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    view.starsNum = 2;
    [view creatXing];
    
    [self.view addSubview:view];

    VDStarsView *view2 = [[VDStarsView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2, 65, [UIScreen mainScreen].bounds.size.width/2, 60)];
    view2.starsNum = 4;
    [view2 creatXing];
    [self.view addSubview:view2];
}




@end

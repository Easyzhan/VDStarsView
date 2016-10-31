//
//  VDStarsView.m
//  VDStarsView
//
//  Created by Zin_戦 on 16/10/28.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//
#define PMWidth [UIScreen mainScreen].bounds.size.width
#define VDColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

#import "VDStarsView.h"

@interface VDStarsView () {
    UIImageView *imageV;
    NSArray *array;
    UILabel *lable;
    UIView *viewV;
}
@property (nonatomic,strong)UIButton *btn;

@end

@implementation VDStarsView

- (instancetype)initWithFrame: (CGRect)frame
{
    if (self = [super initWithFrame: frame]) {

//        [self creatXing];
//        [self creatLook];
    }
    return self;
}


-(void)creatLook {
    
    array = @[@"差",@"一般",@"满意",@"很满意",@"强烈推荐"];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, PMWidth, 80)];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    
    for (int i = 0; i < array.count; i++) {
        
        lable = [[UILabel alloc] initWithFrame:CGRectMake(PMWidth/5 * i, 10, PMWidth / 5, 15)];
        lable.textAlignment = NSTextAlignmentCenter;
        lable.text = array[i];
        lable.font = [UIFont systemFontOfSize:12];
        [view addSubview:lable];
        
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn setBackgroundImage:[UIImage imageNamed:@"1234"] forState:UIControlStateNormal];
        _btn.backgroundColor = [UIColor clearColor];
        _btn.frame = CGRectMake(PMWidth/5 * i + 20, 35, 40, 40);
        _btn.tag = 1000 + i;
        [_btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:_btn];
        
    }
    
    
}

-(void) creatXing {
    
    viewV = [[UIView alloc] initWithFrame:CGRectMake(0, self.frame.size.height/2 -25, self.frame.size.width, self.frame.size.height)];
    viewV.userInteractionEnabled = YES;
    //添加手势
    
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(event:)];
    //将手势添加到需要相应的view中去
    
    [viewV addGestureRecognizer:tapGesture];
    //选择触发事件的方式（默认单机触发)
    [tapGesture setNumberOfTapsRequired:1];
    
    viewV.backgroundColor = VDColor(200, 160, 190);
    [self addSubview:viewV];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, viewV.frame.size.height/2 -7, 50, 15)];
    lab.text = [NSString stringWithFormat:@" %@:",_exText];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:10];
    [viewV addSubview:lab];
    
    NSInteger perStarWidth = (viewV.frame.size.width - lab.frame.size.width)/5;
    for (int i = 0; i < 5; i++) {
        
        imageV = [[UIImageView alloc] initWithFrame:CGRectMake(lab.frame.size.width + perStarWidth * i, viewV.frame.size.height/2 -15, perStarWidth, perStarWidth)];
        imageV.image = [UIImage imageNamed:@"tmst"];
        imageV.tag = i;
        [viewV addSubview:imageV];
        
        if (imageV.tag <= _starsNum - 1&&_starsNum<=_gujiNum) {
            imageV.image = [UIImage imageNamed:@"str"];
        }else if(_gujiNum>_starsNum&&imageV.tag<_gujiNum){
            imageV.image = [UIImage imageNamed:@"star"];
        }
        else {
            
            imageV.image = [UIImage imageNamed:@"tmst"];
        }
        
    }
    
//    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(15, 160, PMWidth - 30, 200)];
//    textView.text = @"菜品味道如何，服务周到吗，环境如何，写够20字，才是好同志～";
//    textView.textColor = HWColor(153, 153, 153);
    //    [self addSubview:textView];
    
   
}
-(void)click:(UIButton *)button{
    
    NSInteger theTag = button.tag - 1000;
    for (int i = 0; i < 5; i++) {
        
        imageV = [[UIImageView alloc] initWithFrame:CGRectMake(115 + 40 * i, 5, 40, 40)];
        imageV.tag = i;
        [viewV addSubview:imageV];
        
        if (theTag == i) {
            [button setBackgroundImage:[UIImage imageNamed:@"se"] forState:UIControlStateNormal];
            
        } else {
            UIButton * btn = (UIButton *)[self viewWithTag:1000+i];
            [btn setBackgroundImage:[UIImage imageNamed:@"1234"] forState:UIControlStateNormal];
        }
        
        if (i <= theTag) {
            imageV.image = [UIImage imageNamed:@"123456"];
        }else {
            
            imageV.image = [UIImage imageNamed:@"12345"];
        }
        
    }
    
}

#pragma mark 执行触发的方法

- (void)event:(UITapGestureRecognizer *)gesture
{
    if (self.block) {
        self.block(self);
    }
}

//实现block回调的方法
- (void)addClickAction:(clickBlock)block {
    self.block = block;
}
- (void)buttonAction {
   
}

@end

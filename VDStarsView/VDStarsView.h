//
//  VDStarsView.h
//  VDStarsView
//
//  Created by Zin_戦 on 16/10/28.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VDStarsView : UIView
/**title-->左侧的*/
@property(nonatomic,strong)UILabel *vDtitle;
/**星星✨个数*/
@property(nonatomic,assign)NSInteger starsNum;

-(void) creatXing;
@end

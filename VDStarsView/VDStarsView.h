//
//  VDStarsView.h
//  VDStarsView
//
//  Created by Zin_戦 on 16/10/28.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^clickBlock) (id sender);

@interface VDStarsView : UIView
/**title-->左侧的*/
@property(nonatomic,strong)UILabel *vDtitle;
/**星星✨个数---实际值*/
@property(nonatomic,assign)NSInteger starsNum;

/**估计值 孤星✨*/
@property(nonatomic,assign)NSInteger gujiNum;

/**说明的text*/
@property(nonatomic,copy)NSString *exText;

@property (nonatomic,copy) clickBlock block;
-(void) creatXing;

- (void)addClickAction:(clickBlock)block;

@end

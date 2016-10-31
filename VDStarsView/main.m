//
//  main.m
//  VDStarsView
//
//  Created by Zin_戦 on 16/10/28.
//  Copyright © 2016年 Zin_戦. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
    	setenv("OS_ACTIVITY_MODE", "DISABLE", 1);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

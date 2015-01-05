//
//  SunAndMoonAppDelegate.h
//  SunAndMoon
//
//  Created by Berby on 2011/8/3.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SunAndMoonViewController;

@interface SunAndMoonAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SunAndMoonViewController *viewController;

@end

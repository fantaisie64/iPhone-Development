//
//  SimpleGestureAppDelegate.h
//  SimpleGesture
//
//  Created by FANTAISIE on 2011/4/26.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleGestureViewController;

@interface SimpleGestureAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleGestureViewController *viewController;

@end

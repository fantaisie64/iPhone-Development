//
//  WebJSStepAppDelegate.h
//  WebJSStep
//
//  Created by Berby on 2011/8/7.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebJSStepViewController;

@interface WebJSStepAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet WebJSStepViewController *viewController;

@end

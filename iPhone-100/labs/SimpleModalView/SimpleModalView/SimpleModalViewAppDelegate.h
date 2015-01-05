//
//  SimpleModalViewAppDelegate.h
//  SimpleModalView
//
//  Created by FANTAISIE on 2011/3/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleModalViewViewController;

@interface SimpleModalViewAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleModalViewViewController *viewController;

@end

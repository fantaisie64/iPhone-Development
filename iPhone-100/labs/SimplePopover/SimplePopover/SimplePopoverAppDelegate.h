//
//  SimplePopoverAppDelegate.h
//  SimplePopover
//
//  Created by FANTAISIE on 2011/3/26.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimplePopoverViewController;

@interface SimplePopoverAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimplePopoverViewController *viewController;

@end

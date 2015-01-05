//
//  SimplePopoverAppDelegate.h
//  SimplePopover
//
//  Created by FANTAISIE on 2010/10/18.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimplePopoverViewController;

@interface SimplePopoverAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimplePopoverViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimplePopoverViewController *viewController;

@end


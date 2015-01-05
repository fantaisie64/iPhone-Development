//
//  SimpleModalViewAppDelegate.h
//  SimpleModalView
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleModalViewViewController;

@interface SimpleModalViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleModalViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleModalViewViewController *viewController;

@end


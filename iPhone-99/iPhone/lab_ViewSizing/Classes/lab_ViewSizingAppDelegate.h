//
//  lab_ViewSizingAppDelegate.h
//  lab_ViewSizing
//
//  Created by FANTAISIE on 2010/8/17.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class lab_ViewSizingViewController;

@interface lab_ViewSizingAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    lab_ViewSizingViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet lab_ViewSizingViewController *viewController;

@end


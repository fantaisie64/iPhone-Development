//
//  lab_IBViewControllerAppDelegate.h
//  lab_IBViewController
//
//  Created by FANTAISIE on 2010/8/7.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lab_IBViewControllerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


//
//  SimpleMapAppDelegate.h
//  SimpleMap
//
//  Created by FANTAISIE on 2010/10/28.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleMapViewController;

@interface SimpleMapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleMapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleMapViewController *viewController;

@end


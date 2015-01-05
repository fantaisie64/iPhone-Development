//
//  SimpleAnnotationAppDelegate.h
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2010/11/7.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleAnnotationViewController;

@interface SimpleAnnotationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleAnnotationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleAnnotationViewController *viewController;

@end


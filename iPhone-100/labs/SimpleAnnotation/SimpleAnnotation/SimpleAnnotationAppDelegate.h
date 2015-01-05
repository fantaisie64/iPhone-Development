//
//  SimpleAnnotationAppDelegate.h
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleAnnotationViewController;

@interface SimpleAnnotationAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleAnnotationViewController *viewController;

@end

//
//  SimpleMapAppDelegate.h
//  SimpleMap
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleMapViewController;

@interface SimpleMapAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleMapViewController *viewController;

@end

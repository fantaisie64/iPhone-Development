//
//  ViewSizingAppDelegate.h
//  ViewSizing
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewSizingViewController;

@interface ViewSizingAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ViewSizingViewController *viewController;

@end

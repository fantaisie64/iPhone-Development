//
//  WebBrowserAppDelegate.h
//  WebBrowser
//
//  Created by FANTAISIE on 2011/3/27.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebBrowserViewController;

@interface WebBrowserAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet WebBrowserViewController *viewController;

@end

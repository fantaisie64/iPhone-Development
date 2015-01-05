//
//  WebBrowserAppDelegate.h
//  WebBrowser
//
//  Created by FANTAISIE on 2010/10/20.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebBrowserViewController;

@interface WebBrowserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WebBrowserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WebBrowserViewController *viewController;

@end


//
//  WebGetPostAppDelegate.h
//  WebGetPost
//
//  Created by FANTAISIE on 2010/10/27.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebGetPostViewController;

@interface WebGetPostAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WebGetPostViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WebGetPostViewController *viewController;

@end


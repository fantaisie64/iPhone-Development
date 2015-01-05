//
//  WebGetPostAppDelegate.h
//  WebGetPost
//
//  Created by FANTAISIE on 2011/3/29.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebGetPostViewController;

@interface WebGetPostAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet WebGetPostViewController *viewController;

@end

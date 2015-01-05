//
//  WebASIUploadAppDelegate.h
//  WebASIUpload
//
//  Created by FANTAISIE on 2011/8/30.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebASIUploadViewController;

@interface WebASIUploadAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet WebASIUploadViewController *viewController;

@end

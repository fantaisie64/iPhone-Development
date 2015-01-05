//
//  MixedComponentAppDelegate.h
//  MixedComponent
//
//  Created by FANTAISIE on 2011/5/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MixedComponentViewController;

@interface MixedComponentAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MixedComponentViewController *viewController;

@end

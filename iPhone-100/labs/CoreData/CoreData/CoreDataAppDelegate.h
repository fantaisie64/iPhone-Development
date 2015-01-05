//
//  CoreDataAppDelegate.h
//  CoreData
//
//  Created by FANTAISIE on 2011/3/27.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CoreDataViewController;

@interface CoreDataAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CoreDataViewController *viewController;

@end

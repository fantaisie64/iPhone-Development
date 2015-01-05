//
//  FileReadWriteAppDelegate.h
//  FileReadWrite
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FileReadWriteViewController;

@interface FileReadWriteAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FileReadWriteViewController *viewController;

@end

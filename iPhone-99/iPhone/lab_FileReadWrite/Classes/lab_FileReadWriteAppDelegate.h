//
//  lab_FileReadWriteAppDelegate.h
//  lab_FileReadWrite
//
//  Created by FANTAISIE on 2010/8/7.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class lab_FileReadWriteViewController;

@interface lab_FileReadWriteAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    lab_FileReadWriteViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet lab_FileReadWriteViewController *viewController;

@end


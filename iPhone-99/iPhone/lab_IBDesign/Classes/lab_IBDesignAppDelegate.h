//
//  lab_IBDesignAppDelegate.h
//  lab_IBDesign
//
//  Created by FANTAISIE on 2010/8/10.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class lab_IBDesignViewController;

@interface lab_IBDesignAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    lab_IBDesignViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet lab_IBDesignViewController *viewController;

@end


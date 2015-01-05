//
//  SimplePickerViewAppDelegate.h
//  SimplePickerView
//
//  Created by FANTAISIE on 2011/5/23.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimplePickerViewViewController;

@interface SimplePickerViewAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimplePickerViewViewController *viewController;

@end

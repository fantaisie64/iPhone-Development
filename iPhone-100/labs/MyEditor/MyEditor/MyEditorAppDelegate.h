//
//  MyEditorAppDelegate.h
//  MyEditor
//
//  Created by Berby on 2011/8/17.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyEditorViewController;

@interface MyEditorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MyEditorViewController *viewController;

@end

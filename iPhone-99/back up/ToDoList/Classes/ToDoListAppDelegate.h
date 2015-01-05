//
//  ToDoListAppDelegate.h
//  ToDoList
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoListAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end


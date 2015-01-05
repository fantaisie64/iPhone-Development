//
//  TabBarAppDelegate.m
//  TabBar
//
//  Created by FANTAISIE on 2011/3/24.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "TabBarAppDelegate.h"
#import "MyViewControllerA.h"
#import "MyViewControllerC.h"

@implementation TabBarAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    UITabBarController* myTabBarController = [[UITabBarController alloc] init];
    UINavigationController* myNavigationController = [[UINavigationController alloc] init];
    MyViewControllerA* myViewConA = [[MyViewControllerA alloc] init];
    MyViewControllerC* myViewConC = [[MyViewControllerC alloc] initWithNibName:@"OneForAll" bundle:nil];
    MyViewControllerC* myViewConD = [[MyViewControllerC alloc] initWithNibName:@"OneForAll" bundle:nil];
    
    myNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:0];
    myViewConC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    myViewConD.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:2];
    
    [myNavigationController pushViewController:myViewConA animated:NO];
    [myViewConA release];
    myTabBarController.viewControllers = [NSArray arrayWithObjects: myNavigationController,myViewConC, myViewConD, nil];
    [myViewConC release];
    [myViewConD release];
    [self.window addSubview:myTabBarController.view];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end

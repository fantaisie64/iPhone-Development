//
//  PicScrollViewAppDelegate.m
//  PicScrollView
//
//  Created by FANTAISIE on 2011/3/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "PicScrollViewAppDelegate.h"

@implementation PicScrollViewAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    myScrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    myScrollView.backgroundColor = [UIColor blackColor];
    myScrollView.delegate = self;
    myScrollView.bouncesZoom = YES;
    
    myImage = [UIImage imageNamed:@"Scenary.jpg"];
	CGRect myFrame = CGRectMake(0, 0, myImage.size.width, myImage.size.height);
    myImageView = [[UIImageView alloc] initWithFrame:myFrame];
    myImageView.image = myImage;
    
    myContentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, myImage.size.width, myImage.size.height)];
    myScrollView.contentSize = myContentView.frame.size;
    myScrollView.minimumZoomScale = myScrollView.frame.size.width / myImage.size.width;
    myScrollView.maximumZoomScale = 1.0;
    
    [myContentView addSubview:myImageView];
    [myScrollView addSubview:myContentView];
    [self.window addSubview:myScrollView];
    [myImageView release];
    [myContentView release];
    [myScrollView release];
    
    [self.window makeKeyAndVisible];
    return YES;
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)myScrollView
{
    return myContentView;
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

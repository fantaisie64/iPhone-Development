//
//  PicScrollViewAppDelegate.h
//  PicScrollView
//
//  Created by FANTAISIE on 2011/3/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PicScrollViewAppDelegate : NSObject <UIApplicationDelegate, UIScrollViewDelegate> {

    UIScrollView *myScrollView;
	UIView *myContentView;
	UIImageView *myImageView;
	UIImage *myImage;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

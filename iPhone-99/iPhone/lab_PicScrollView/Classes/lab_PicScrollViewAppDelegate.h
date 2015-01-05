//
//  lab_PicScrollViewAppDelegate.h
//  lab_PicScrollView
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lab_PicScrollViewAppDelegate : NSObject 
<UIApplicationDelegate, UIScrollViewDelegate> {
    UIWindow *window;
	UIScrollView *myScrollView;
	UIView *myContentView;
	UIImageView *myImageView;
	UIImage *myImage;
	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


//
//  ViewSizingViewController.h
//  ViewSizing
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewSizingViewController : UIViewController {
    IBOutlet UIView * targetView;
	IBOutlet UIButton * originalButton;
	IBOutlet UIButton * biggerButton;
	IBOutlet UIButton * smallerButton;
	CGRect orgSize;
}
-(IBAction) originalButtonPressed;
-(IBAction) biggerButtonPressed;
-(IBAction) smallerButtonPressed;
@end

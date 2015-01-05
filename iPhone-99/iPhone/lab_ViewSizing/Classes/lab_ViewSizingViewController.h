//
//  lab_ViewSizingViewController.h
//  lab_ViewSizing
//
//  Created by FANTAISIE on 2010/8/17.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lab_ViewSizingViewController : UIViewController {
	IBOutlet UIView * targetView;
	IBOutlet UILabel * label;
	IBOutlet UIButton * originalButton;
	IBOutlet UIButton * biggerButton;
	IBOutlet UIButton * smallerButton;
	CGRect orgSize;
}
-(IBAction) originalButtonPressed;
-(IBAction) biggerButtonPressed;
-(IBAction) smallerButtonPressed;
@end


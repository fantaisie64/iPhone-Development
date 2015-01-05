//
//  SimplePopoverViewController.h
//  SimplePopover
//
//  Created by FANTAISIE on 2010/10/18.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimplePopoverViewController : UIViewController {
	UIPopoverController *popoverController;
    IBOutlet UIToolbar *toolbar;
	IBOutlet UILabel *detailDescriptionLabel;
	UIBarButtonItem *barButtonItem;
    id detailItem;
}
@property (nonatomic, retain) UIPopoverController *popoverController;
@property (nonatomic, retain) id detailItem;
- (void)configureView;
- (void)pop;
@end


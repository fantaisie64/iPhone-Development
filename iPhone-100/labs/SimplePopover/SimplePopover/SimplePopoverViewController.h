//
//  SimplePopoverViewController.h
//  SimplePopover
//
//  Created by FANTAISIE on 2011/3/26.
//  Copyright 2011年 NTU. All rights reserved.
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

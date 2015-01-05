//
//  IBDesignViewController.h
//  IBDesign
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IBDesignViewController : UIViewController {
    IBOutlet UIButton *button;
	IBOutlet UILabel *label;
}

-(IBAction) clicked;

@end

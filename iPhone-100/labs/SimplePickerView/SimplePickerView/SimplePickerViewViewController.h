//
//  SimplePickerViewViewController.h
//  SimplePickerView
//
//  Created by FANTAISIE on 2011/5/23.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimplePickerViewViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    IBOutlet UIPickerView * myPickerView;
	IBOutlet UILabel * comp0;
	IBOutlet UILabel * comp1;
	NSArray * component1;
	NSArray * component2;
}

@end

//
//  SimpleModalViewViewController.h
//  SimpleModalView
//
//  Created by FANTAISIE on 2011/3/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModalViewController.h"


@interface SimpleModalViewViewController : UIViewController <SendTextDelegate> {
	
	IBOutlet UILabel* showLabel;
    
}

-(IBAction) getString;

@end

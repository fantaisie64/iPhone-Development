//
//  SimpleModalViewViewController.h
//  SimpleModalView
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModalViewController.h"



@interface SimpleModalViewViewController : UIViewController<SendTextDelegate> {
	IBOutlet UILabel* showLabel;
}
-(IBAction) getString;
@end


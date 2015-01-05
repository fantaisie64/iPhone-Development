//
//  TextViewController.h
//  SweetMemo
//
//  Created by Berby on 2011/8/20.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoPassing.h"


@interface TextViewController : UIViewController<AIAutoPassing>{
    
    id<AIAutoPassing>deletage;
    IBOutlet UIButton * backButton;
    IBOutlet UIButton * setTextButton;
    IBOutlet UITextField * textField;
    
}
@property(nonatomic, retain)id<AIAutoPassing>delegate;

-(IBAction) backToMain;
-(IBAction) setText;

@end

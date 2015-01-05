//
//  DisplayViewController.h
//  SweetMemo
//
//  Created by Berby on 2011/8/20.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoPassing.h"


@interface DisplayViewController : UIViewController<AIAutoPassing> {
    
    id<AIAutoPassing> deletage;
    IBOutlet UILabel * label;
    IBOutlet UIButton * backButton;
    IBOutlet UIButton * getTextButton;
    
}

@property(nonatomic, retain)id<AIAutoPassing>delegate;
@property(retain) NSString * memo;
-(IBAction) backToMain;
-(IBAction) getText;


@end

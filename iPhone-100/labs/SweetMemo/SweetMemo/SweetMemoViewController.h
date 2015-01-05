//
//  SweetMemoViewController.h
//  SweetMemo
//
//  Created by Berby on 2011/8/20.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DisplayViewController.h"
#import "TextViewController.h"

@interface SweetMemoViewController : UIViewController<AIAutoPassing> {
    
    IBOutlet UIButton * previewButton;
    IBOutlet UIButton * textButton;
    NSString * targetView;

}

@property(retain) NSString * myData;

-(IBAction) goPreview;
-(IBAction) goText;

@end

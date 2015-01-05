//
//  MyModalViewController.h
//  SimpleModalView
//
//  Created by FANTAISIE on 2011/3/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SendTextDelegate;

@interface MyModalViewController : UIViewController {
	IBOutlet UITextField* editText;
	id<SendTextDelegate> delegate;
}

-(IBAction) doneInput;

@property (assign) id<SendTextDelegate> delegate;

@end

@protocol SendTextDelegate <NSObject>

-(void) modalViewController:(MyModalViewController *) modalController didGenString:(NSString *) targetString;

@end

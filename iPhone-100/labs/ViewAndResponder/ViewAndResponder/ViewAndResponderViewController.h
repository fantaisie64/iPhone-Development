//
//  ViewAndResponderViewController.h
//  ViewAndResponder
//
//  Created by ShuWei Hsu on 2011/8/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyButton.h"

@interface ViewAndResponderViewController : UIViewController {
    IBOutlet MyButton *button1;
    IBOutlet MyButton *button2;
    NSInteger responseIndex;
}
- (IBAction)changeColor:(id)sender;
- (IBAction)changeCenter:(id)sender;
- (IBAction)changeResponder:(id)sender;
@end

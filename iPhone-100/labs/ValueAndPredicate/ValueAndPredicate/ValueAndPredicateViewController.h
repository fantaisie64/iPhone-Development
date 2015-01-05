//
//  ValueAndPredicateViewController.h
//  ValueAndPredicate
//
//  Created by FANTAISIE on 2011/4/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ValueAndPredicateViewController : UIViewController {
    IBOutlet UITextField *inputKey;
    IBOutlet UITextField *inputPredicate;
    IBOutlet UITextView *resultView;
    
    NSMutableArray * arrayWithDict;
}
- (IBAction)getValue;
- (IBAction)predicateResult;
- (void)initArrayWithCarNumber:(NSInteger)dicts;
@end

//
//  FileReadWriteViewController.h
//  FileReadWrite
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileReadWriteViewController : UIViewController {
    IBOutlet UILabel *myLabel;
	IBOutlet UIButton *myAddButton;
	IBOutlet UIButton *myReadButton;
	NSMutableString *information;
	NSMutableArray *setArray;
	NSMutableArray *newArray;
}
- (IBAction) add;
- (IBAction) read;
- (NSString *) fileLocation;
@end

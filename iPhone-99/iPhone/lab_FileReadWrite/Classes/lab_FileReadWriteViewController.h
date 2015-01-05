//
//  lab_FileReadWriteViewController.h
//  lab_FileReadWrite
//
//  Created by FANTAISIE on 2010/8/7.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lab_FileReadWriteViewController : UIViewController {
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


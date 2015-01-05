//
//  DetailViewController.h
//  ToDoList
//
//  Created by FANTAISIE on 2011/3/26.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
	IBOutlet UILabel *label;
	NSString *sentName;
}
@property (retain) NSString *information;
@end

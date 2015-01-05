//
//  DetailViewController.h
//  ToDoList
//
//  Created by FANTAISIE on 2010/12/13.
//  Copyright 2010 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController {
	IBOutlet UILabel *label;
	NSString *sentName;
}
@property (retain) NSString *information;
@end

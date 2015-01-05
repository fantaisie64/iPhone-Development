//
//  RootViewController.h
//  ToDoList
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyModalViewController.h"

@interface RootViewController : UITableViewController<SendTextDelegate>{
	NSMutableArray* businessData;
	NSMutableArray* personalData;
	UIBarButtonItem* addButton;
}
-(void) addRow;
@end

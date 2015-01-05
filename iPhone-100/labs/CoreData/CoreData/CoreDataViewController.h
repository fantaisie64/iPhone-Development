//
//  CoreDataViewController.h
//  CoreData
//
//  Created by FANTAISIE on 2011/3/27.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Car.h"

@interface CoreDataViewController : UIViewController {
    IBOutlet UIButton *buttonAdd;
    IBOutlet UIButton *buttonList;
    IBOutlet UIButton *buttonDelete;
    IBOutlet UITextField *carName;
    IBOutlet UITextField *carPrice;
    NSManagedObjectContext *managedObjectContext;
    NSManagedObjectModel *managedObjectModel;
}
-(IBAction) addCar;
-(IBAction) listCar;
-(IBAction) deleteAllCar;
@end

//
//  CarListViewController.h
//  CoreDataMore
//
//  Created by FANTAISIE on 2011/4/24.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface CarListViewController : UITableViewController {
    
}
@property (retain) RootViewController * rootViewController;
@property (nonatomic, retain) NSManagedObject *garage;
- (void) addCar;
- (NSArray *)sortCars;
@end

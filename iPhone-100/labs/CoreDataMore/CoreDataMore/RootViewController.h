//
//  RootViewController.h
//  CoreDataMore
//
//  Created by FANTAISIE on 2011/4/24.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RootViewController : UITableViewController <NSFetchedResultsControllerDelegate> {

}

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
- (void)saveContext;

@end

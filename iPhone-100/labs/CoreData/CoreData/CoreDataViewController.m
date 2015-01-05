//
//  CoreDataViewController.m
//  CoreData
//
//  Created by FANTAISIE on 2011/3/27.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "CoreDataViewController.h"

@implementation CoreDataViewController

-(IBAction) addCar {
    Car *newOne = [NSEntityDescription insertNewObjectForEntityForName:@"Car"
                    inManagedObjectContext:managedObjectContext];
    newOne.vendor = carName.text;
    newOne.price = [NSNumber numberWithInt:[carPrice.text floatValue]];
    NSError *error = nil;
    if(![managedObjectContext save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        [error release];
    }
}

-(IBAction) listCar {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Car" inManagedObjectContext:managedObjectContext];
    [request setEntity:entity];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"price > %@", [NSNumber numberWithFloat:(float)500]];
    [request setPredicate:predicate];
    NSError *error = nil;
    NSArray *fetchResults = [managedObjectContext executeFetchRequest:request error:&error];
    if(fetchResults == nil){
        NSLog(@"an error occured");
    }
    else{
        NSLog(@"List Car");
        for(Car *car in fetchResults) {
            NSLog(@"got car with name %@ and price %@",car.vendor,car.price);
        }
    }
}

-(IBAction) deleteAllCar {
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Car" inManagedObjectContext:managedObjectContext];
    [request setEntity:entity];
    NSError *error = nil;
    NSArray *fetchResults = [managedObjectContext executeFetchRequest:request error:&error];
    if(fetchResults == nil) {
        NSLog(@"an error occured");
    }
    else{
        for(NSManagedObject *object in fetchResults) {
            [managedObjectContext deleteObject:object];
        }
        if(![managedObjectContext save:&error]){
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            [error release];
        }
    }
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{ 
    [super viewDidLoad];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0]: nil;
    
    NSURL *storeURL = [NSURL fileURLWithPath:[basePath stringByAppendingPathComponent:@"Car.sqlite"]];
    NSPersistentStoreCoordinator *persistentCoordinator =
    [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[NSManagedObjectModel mergedModelFromBundles:nil]];
    NSError *error = nil; // a must
    if(![persistentCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error])
    {
        NSLog(@"error loading persistent store....");
    }
    managedObjectContext = [[NSManagedObjectContext alloc] init];
    [managedObjectContext setPersistentStoreCoordinator:persistentCoordinator];
    [error release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

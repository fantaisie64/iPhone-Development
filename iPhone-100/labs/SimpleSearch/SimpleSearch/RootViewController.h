//
//  RootViewController.h
//  SimpleSearch
//
//  Created by FANTAISIE on 2011/6/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSArray * dataArray;
}

@property (retain) NSMutableArray * fetchedArray;
@property (retain) NSArray * sections;
- (void)filterContentForSearchText:(NSString*)searchText;
-(void) setUpSectionString;
-(NSInteger ) numberOfObjects:(NSArray *) objects inSection:(NSInteger) section;
-(NSString *) titleForObjects:(NSArray *) data AtIndexPath:(NSIndexPath *) indexPath;
@end

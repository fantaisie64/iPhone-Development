//
//  RootViewController.m
//  ToDoList
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

-(void)setEditing:(BOOL)editing animated:(BOOL)animated
{
	[super setEditing:editing animated:YES];
	
	if (editing) {
        self.navigationItem.leftBarButtonItem = addButton;
    } else {
        self.navigationItem.leftBarButtonItem = nil;
    }
}

-(void) addRow
{
	MyModalViewController* myModalViewCon = [[MyModalViewController alloc] initWithNibName:@"MyModalView" bundle:nil];
	myModalViewCon.delegate = self;
	[self presentModalViewController:myModalViewCon animated:YES];
	[myModalViewCon release];
}

-(void) modalViewController:(MyModalViewController *) modalController didGenString:(NSString *) targetString withPicker:(NSInteger ) row
{
	if(row==0)
		[businessData insertObject:targetString atIndex:([businessData count])];
	else
		[personalData insertObject:targetString atIndex:([personalData count])];	
	[self setEditing:NO animated:YES];
	[self.tableView reloadData];
	[self dismissModalViewControllerAnimated:YES];		
}


- (void)viewDidLoad {
    businessData = [[NSMutableArray alloc] initWithObjects:@"Meeting", @"Consulting", @"Make a call", nil];
	personalData = [[NSMutableArray alloc] initWithObjects:@"Party", @"Shopping",nil];
	addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addRow)];
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	self.navigationItem.rightBarButtonItem = self.editButtonItem;
	[super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	if(section == 0)
		return [businessData count];
	if(section == 1)
		return [personalData count];
	else
		return 0;
    return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	// Add the code below
	if(indexPath.section == 0)
		cell.textLabel.text = [businessData objectAtIndex:indexPath.row];
	else if(indexPath.section == 1)
		cell.textLabel.text = [personalData objectAtIndex:indexPath.row];
	else
		cell.textLabel.text = nil;
    return cell;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	if(section == 0)
		return @"Business";
	if(section == 1)
		return @"Personal";
	else
		return @"none";
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
		if(indexPath.section==0)
		{
			[businessData removeObjectAtIndex:indexPath.row];
		}
		else
		{
			[personalData removeObjectAtIndex:indexPath.row];
		}
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}




// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
	if(fromIndexPath.section != toIndexPath.section)
	{
		if(fromIndexPath.section == 0)
		{
			[personalData insertObject:[businessData objectAtIndex:fromIndexPath.row] atIndex:toIndexPath.row]; 			
			[businessData removeObjectAtIndex:fromIndexPath.row];			
		}
		else
		{
			[businessData insertObject:[personalData objectAtIndex:fromIndexPath.row] atIndex:toIndexPath.row]; 			
			[personalData removeObjectAtIndex:fromIndexPath.row];			
		}		
	}	
}




// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}



#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
	/*
	 <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
	 [self.navigationController pushViewController:detailViewController animated:YES];
	 [detailViewController release];
	 */
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end


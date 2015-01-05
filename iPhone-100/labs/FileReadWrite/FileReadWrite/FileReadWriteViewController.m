//
//  FileReadWriteViewController.m
//  FileReadWrite
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "FileReadWriteViewController.h"

@implementation FileReadWriteViewController

- (IBAction)add
{
	[setArray addObject:[@"Hello at " stringByAppendingString:[[NSDate date] description]]];
	[setArray writeToFile:[self fileLocation] atomically:YES];
}

- (IBAction)read
{
	newArray = [[NSMutableArray alloc] initWithContentsOfFile:[self fileLocation]];
	for(NSString *ele in newArray){
		[information appendString:[ele stringByAppendingString:@"\n"]];
	}
	[myLabel setText:information];
	[information setString:@""];
}

- (NSString * ) fileLocation
{
	return [[NSBundle mainBundle] pathForResource:@"Test" ofType:@"plist"];
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
    information = [[NSMutableString alloc] init];
	setArray = [[NSMutableArray alloc] initWithContentsOfFile:[self fileLocation]];
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

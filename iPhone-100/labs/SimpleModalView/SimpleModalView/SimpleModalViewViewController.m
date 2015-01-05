//
//  SimpleModalViewViewController.m
//  SimpleModalView
//
//  Created by FANTAISIE on 2011/3/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "SimpleModalViewViewController.h"

@implementation SimpleModalViewViewController

-(IBAction) getString
{
	MyModalViewController* myModalViewCon = [[MyModalViewController alloc] initWithNibName:@"MyModalView" bundle:nil];
	myModalViewCon.delegate = self;
	[self presentModalViewController:myModalViewCon animated:YES];
	[myModalViewCon release];
}

-(void) modalViewController:(MyModalViewController *) modalController didGenString:(NSString *) targetString
{
	[showLabel setText:targetString];
	[self dismissModalViewControllerAnimated:YES];	
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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

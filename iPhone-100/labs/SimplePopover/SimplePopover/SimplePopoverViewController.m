//
//  SimplePopoverViewController.m
//  SimplePopover
//
//  Created by FANTAISIE on 2011/3/26.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "SimplePopoverViewController.h"
#import "RootController.h"

@implementation SimplePopoverViewController

@synthesize popoverController, detailItem;

-(void)setDetailItem:(id)newDetailItem
{
    if (detailItem != newDetailItem) {
        [detailItem release];
        detailItem = [newDetailItem retain];
        [self configureView];
    }
    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
    }        
}

-(void)configureView
{
    detailDescriptionLabel.text = [detailItem description];   
}

-(void) pop
{
    if (popoverController == nil) {
        RootController *root = [[RootController alloc] init]; 
        popoverController = [[UIPopoverController alloc] initWithContentViewController:root]; 
        [root release];
    }
	
    [popoverController presentPopoverFromBarButtonItem:barButtonItem 
                              permittedArrowDirections:UIPopoverArrowDirectionAny 
                                              animated:YES];    
}

-(void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
	if (toInterfaceOrientation == UIInterfaceOrientationPortrait){
		toolbar.frame = CGRectMake(0, 0, 768, 44);
	}
	else {
		toolbar.frame = CGRectMake(0, 0, 1024, 44);
	}
	
}

- (void)dealloc
{
    [super dealloc];
    [popoverController release];
	[detailItem release];
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
    
    barButtonItem = [[toolbar items] objectAtIndex:0];
	barButtonItem.title = @"Root List";
	[barButtonItem setAction:@selector(pop)];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.popoverController = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end

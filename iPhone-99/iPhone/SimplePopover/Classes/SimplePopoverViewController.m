//
//  SimplePopoverViewController.m
//  SimplePopover
//
//  Created by FANTAISIE on 2010/10/18.
//  Copyright NTU 2010. All rights reserved.
//

#import "SimplePopoverViewController.h"
#import "RootController.h"

@implementation SimplePopoverViewController

@synthesize popoverController, detailItem;

- (void)setDetailItem:(id)newDetailItem {
    if (detailItem != newDetailItem) {
        [detailItem release];
        detailItem = [newDetailItem retain];
        [self configureView];
    }
    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
    }        
}

- (void)configureView {
    detailDescriptionLabel.text = [detailItem description];   
}

-(void) pop{
	
    if (popoverController == nil) {
        RootController *root = [[RootController alloc] init]; 
        popoverController = [[UIPopoverController alloc] initWithContentViewController:root]; 
        [root release];
    }
	
    [popoverController presentPopoverFromBarButtonItem:barButtonItem 
	 permittedArrowDirections:UIPopoverArrowDirectionAny 
	 animated:YES];    
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation 
										  duration:(NSTimeInterval)duration{
	if (toInterfaceOrientation == UIInterfaceOrientationPortrait){
		toolbar.frame = CGRectMake(0, 0, 768, 44);
	}
	else {
		toolbar.frame = CGRectMake(0, 0, 1024, 44);
	}
	
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	barButtonItem = [[toolbar items] objectAtIndex:0];
	barButtonItem.title = @"Root List";
	[barButtonItem setAction:@selector(pop)];
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	self.popoverController = nil;
}


- (void)dealloc {
    [super dealloc];
	[popoverController release];
	[detailItem release];
}

@end

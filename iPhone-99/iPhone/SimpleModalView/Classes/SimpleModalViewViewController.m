//
//  SimpleModalViewViewController.m
//  SimpleModalView
//
//  Created by FANTAISIE on 2010/8/8.
//  Copyright NTU 2010. All rights reserved.
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

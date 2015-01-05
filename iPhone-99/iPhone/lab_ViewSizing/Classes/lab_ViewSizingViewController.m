//
//  lab_ViewSizingViewController.m
//  lab_ViewSizing
//
//  Created by FANTAISIE on 2010/8/17.
//  Copyright NTU 2010. All rights reserved.
//

#import "lab_ViewSizingViewController.h"

@implementation lab_ViewSizingViewController

-(IBAction) originalButtonPressed{
	NSLog(@"Original button pressed");
	targetView.bounds = orgSize;
}

-(IBAction) biggerButtonPressed{
	NSLog(@"Bigger button pressed");
	CGRect newSize =  targetView.bounds;
	newSize = CGRectMake(0, 0, newSize.size.width*1.5, newSize.size.height*1.5);
	
	targetView.bounds = newSize;
}

-(IBAction) smallerButtonPressed{
	NSLog(@"Smaller button pressed");
	CGRect newSize =  targetView.bounds;
	newSize = CGRectMake(0, 0, newSize.size.width/1.5, newSize.size.height/1.5);
	targetView.bounds = newSize;
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
	orgSize = targetView.bounds;
}



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

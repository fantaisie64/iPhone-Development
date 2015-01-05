//
//  SimpleMapViewController.m
//  SimpleMap
//
//  Created by FANTAISIE on 2010/10/28.
//  Copyright NTU 2010. All rights reserved.
//

#import "SimpleMapViewController.h"

@implementation SimpleMapViewController

- (IBAction) toMove{
	myCenter.latitude = 25.033646;
	myCenter.longitude = 121.564026;
	myRegion.center = myCenter;
	[map setRegion:myRegion animated:YES];
	[map regionThatFits:myRegion];
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
	[map setDelegate: self];
	[map setMapType: MKMapTypeStandard];
	map.scrollEnabled = YES; 
	map.zoomEnabled = YES; 

	myCenter.latitude = 25.039938;
	myCenter.longitude = 121.512810;
	myRegion.center = myCenter;

	mySpan.latitudeDelta = 0.003;
	mySpan.longitudeDelta = 0.003;
	myRegion.span = mySpan;
	
	

	[map setRegion:myRegion animated:YES];
	[map regionThatFits:myRegion];
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

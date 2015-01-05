    //
//  myViewControllerA.m
//  simple_nav
//
//  Created by FANTAISIE on 2010/8/7.
//  Copyright 2010 NTU. All rights reserved.
//

#import "myViewControllerA.h"
#import "myViewControllerB.h"


@implementation myViewControllerA

-(id) init{
	if(self = [super init]){}
	   return self;
}
	   
-(void) nextView{
	 myViewControllerB* myViewConB = [[myViewControllerB alloc] initWithNibName:@"myViewB" bundle:nil];
	[self.navigationController pushViewController:myViewConB animated:YES];	
	[myViewConB release];
}
	   
/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	UIView* myView=[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame ] ;
	UILabel* myLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 100, 300, 50)];
	[myLabel setText:@"myViewController A"];
	
	myButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	myButton.frame = CGRectMake(80, 200, 150, 50);
	[myButton setTitle:@"Next View" forState:UIControlStateNormal];
	[myLabel setText:@"myViewController A"];
	[myButton addTarget:self action:@selector(nextView) forControlEvents:UIControlEventTouchUpInside];
	
	[myView addSubview:myLabel];
	[myView addSubview:myButton];
	self.view = myView;
	[myView release];
}


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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

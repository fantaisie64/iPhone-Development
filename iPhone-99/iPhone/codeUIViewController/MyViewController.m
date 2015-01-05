    //
//  MyViewController.m
//  codeUIViewController
//
//  Created by FANTAISIE on 2010/8/7.
//  Copyright 2010 NTU. All rights reserved.
//

#import "MyViewController.h"


@implementation MyViewController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

-(id) init{
	if(self = [super init]){}
	return self;
}

-(void) myAction{
	[myLabel setText:@"Hello MyViewController"];
}

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	UIView* myView=[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
	myButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
	myButton.frame = CGRectMake(110, 150, 100, 50);
	myLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 50)];
	[myButton setTitle:@"push" forState:UIControlStateNormal];
	[myLabel setText:@"Label"];
	[myButton addTarget:self action:@selector(myAction) forControlEvents:UIControlEventTouchUpInside];
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
	[myLabel release];
	[myButton release];
    [super dealloc];
}


@end

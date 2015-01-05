//
//  SimpleMapViewController.m
//  SimpleMap
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
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
    
	[map setRegion:myRegion];
	[map regionThatFits:myRegion];
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

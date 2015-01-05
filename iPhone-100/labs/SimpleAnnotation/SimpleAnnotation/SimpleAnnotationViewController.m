//
//  SimpleAnnotationViewController.m
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "SimpleAnnotationViewController.h"
#import "MyAnnotation.h"

@implementation SimpleAnnotationViewController

-(IBAction) toNote{
	currentLocation = mapView.userLocation.coordinate;
	
	CLLocationCoordinate2D tmpCoordinate;
	MyAnnotation * anno1 = [MyAnnotation new];
	anno1.title = @"Hospital";
	anno1.subtitle = @"National US Hospital";
	tmpCoordinate.latitude = currentLocation.latitude+ 0.005;
	tmpCoordinate.longitude = currentLocation.longitude + 0.005;
	anno1.coordinate = tmpCoordinate;
	
	MyAnnotation * anno2 = [MyAnnotation new];
	anno2.title = @"School";
	anno2.subtitle = @"National Elementary School";
	tmpCoordinate.latitude = currentLocation.latitude- 0.005;
	tmpCoordinate.longitude = currentLocation.longitude- 0.005;
	anno2.coordinate = tmpCoordinate;
	
	if(mapView.userLocationVisible){
		CLLocationCoordinate2D coordination = mapView.userLocation.coordinate;
		MKCoordinateSpan mySpan = {0.05f, 0.05f};
		MKCoordinateRegion toRegion = {coordination, mySpan};
		[mapView setRegion:toRegion animated:YES];
		[mapView addAnnotation:anno1];
		[mapView addAnnotation:anno2];
	}
}

- (MKAnnotationView *) mapView:(MKMapView *)mView viewForAnnotation:(id <MKAnnotation>) annotation{
	if (annotation.coordinate.latitude == mView.userLocation.location.coordinate.latitude
		&& annotation.coordinate.longitude == mView.userLocation.location.coordinate.longitude) {
		return nil;
	}
	MKPinAnnotationView *newAnnotation = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"annotation1"];
	newAnnotation.pinColor = MKPinAnnotationColorGreen;
	newAnnotation.animatesDrop = YES; 
	newAnnotation.canShowCallout=YES;
	
	return newAnnotation;
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
    mapView.delegate = self;
	mapView.showsUserLocation = YES;
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

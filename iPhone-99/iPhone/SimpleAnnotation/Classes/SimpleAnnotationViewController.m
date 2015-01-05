//
//  SimpleAnnotationViewController.m
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2010/11/7.
//  Copyright NTU 2010. All rights reserved.
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

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation{
	
	if (annotation.coordinate.latitude == mapView.userLocation.coordinate.latitude
		&& annotation.coordinate.longitude == mapView.userLocation.coordinate.longitude) {
		return nil;
	}
	MKPinAnnotationView *newAnnotation = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"annotation1"];
	newAnnotation.pinColor = MKPinAnnotationColorGreen;
	newAnnotation.animatesDrop = YES; 
	newAnnotation.canShowCallout=YES;
	
	return newAnnotation;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	mapView.delegate = self;
	mapView.showsUserLocation = YES;
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

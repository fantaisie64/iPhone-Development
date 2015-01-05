//
//  SimpleMapViewController.h
//  SimpleMap
//
//  Created by FANTAISIE on 2010/10/28.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <mapkit/mapkit.h>

@interface SimpleMapViewController : UIViewController <MKMapViewDelegate> {
	IBOutlet MKMapView *map;
	
	MKCoordinateRegion myRegion;
	CLLocationCoordinate2D myCenter;
	MKCoordinateSpan mySpan;
}
- (IBAction) toMove;
@end


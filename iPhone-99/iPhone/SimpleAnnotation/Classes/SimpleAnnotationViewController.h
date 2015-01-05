//
//  SimpleAnnotationViewController.h
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2010/11/7.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <mapkit/mapkit.h>

@interface SimpleAnnotationViewController : UIViewController<MKMapViewDelegate>  {
	IBOutlet MKMapView *mapView;
	CLLocationCoordinate2D currentLocation;
}
- (IBAction) toNote;
@end


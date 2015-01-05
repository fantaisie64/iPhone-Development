//
//  SimpleAnnotationViewController.h
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <mapkit/mapkit.h>

@interface SimpleAnnotationViewController : UIViewController <MKMapViewDelegate> {
	IBOutlet MKMapView *mapView;
	CLLocationCoordinate2D currentLocation;
}
- (IBAction) toNote;
@end

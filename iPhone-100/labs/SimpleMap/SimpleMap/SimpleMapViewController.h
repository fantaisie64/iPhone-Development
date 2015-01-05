//
//  SimpleMapViewController.h
//  SimpleMap
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SimpleMapViewController : UIViewController <MKMapViewDelegate>{
        IBOutlet MKMapView *map;
        
        MKCoordinateRegion myRegion;
        CLLocationCoordinate2D myCenter;
        MKCoordinateSpan mySpan;
    }
    - (IBAction) toMove;
@end

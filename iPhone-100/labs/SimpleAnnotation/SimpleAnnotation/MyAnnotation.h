//
//  MyAnnotation.h
//  SimpleAnnotation
//
//  Created by FANTAISIE on 2011/3/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject<MKAnnotation> {
	NSString * title;
	NSString * subtitle;
	CLLocationCoordinate2D coordinate;
}
@property (retain, nonatomic) NSString * title;
@property (retain, nonatomic) NSString * subtitle;
@property (assign, nonatomic) CLLocationCoordinate2D coordinate;
@end

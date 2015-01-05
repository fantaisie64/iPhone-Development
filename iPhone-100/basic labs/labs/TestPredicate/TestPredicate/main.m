//
//  main.m
//  TestPredicate
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	NSDictionary *car1 = [NSDictionary dictionaryWithObjectsAndKeys:
						  @"BMW", @"brand", [NSNumber numberWithInteger:2000], @"year", nil];
	NSDictionary *car2 = [NSDictionary dictionaryWithObjectsAndKeys:
						  @"Toyota", @"brand", [NSNumber numberWithInteger:1998], @"year", nil];
	NSDictionary *car3 = [NSDictionary dictionaryWithObjectsAndKeys:
						  @"Honda", @"brand", [NSNumber numberWithInteger:2009], @"year", nil];
	NSArray *cars = [NSArray arrayWithObjects:car1, car2, car3, nil];
	NSArray *brands= [NSArray arrayWithObjects:@"Honda", @"Toyota", nil];
	NSArray *years = [NSArray arrayWithObjects:[NSNumber numberWithInteger:1995], [NSNumber numberWithInteger:2005], nil];
	NSPredicate *findCar = [NSPredicate predicateWithFormat:@"brand IN %@ && year BETWEEN %@", brands, years];
	
	NSArray* foundCar = [cars filteredArrayUsingPredicate:findCar];
	if(foundCar.count > 0)
		NSLog(@"The car(s) found %@", foundCar);
	else
		NSLog(@"No car is found");
    [pool drain];
    return 0;
}


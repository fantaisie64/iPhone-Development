//
//  Car.h
//  CoreData
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright (c) 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Car : NSManagedObject {
@private
}
@property (nonatomic, retain) NSNumber * price;
@property (nonatomic, retain) NSString * vendor;

@end

//
//  Equation.h
//  TestUnitTest
//
//  Created by FANTAISIE on 2011/3/2.
//  Copyright 2011 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Equation : NSObject {
	int number;
}
@property (assign) int number;

-(int) getResult:(int)exponent;

@end

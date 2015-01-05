//
//  Equation.m
//  TestUnitTest
//
//  Created by FANTAISIE on 2011/3/2.
//  Copyright 2011 NTU. All rights reserved.
//

#import "Equation.h"


@implementation Equation
@synthesize number;

-(int) getResult:(int)exponent{
	return pow((number), exponent);
}

@end

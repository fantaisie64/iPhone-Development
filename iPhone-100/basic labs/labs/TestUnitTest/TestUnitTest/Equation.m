//
//  Equation.m
//  TestUnitTest
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "Equation.h"


@implementation Equation
@synthesize number;

-(int) getResult:(int)exponent{
	return pow((number), exponent);
}

@end

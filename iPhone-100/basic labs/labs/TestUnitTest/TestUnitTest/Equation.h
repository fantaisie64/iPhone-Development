//
//  Equation.h
//  TestUnitTest
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Equation : NSObject {
	int number;
}
@property (assign) int number;

-(int) getResult:(int)exponent;
@end

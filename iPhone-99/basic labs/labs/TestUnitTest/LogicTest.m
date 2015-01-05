//
//  LogicTest.m
//  TestUnitTest
//
//  Created by FANTAISIE on 2011/3/2.
//  Copyright 2011 NTU. All rights reserved.
//

#import "LogicTest.h"


@implementation LogicTest

-(void) setUp {
 myEquation = [Equation new];
 [myEquation setNumber:10];
 NSLog(@"start point");
 }
 
 -(void) testSetter{
 STAssertEquals([myEquation getResult:3], 1000,
				[@"Should be 1000. Now it is " stringByAppendingString:
				 [NSString stringWithFormat:@"%d", [myEquation getResult:3]]]);
 }
 
 -(void) tearDown {
 [myEquation release];
 NSLog(@"end point");
 }
@end

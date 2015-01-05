//
//  MyTest.m
//  MyTest
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "MyTest.h"


@implementation MyTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    myEquation = [Equation new];
    [myEquation setNumber:10];
    NSLog(@"start point");
}

- (void)tearDown
{
    // Tear-down code here.
    [myEquation release];
    NSLog(@"end point");
    
    [super tearDown];
}

- (void)testExample
{
    //STFail(@"Unit tests are not implemented yet in MyTest");
    STAssertEquals([myEquation getResult:3], 1000,
                   [@"Should be 1000. Now it is " stringByAppendingString:
                    [NSString stringWithFormat:@"%d", [myEquation getResult:3]]]);
}

@end

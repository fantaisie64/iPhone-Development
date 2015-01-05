//
//  main.m
//  TestCategory
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExtendedArray.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	NSMutableArray *array = [NSMutableArray arrayWithObjects:@"first", @"second", @"third", nil];
	NSMutableDictionary *dictionary = [array arrayToDictionary];
	NSLog(@"%@", dictionary);
    [pool drain];
    return 0;
}


//
//  main.m
//  TestProxy
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProxy.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	NSMutableArray *newArray = [NSMutableArray arrayWithObject:@"Hello from Me"];
	MyProxy *newProxy = [[MyProxy alloc] init];
	newProxy.targetObject = newArray;
	[newProxy addObject:@"Hello from Proxy"];
	NSLog(@"%@", newProxy.targetObject);
    [pool drain];
    return 0;
}


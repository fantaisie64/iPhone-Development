//
//  main.m
//  TestObserving
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Observer.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	Engine * targetEngine = [Engine new];
	Observer * myObserver = [Observer new];
	targetEngine.name = @"initializing";
	[targetEngine addObserver:myObserver forKeyPath:@"name" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:NULL];
	targetEngine.name = @"observing";
	[targetEngine removeObserver:myObserver forKeyPath:@"name"];
	targetEngine.name = @"ending";
    [pool drain];
    return 0;
}


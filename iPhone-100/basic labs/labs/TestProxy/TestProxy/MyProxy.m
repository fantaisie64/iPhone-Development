//
//  MyProxy.m
//  TestProxy
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "MyProxy.h"


@implementation MyProxy
@synthesize targetObject;

-(id) init{
	return self;
}

-(void)forwardInvocation:(NSInvocation *)anInvocation {
	[anInvocation setTarget:targetObject];
	[anInvocation invoke];
}

-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
	return [targetObject methodSignatureForSelector:aSelector];
}
@end

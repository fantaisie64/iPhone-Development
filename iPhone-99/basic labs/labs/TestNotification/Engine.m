//
//  Engine.m
//  TestNotification
//
//  Created by FANTAISIE on 2011/2/8.
//  Copyright 2011 NTU. All rights reserved.
//

#import "Engine.h"


@implementation Engine

@synthesize name;

-(void) setName:(NSString *) n{
	name = n;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"NameUpdated" object:self];
}

@end

//
//  Engine.m
//  TestNotification
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "Engine.h"


@implementation Engine

-(void) setName:(NSString *) n{
	name = n;
	[[NSNotificationCenter defaultCenter] postNotificationName:@"NameUpdated" object:self];
}

-(NSString *) name{
	return name;
}
@end

//
//  Account.m
//  TestProtocol
//
//  Created by FANTAISIE on 2011/2/7.
//  Copyright 2011 NTU. All rights reserved.
//

#import "Account.h"


@implementation Account
@synthesize name, deposit, delegate;

-(void) takeMoney:(int)money{
	if ([delegate respondsToSelector:@selector (withdrawMoney:withName:withMoney:)])
		[delegate withdrawMoney:self withName:name withMoney:money];
	else
		NSLog(@"Please implement withdrawMoney:withName:withMoney:");
}

@end

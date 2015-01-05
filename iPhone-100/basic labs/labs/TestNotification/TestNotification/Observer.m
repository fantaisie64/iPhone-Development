//
//  Observer.m
//  TestNotification
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "Observer.h"


@implementation Observer
- (void) addObserving:(NSObject *) observedObject{
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gotNote:) name:@"NameUpdated" object:observedObject];
}

-(void) removeObserving{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void) gotNote:(NSNotification *)note{
	NSLog(@"the new name is %@", [[note object] name]);
}
@end

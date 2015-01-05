//
//  Observer.m
//  TestObserving
//
//  Created by FANTAISIE on 2011/2/8.
//  Copyright 2011 NTU. All rights reserved.
//

#import "Observer.h"


@implementation Observer

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object
						change:(NSDictionary *)change context:(void *)context{
	if([keyPath isEqual:@"name"]) {
		NSLog(@"the new name is %@",[change objectForKey:NSKeyValueChangeNewKey]);
	}
}

@end

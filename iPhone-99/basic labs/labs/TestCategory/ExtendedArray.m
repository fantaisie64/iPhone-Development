//
//  ExtendedArray.m
//  TestCategory
//
//  Created by FANTAISIE on 2011/2/8.
//  Copyright 2011 NTU. All rights reserved.
//

#import "ExtendedArray.h"


@implementation NSMutableArray (ExtendedArray)
-(NSMutableDictionary *) arrayToDictionary{
	NSMutableDictionary *dictionary = [NSMutableDictionary new];
	for(int i=0 ; i<self.count; i++){
		[dictionary setObject:[self objectAtIndex:i] forKey:[NSString stringWithFormat:@"%d", i]];
	}
	return dictionary;
}
@end

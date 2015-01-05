//
//  DatePrinter.m
//  TestTimer
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "DatePrinter.h"


@implementation DatePrinter

-(void)showDateTime:(id) sender{
	NSDate *now = [NSDate date];
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"hh:mm:ss"];
    NSLog(@"%@", [dateFormatter stringFromDate:now]);
}

@end

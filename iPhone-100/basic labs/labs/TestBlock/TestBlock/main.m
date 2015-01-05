//
//  main.m
//  TestBlock
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	__block int var1 = 10;
	int var2 = 20;
    
	int (^myBlock) (int a) = ^(int a){
		var1 = 5;
		return var1+var2+a;
	};
    
	var1 = 7;
	NSLog(@"var1 = %d\n\n", var1);
	
	int result1 = myBlock(6);
	NSLog(@"var1 = %d", var1);
	NSLog(@"var2 = %d", var2);
	NSLog(@"result = %d\n\n", result1);
	
	var2 = 15;
	NSLog(@"var2 = %d\n\n", var2);
	
	int result2 = myBlock(6);
	NSLog(@"var1 = %d", var1);
	NSLog(@"var2 = %d", var2);
	NSLog(@"result = %d", result2);    [pool drain];
    return 0;
}


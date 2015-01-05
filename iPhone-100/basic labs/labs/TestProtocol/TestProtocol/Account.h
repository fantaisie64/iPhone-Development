//
//  Account.h
//  TestProtocol
//
//  Created by FANTAISIE on 2011/3/31.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol withdraw;

@interface Account : NSObject {
	NSString *name;
	int deposit;
	id<withdraw> delegate;
}
-(void) takeMoney:(int) money;
@property (retain) NSString * name;
@property (assign) int deposit;
@property (assign) id<withdraw> delegate;
@end

@protocol withdraw<NSObject>

-(void) withdrawMoney:(Account *) account withName:(NSString *) name withMoney:(int) money;

@end

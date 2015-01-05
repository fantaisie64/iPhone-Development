//
//  ATM.m
//  TestProtocol
//
//  Created by FANTAISIE on 2011/3/31.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "ATM.h"


@implementation ATM
-(void) withdrawMoney:(Account *) account withName:(NSString *) name withMoney:(int) money{
	if(account.deposit >= money){
		account.deposit -= money;
		NSLog(@"***Name: %@, Withdraw: %d, Deposit: %d***", account.name, money, account.deposit);
	}
	else {
		NSLog(@"***Not enough money!! - Name: %@, Deposit: %d***",account.name, account.deposit);
	}
}
@end

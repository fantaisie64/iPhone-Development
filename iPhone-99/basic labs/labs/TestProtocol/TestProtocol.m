#import <Foundation/Foundation.h>
#import "Account.h"
#import "ATM.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
    // insert code here...
    //NSLog(@"Hello, World!");
	Account *account = [Account new];
	account.name = @"Michael";
	account.deposit = 1000;
	ATM *atm = [ATM new];
	account.delegate = atm;
	[account takeMoney:700];
	[account takeMoney:500];
    [pool drain];
    return 0;
}

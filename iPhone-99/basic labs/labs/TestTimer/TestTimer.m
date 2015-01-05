#import <Foundation/Foundation.h>
#import "DatePrinter.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// insert code here...
    //NSLog(@"Hello, World!");
	DatePrinter * datePrinter = [DatePrinter new];
    NSRunLoop* myRunLoop = [NSRunLoop currentRunLoop];
	
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:datePrinter
								   selector:@selector(showDateTime:) userInfo:nil repeats:YES];
	
    do
    {
		[myRunLoop runUntilDate:[NSDate date]];
		
    }
    while (1);
    [pool drain];
    return 0;
}


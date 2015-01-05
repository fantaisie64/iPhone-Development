#import <Foundation/Foundation.h>
#import "Equation.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");
	Equation *myEquation;
	myEquation = [Equation new];
    [pool drain];
    return 0;
}

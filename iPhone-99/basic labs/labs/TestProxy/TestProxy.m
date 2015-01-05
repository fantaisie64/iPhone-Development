#import <Foundation/Foundation.h>
#import "MyProxy.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	NSMutableArray *newArray = [NSMutableArray arrayWithObject:@"Hello from Me"];
	MyProxy *newProxy = [[MyProxy alloc] init];
	newProxy.targetObject = newArray;
	[newProxy addObject:@"Hello from Proxy"];
	NSLog(@"%@", newProxy.targetObject);
    [pool drain];
    return 0;
}

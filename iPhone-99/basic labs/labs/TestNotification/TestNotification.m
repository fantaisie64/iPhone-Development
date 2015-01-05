#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Observer.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    //NSLog(@"Hello, World!");
	Engine * targetEngine = [Engine new];
	Observer * myObserver = [Observer new];
	targetEngine.name = @"initializing";
	[myObserver addObserving:targetEngine];
	targetEngine.name = @"observing";
	[myObserver removeObserving];
	targetEngine.name = @"ending";
    [pool drain];
    return 0;
}

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");
	
	int a;
	
	while(a!=9){
		printf("Guess an one-number integer: ");
		if(scanf("%d", &a)==1)
			printf("You inserted: %d\n", a);
		else
			printf("Not a integer\n");			
		while(getchar()!='\n'); //Clean buffer
	};
	printf("Correct! Game finished");
	
    [pool drain];
    return 0;
}

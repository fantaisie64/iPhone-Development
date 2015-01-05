//
//  WebGetPostViewController.m
//  WebGetPost
//
//  Created by FANTAISIE on 2010/10/27.
//  Copyright NTU 2010. All rights reserved.
//

#import "WebGetPostViewController.h"

@implementation WebGetPostViewController

-(IBAction) testGet{
	NSURL*url=[NSURL URLWithString:@"http://127.0.0.1/~FANTAISIE/php_test/Hello.php?name=GetFromiPhone"];
	NSMutableURLRequest* urlRequest = [[NSMutableURLRequest alloc]initWithURL:url];
	[urlRequest setHTTPMethod:@"GET"];
	myConnection=[NSURLConnection connectionWithRequest:urlRequest delegate:self];
}

-(IBAction) testPost{
	NSURL*url=[NSURL URLWithString:@"http://127.0.0.1/~FANTAISIE/php_test/Hello.php"];
	NSString * content=@"name=PostFromiPhone";
	NSMutableURLRequest* urlRequest = [[NSMutableURLRequest alloc]initWithURL:url];
	[urlRequest setHTTPMethod:@"POST"];
	[urlRequest setHTTPBody:[content dataUsingEncoding:NSASCIIStringEncoding]];
	myConnection=[NSURLConnection connectionWithRequest:urlRequest delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
	NSLog(@"response %@", response.URL );
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	NSLog(@"received data %@", [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease]);
	NSString * temp =[[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding] autorelease];
	textView.text = [temp stringByReplacingOccurrencesOfString:@"<br>" withString:@"\n"];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
	NSLog(@"error occurs");
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end

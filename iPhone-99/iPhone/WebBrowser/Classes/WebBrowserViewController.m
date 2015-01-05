//
//  WebBrowserViewController.m
//  WebBrowser
//
//  Created by FANTAISIE on 2010/10/20.
//  Copyright NTU 2010. All rights reserved.
//

#import "WebBrowserViewController.h"

@implementation WebBrowserViewController

-(IBAction) pressGo{
	NSLog(@"Go");
	url = [NSURL URLWithString:address.text];
	[webView loadRequest:[NSURLRequest requestWithURL:url]];
	[address endEditing:YES];
}

-(IBAction) pressForward{
	NSLog(@"Forward");
	[webView goForward];
}

-(IBAction) pressBack{
	NSLog(@"Back");
	[webView goBack];
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
	if (!spinner) {
		spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
		
		loadingLabel = [[UILabel alloc] init];
		loadingLabel.text = @"Loading...";
		loadingLabel.textColor = [UIColor grayColor];
		[loadingLabel sizeToFit];
		
		CGFloat totalWidth = spinner.frame.size.width + loadingLabel.frame.size.width;
		
		CGRect frame1 = spinner.frame;
		frame1.origin.x = (self.view.bounds.size.width - totalWidth) / 2.0;
		frame1.origin.y = (self.view.bounds.size.height - frame1.size.height) / 2.0;
		
		CGRect frame2 = loadingLabel.frame;
		frame2.origin.x = (self.view.bounds.size.width - totalWidth) / 2.0 + frame1.size.width;
		frame2.origin.y = (self.view.bounds.size.height - frame2.size.height) / 2.0;
		spinner.frame = frame1;
		loadingLabel.frame = frame2;
		
		[spinner startAnimating];
		[self.view addSubview:spinner];
		[self.view addSubview:loadingLabel];
	}
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
	if (spinner) {
        [spinner stopAnimating];
        [spinner removeFromSuperview];
        [spinner release];
        spinner = nil;
        
        [loadingLabel removeFromSuperview];
        [loadingLabel release];
        loadingLabel = nil;
    }
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	webView.delegate = self;
	webView.scalesPageToFit = YES;
}



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

//
//  WebBrowserViewController.m
//  WebBrowser
//
//  Created by FANTAISIE on 2011/3/27.
//  Copyright 2011年 NTU. All rights reserved.
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

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    webView.delegate = self;
	webView.scalesPageToFit = YES;
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

//
//  WebASIUploadViewController.m
//  WebASIUpload
//
//  Created by FANTAISIE on 2011/8/30.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "WebASIUploadViewController.h"

@implementation WebASIUploadViewController

- (IBAction)uploadFile:(id)sender {
    request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:@"http://127.0.0.1:8888/php_test/Upload.php"]];
	[request setTimeOutSeconds:20];
    
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_4_0
	[request setShouldContinueWhenAppEntersBackground:YES];
#endif
	[request setUploadProgressDelegate:uploadProgress];
	[request setDelegate:self];
	[request setDidFailSelector:@selector(uploadFailed:)];
	[request setDidFinishSelector:@selector(uploadFinished:)];
	
    
    [request setData:UIImagePNGRepresentation([UIImage imageNamed:@"star.jpg"]) withFileName:@"star.jpg" andContentType:@"image/jpg" forKey:@"uploadedfile"];
	
	[request startAsynchronous];
    
}

#pragma mark -
#pragma asihttp delegate

- (void)requestFailed:(ASIHTTPRequest *)request{
    NSLog(@"Request Failed");
}

#pragma mark -
#pragma data request delegate

- (void)uploadFailed:(ASIHTTPRequest *)theRequest
{
	NSLog(@"upload file failed");
}

- (void)uploadFinished:(ASIHTTPRequest *)theRequest
{
    NSLog(@"upload file finished %@", theRequest);
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
    [uploadProgress setProgress:0.0];
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

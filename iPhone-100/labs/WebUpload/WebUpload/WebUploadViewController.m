//
//  WebUploadViewController.m
//  WebUpload
//
//  Created by ShuWei Hsu on 2011/8/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "WebUploadViewController.h"

@implementation WebUploadViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

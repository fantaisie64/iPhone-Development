//
//  WebJSStepViewController.m
//  WebJSStep
//
//  Created by Berby on 2011/8/7.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import "WebJSStepViewController.h"

@implementation WebJSStepViewController

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
    NSString * filePathString = [[NSBundle mainBundle] pathForResource:@"web" ofType:@"html"];
    NSURL * fileURL = [NSURL fileURLWithPath:filePathString];
    [myWebView loadRequest:[NSURLRequest requestWithURL:fileURL]];
   
}


- (IBAction)changeSize:(id)sender {
    NSString * sizeString = [sender titleForSegmentAtIndex:[sender selectedSegmentIndex]];
    [myWebView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"getIDTextSize('%@');",sizeString ]];
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

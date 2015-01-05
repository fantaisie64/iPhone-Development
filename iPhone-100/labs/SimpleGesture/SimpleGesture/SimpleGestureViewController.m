//
//  SimpleGestureViewController.m
//  SimpleGesture
//
//  Created by FANTAISIE on 2011/4/26.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "SimpleGestureViewController.h"

@implementation SimpleGestureViewController

- (void)dealloc
{
    [imageView release];
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
    UIGestureRecognizer *recognizer;
    
    recognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationFrom:)];
	[self.view addGestureRecognizer:recognizer];
	[recognizer release];
    
    recognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchFrom:)];
    [self.view addGestureRecognizer:recognizer];
    [recognizer release];
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 150.0, 150.0)];
    imageView.image = [UIImage imageNamed:@"Scenary.jpg"];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    [imageView release];
}

- (void)handleRotationFrom:(UIRotationGestureRecognizer *)recognizer {
    
    imageView.transform = CGAffineTransformMakeRotation([recognizer rotation]);
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1];
    imageView.transform = CGAffineTransformIdentity;
	[UIView commitAnimations];
}

- (void)handlePinchFrom:(UIPinchGestureRecognizer *)recognizer{
    
    imageView.transform = CGAffineTransformMakeScale(recognizer.scale, recognizer.scale);
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1];
    imageView.transform = CGAffineTransformIdentity;
	[UIView commitAnimations];
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

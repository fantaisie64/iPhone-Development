//
//  ViewAndResponderViewController.m
//  ViewAndResponder
//
//  Created by ShuWei Hsu on 2011/8/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "ViewAndResponderViewController.h"

@implementation ViewAndResponderViewController

- (IBAction)changeColor:(id)sender {
    MyButton * view1 = (MyButton *)[self.view viewWithTag:1];
    MyButton * view2 = (MyButton *)[self.view viewWithTag:2];
    UIColor * color1 = view1.backgroundColor;
    UIColor * color2 = view2.backgroundColor;
    
    view1.backgroundColor = color2;
    view2.backgroundColor = color1;
}

- (IBAction)changeCenter:(id)sender {
    MyButton * view1 = (MyButton *)[self.view viewWithTag:1];
    MyButton * view2 = (MyButton *)[self.view viewWithTag:2];
    CGPoint center1 = view1.center;
    CGPoint center2 = view2.center;
    
    [UIView animateWithDuration:1.0 animations:^(void) {
        view1.center = center2;
        view2.center = center1;
    }];
}

- (IBAction)changeResponder:(id)sender {
    switch (responseIndex) {
        case 0:
            [button1 becomeFirstResponder];
            [button2 resignFirstResponder];
            break;
        case 1:
            [button2 becomeFirstResponder];
            [button1 resignFirstResponder];
            break;   
        default:
            break;
    }
    responseIndex = ++responseIndex % 2;
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
    [button1 setShakeText:@"Shake from button 1"];
    [button2 setShakeText:@"Shake from button 2"];
    [button1 becomeFirstResponder];
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

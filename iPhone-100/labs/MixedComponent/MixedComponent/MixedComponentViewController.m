//
//  MixedComponentViewController.m
//  MixedComponent
//
//  Created by FANTAISIE on 2011/5/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "MixedComponentViewController.h"

@implementation MixedComponentViewController

-(IBAction)sliderChanged:(UISlider *)aSlider{
    if ([segmentedControl selectedSegmentIndex] == 0) {
        [progressView setProgress:[aSlider value]];
        tempValue = [aSlider value];
        showValue.text = [NSString stringWithFormat:@"%f", [aSlider value]];
    }
}

-(IBAction)enabledFrom:(UISegmentedControl *)aSegmentedControl {
    if ([aSegmentedControl selectedSegmentIndex] == 0) {
        [slider setValue:tempValue];
        [progressView setProgress:[slider value]];
        [slider setEnabled:YES];
    }
    else {
        tempValue = [slider value];
        [slider setValue:0.0];
        [progressView setProgress:[slider value]];
        [slider setEnabled:NO];
    }
    [progressView setProgress:[slider value]];
    showValue.text = [NSString stringWithFormat:@"%f", [slider value]];
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
    [slider setValue:0.0];
    [progressView setProgress:[slider value]];
    [segmentedControl setSelectedSegmentIndex:0];
    tempValue = [slider value];
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

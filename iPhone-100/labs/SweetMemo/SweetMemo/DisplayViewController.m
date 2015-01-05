//
//  DisplayViewController.m
//  SweetMemo
//
//  Created by Berby on 2011/8/20.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import "DisplayViewController.h"


@implementation DisplayViewController
@synthesize delegate;
@synthesize memo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

-(IBAction) backToMain
{
    [self dismissModalViewControllerAnimated:YES];
}
-(IBAction) getText
{
    if([self.delegate respondsToSelector:@selector(passingView:target:passingData:)]){
        [self.delegate passingView:self target:@"TextView" passingData:nil];
    }
    [self dismissModalViewControllerAnimated:YES];
}
-(void) passingView:(id)passingView target:(NSString *)targetID passingData:(NSString *)passingData
{
    
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [label setText:memo];
    
}

- (void)viewDidUnload
{
    [memo release];
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

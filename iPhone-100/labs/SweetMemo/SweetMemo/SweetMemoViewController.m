//
//  SweetMemoViewController.m
//  SweetMemo
//
//  Created by Berby on 2011/8/20.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import "SweetMemoViewController.h"

@implementation SweetMemoViewController
@synthesize myData;

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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [targetView release];
    [myData release];
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void) passingView:(id)passingView target:(NSString *)targetID passingData:(NSString *)passingData
{
    targetView = targetID;
    self.myData = passingData;
}

-(void) viewDidAppear:(BOOL)animated
{
    if([targetView isEqualToString:@"TextView"])
    {
        TextViewController * viewController = [[TextViewController alloc] initWithNibName:@"TextViewController" bundle:nil];
        viewController.delegate = self;
        viewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentModalViewController:viewController animated:YES];
        [viewController release];
        targetView = nil;
        self.myData = nil;
        
    }
    if([targetView isEqualToString:@"DisplayView"])
    {
        DisplayViewController * viewController = [[DisplayViewController alloc] initWithNibName:@"DisplayViewController" bundle:nil];
        viewController.delegate = self;
        viewController.memo = myData;
        viewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        [self presentModalViewController:viewController animated:YES];
        [viewController release];
        targetView = nil;
        self.myData = nil;
        
    }
}
-(IBAction) goPreview
{
    DisplayViewController * viewController = [[DisplayViewController alloc] initWithNibName:@"DisplayViewController" bundle:nil];
    viewController.delegate = self;
    viewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:viewController animated:YES];
    [viewController release];
}

-(IBAction) goText
{
    TextViewController * viewController = [[TextViewController alloc] initWithNibName:@"TextViewController" bundle:nil];
    viewController.delegate = self;
    viewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:viewController animated:YES];
    [viewController release];
    
}


@end

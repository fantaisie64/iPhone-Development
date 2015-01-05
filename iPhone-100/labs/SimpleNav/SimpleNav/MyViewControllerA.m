//
//  MyViewControllerA.m
//  SimpleNav
//
//  Created by FANTAISIE on 2011/3/20.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "MyViewControllerA.h"
#import "MyViewControllerB.h"


@implementation MyViewControllerA

-(void) nextView
{
    MyViewControllerB* myViewConB = [[MyViewControllerB alloc] initWithNibName:@"MyViewB" bundle:nil];
    [self.navigationController pushViewController:myViewConB animated:YES];	
    [myViewConB release];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)init
{
    if(self = [super init])
    {}
    return self;
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


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    UIView* myView=[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    UILabel* myLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 100, 300, 50)];
    [myLabel setText:@"MyViewController A"];
    
    myButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(80, 200, 150, 50);
    [myButton setTitle:@"Next View" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(nextView) forControlEvents:UIControlEventTouchUpInside];
    
    [myView addSubview:myLabel];
    [myView addSubview:myButton];
    self.view = myView;
    [myView release];
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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

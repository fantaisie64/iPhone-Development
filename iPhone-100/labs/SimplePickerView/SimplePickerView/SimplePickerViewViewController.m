//
//  SimplePickerViewViewController.m
//  SimplePickerView
//
//  Created by FANTAISIE on 2011/5/23.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "SimplePickerViewViewController.h"

@implementation SimplePickerViewViewController

#pragma mark -
#pragma mark pickerview delegate
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	if (component == 0) {
		return [component1 objectAtIndex:row];
	}else {
		return [component2 objectAtIndex:row];
	}
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
	//NSLog(@" %@, %@", [component1 objectAtIndex:row],[ component2 objectAtIndex:row]);
	if (component == 0) {
		NSLog(@"component 0 %@", [component1 objectAtIndex:row]);
		comp0.text = [component1 objectAtIndex:row];
	}else {
		NSLog(@"component 1 %@", [component2 objectAtIndex:row]);
		comp1.text = [component2 objectAtIndex:row];
	}
}

#pragma mark -
#pragma mark data source
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
	if (component == 0) {
		return [component1 count];
	}else {
		return [component2 count];
	}
    
}


- (void)dealloc
{
    [component1 release];
	[component2 release];
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
	myPickerView.delegate = self;
	myPickerView.dataSource = self;
	component1 = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", nil];
	component2 = [[NSArray alloc] initWithObjects:@"first", @"second", @"third", nil];
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

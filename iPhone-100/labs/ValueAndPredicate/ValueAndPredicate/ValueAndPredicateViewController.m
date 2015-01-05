//
//  ValueAndPredicateViewController.m
//  ValueAndPredicate
//
//  Created by FANTAISIE on 2011/4/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "ValueAndPredicateViewController.h"

@implementation ValueAndPredicateViewController

- (IBAction)getValue{
    if ([inputKey.text isEqualToString:@""]) {
        resultView.text = [arrayWithDict description];
    }else {
        
        NSString * theKey = inputKey.text;
        NSArray * values = [arrayWithDict valueForKey:theKey];
        NSString * resultString = [NSString stringWithFormat:@"%@\n%@", theKey, values];
        resultView.text = resultString;
    }
    [inputKey endEditing:YES];
}

- (IBAction)predicateResult{
    if ([inputPredicate.text isEqualToString:@""]) {
        resultView.text = [arrayWithDict description];
    }else {
        
        NSString * inputFormat = inputPredicate.text;
        NSPredicate * myFavor = [NSPredicate predicateWithFormat:inputFormat];
        
        NSArray * values = [arrayWithDict filteredArrayUsingPredicate:myFavor];
        NSString * resultString = [NSString stringWithFormat:@"%@\n%@", inputFormat, values];
        resultView.text = resultString;
        
    }
    [inputPredicate endEditing:YES];
}

- (void)dealloc
{
    [inputKey release];
    [inputPredicate release];
    [resultView release];
    [arrayWithDict release];
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
    NSInteger numDicts = 3;
    [self initArrayWithCarNumber:numDicts];
}

-(void)initArrayWithCarNumber:(NSInteger)dicts{
    arrayWithDict = [[NSMutableArray alloc] init];
    for (int i = 0 ; i < dicts ; i++) {
        NSInteger price = arc4random() % 100;
        NSInteger year = arc4random() % 100;
        
        year = year + 1900;
        
        NSDictionary * item = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:price],@"price",[NSNumber numberWithInteger:year],@"year", nil];
        [arrayWithDict addObject:item];
    }
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

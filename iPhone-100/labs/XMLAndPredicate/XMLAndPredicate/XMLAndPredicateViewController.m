//
//  XMLAndPredicateViewController.m
//  XMLAndPredicate
//
//  Created by FANTAISIE on 2011/4/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "XMLAndPredicateViewController.h"
#import "TBXML.h"

@implementation XMLAndPredicateViewController

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
    arrayWithDict = [[NSMutableArray alloc] init];
    TBXML * xmlDoc = [TBXML tbxmlWithXMLFile:@"car.xml"];
    TBXMLElement * root = xmlDoc.rootXMLElement;
    TBXMLElement * child = root->firstChild;
    
    while (child) {
        TBXMLElement * son = child->firstChild;
        NSMutableDictionary * item = [NSMutableDictionary dictionary];
        while (son) {
            [item setObject:[NSNumber numberWithInt:[[TBXML textForElement:son] intValue]] forKey:[TBXML elementName:son]];
            son = son->nextSibling;
        }
        [arrayWithDict addObject:item];
        child = child->nextSibling;
        
        /*TBXMLElement * son2 = son->nextSibling;
        
        NSMutableDictionary * item = [NSMutableDictionary dictionary];
        [item setObject:[NSNumber numberWithInt:[[TBXML textForElement:son] intValue]] forKey:[TBXML elementName:son]];
        [item setObject:[NSNumber numberWithInt:[[TBXML textForElement:son2] intValue]] forKey:[TBXML elementName:son2]];
        [arrayWithDict addObject:item];
        child = child->nextSibling;*/
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

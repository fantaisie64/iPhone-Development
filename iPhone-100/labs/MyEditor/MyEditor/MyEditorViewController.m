//
//  MyEditorViewController.m
//  MyEditor
//
//  Created by Berby on 2011/8/17.
//  Copyright 2011年 Berby Huang. All rights reserved.
//

#import "MyEditorViewController.h"

@implementation MyEditorViewController


@synthesize editorView;
@synthesize fileName;
#define SCALEDOFFSET 200

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
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAppeared:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardHidden:) name:UIKeyboardWillHideNotification object:nil];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [self setEditorView:nil];
    [fileInput release];
    fileInput = nil;
    [readBtn release];
    [saveBtn release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


-(void) keyboardAppeared:(NSNotification *)noti{
    CGRect editorFrame = editorView.frame ;
    editorFrame.size = CGSizeMake(editorFrame.size.width, editorFrame.size.height - SCALEDOFFSET);
    [UIView animateWithDuration:0.5 animations:^(void) {
        editorView.frame = editorFrame;
    }];
}
-(void) keyboardHidden:(NSNotification *)noti{
    CGRect editorFrame = editorView.frame ;
    editorFrame.size = CGSizeMake(editorFrame.size.width, editorFrame.size.height +SCALEDOFFSET);
    [UIView animateWithDuration:0.5 animations:^(void) {
        editorView.frame = editorFrame;
    }];
}

- (IBAction)saveFile:(UIButton *)sender {
    
    self.fileName = fileInput.text ;
    if ([self.fileName isEqualToString:@""]) {
        self.fileName = @"lessonTest.txt";
    }
    
    NSString * filePath = [NSString stringWithFormat:@"/Users/FANTAISIE/%@", self.fileName];
    // 要加上自己電腦的絕對路徑
    [[NSFileManager defaultManager] createFileAtPath:filePath contents:[editorView.text dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    [editorView resignFirstResponder];
}

- (IBAction)readFile:(UIButton *)sender {
    
    self.fileName = fileInput.text ;
    if ([self.fileName isEqualToString:@""]) {
        return;
    }
    
    NSString * filePath = [NSString stringWithFormat:@"/Users/FANTAISIE/%@", self.fileName];
    // 要加上自己電腦的絕對路徑
    
    
    [editorView setText:[NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil]];
    [editorView resignFirstResponder];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

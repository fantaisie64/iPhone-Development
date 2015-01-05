//
//  MyButton.m
//  ViewAndResponder
//
//  Created by ShuWei Hsu on 2011/8/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton
@synthesize shakeText;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        shakeText = @"";
    }
    return self;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	if (event.type == UIEventSubtypeMotionShake) {
		NSLog(@"%@",shakeText);
	}
}

-(BOOL)canBecomeFirstResponder {
    return YES;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

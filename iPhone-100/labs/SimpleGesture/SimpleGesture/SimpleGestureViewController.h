//
//  SimpleGestureViewController.h
//  SimpleGesture
//
//  Created by FANTAISIE on 2011/4/26.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleGestureViewController : UIViewController {
    UIImageView *imageView;
}
- (void)handleRotationFrom:(UIRotationGestureRecognizer *)recognizer;
- (void)handlePinchFrom:(UIPinchGestureRecognizer *)recognizer;
@end

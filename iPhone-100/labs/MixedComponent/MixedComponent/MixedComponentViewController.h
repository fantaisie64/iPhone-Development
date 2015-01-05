//
//  MixedComponentViewController.h
//  MixedComponent
//
//  Created by FANTAISIE on 2011/5/25.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MixedComponentViewController : UIViewController {
    IBOutlet UISlider *slider;
    IBOutlet UIProgressView *progressView;
    IBOutlet UILabel *showValue;
    IBOutlet UISegmentedControl *segmentedControl;
    float tempValue;
}
-(IBAction)sliderChanged:(UISlider *)aSlider;
-(IBAction)enabledFrom:(UISegmentedControl *)aSegmentedControl;
@end

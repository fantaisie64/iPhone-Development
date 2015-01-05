//
//  WebJSStepViewController.h
//  WebJSStep
//
//

#import <UIKit/UIKit.h>

@interface WebJSStepViewController : UIViewController {
    
    IBOutlet UIWebView * myWebView;
    IBOutlet UISegmentedControl * mySegmentedControl;
    
}

- (IBAction)changeSize:(id)sender;

@end

//
//  WebBrowserViewController.h
//  WebBrowser
//
//  Created by FANTAISIE on 2010/10/20.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebBrowserViewController : UIViewController<UIWebViewDelegate> {
	IBOutlet UIWebView *webView;
	IBOutlet UIButton *go;
	IBOutlet UIButton *back;
	IBOutlet UIButton *forward;
	IBOutlet UITextField *address;
	NSURL *url;
	UIActivityIndicatorView *spinner;
    UILabel *loadingLabel;
}
-(IBAction) pressGo;
-(IBAction) pressForward;
-(IBAction) pressBack;
@end


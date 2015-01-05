//
//  WebBrowserViewController.h
//  WebBrowser
//
//  Created by FANTAISIE on 2011/3/27.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebBrowserViewController : UIViewController <UIWebViewDelegate>{
    IBOutlet UIWebView *webView;
	IBOutlet UITextField *address;
	NSURL *url;
	UIActivityIndicatorView *spinner;
    UILabel *loadingLabel;
}

-(IBAction) pressGo;
-(IBAction) pressForward;
-(IBAction) pressBack;
@end

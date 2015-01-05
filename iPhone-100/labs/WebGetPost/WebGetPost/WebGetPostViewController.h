//
//  WebGetPostViewController.h
//  WebGetPost
//
//  Created by FANTAISIE on 2011/3/29.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebGetPostViewController : UIViewController {
    NSURLConnection * myConnection;
	IBOutlet UITextView * textView;
}
-(IBAction) testGet;
-(IBAction) testPost;
@end

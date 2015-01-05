//
//  WebGetPostViewController.h
//  WebGetPost
//
//  Created by FANTAISIE on 2010/10/27.
//  Copyright NTU 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebGetPostViewController : UIViewController {
	NSURLConnection * myConnection;
	IBOutlet UITextView * textView;
}
-(IBAction) testGet;
-(IBAction) testPost;
@end


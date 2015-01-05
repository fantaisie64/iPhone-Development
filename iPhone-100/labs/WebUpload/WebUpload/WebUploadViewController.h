//
//  WebUploadViewController.h
//  WebUpload
//
//  Created by ShuWei Hsu on 2011/8/28.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebUploadViewController : UIViewController {
    IBOutlet UIProgressView *uploadProgress;
    ASIFormDataRequest *request
}
- (IBAction)uploadFile:(id)sender;
@end

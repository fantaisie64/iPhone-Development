//
//  WebASIUploadViewController.h
//  WebASIUpload
//
//  Created by FANTAISIE on 2011/8/30.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIFormDataRequest.h"

@interface WebASIUploadViewController : UIViewController {
    IBOutlet UIProgressView *uploadProgress;
    ASIFormDataRequest *request;
}
- (IBAction)uploadFile:(id)sender;
@end

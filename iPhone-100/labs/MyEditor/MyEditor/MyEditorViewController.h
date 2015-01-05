//
//  MyEditorViewController.h
//  MyEditor
//
//

#import <UIKit/UIKit.h>

@interface MyEditorViewController : UIViewController {
    
    UITextView * editorView;
    IBOutlet UITextField * fileInput;
    IBOutlet UIButton * readBtn;
    IBOutlet UIButton * saveBtn;
    
}

- (IBAction)saveFile:(id)sender;
- (IBAction)readFile:(id)sender;
@property (nonatomic, retain) IBOutlet UITextView *editorView;
@property (retain) NSString * fileName;
@end


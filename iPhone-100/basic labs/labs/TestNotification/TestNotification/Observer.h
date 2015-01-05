//
//  Observer.h
//  TestNotification
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Observer : NSObject {
    
}
- (void) addObserving:(NSObject *) observedObject;
-(void) removeObserving;
-(void) gotNote:(NSNotification *)note;
@end

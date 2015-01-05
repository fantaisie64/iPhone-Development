//
//  Observer.h
//  TestNotification
//
//  Created by FANTAISIE on 2011/2/8.
//  Copyright 2011 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Observer : NSObject {

}
- (void) addObserving:(NSObject *) observedObject;
-(void) removeObserving;
-(void) gotNote:(NSNotification *)note;
@end

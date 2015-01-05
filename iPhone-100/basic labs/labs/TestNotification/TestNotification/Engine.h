//
//  Engine.h
//  TestNotification
//
//  Created by FANTAISIE on 2011/4/2.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Engine : NSObject {
    NSString *name;
}

@property (retain) NSString * name;
-(void) setName:(NSString *) n;
@end

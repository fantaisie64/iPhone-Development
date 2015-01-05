//
//  Engine.h
//  TestNotification
//
//  Created by FANTAISIE on 2011/2/8.
//  Copyright 2011 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Engine : NSObject {
	NSString *name;
}

@property (retain) NSString * name;
-(void) setName:(NSString *) n;

@end

//
//  MyProxy.h
//  TestProxy
//
//  Created by FANTAISIE on 2011/3/2.
//  Copyright 2011 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyProxy : NSProxy {
	id targetObject;
}
@property (retain, nonatomic) id targetObject;
@end

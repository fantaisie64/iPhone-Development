//
//  MyProxy.h
//  TestProxy
//
//  Created by FANTAISIE on 2011/4/3.
//  Copyright 2011年 NTU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyProxy : NSObject {
    id targetObject;
}

@property (retain, nonatomic) id targetObject;
@end

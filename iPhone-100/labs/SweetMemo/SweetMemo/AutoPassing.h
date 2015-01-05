//
//  AutoPassing.h
//  SweetMemo
//
//  Created by Berby on 2011/8/20.
//  Copyright 2011年 Berby Huang. All rights reserved.
//


#import <Foundation/Foundation.h>



@protocol AIAutoPassing <NSObject>


-(void) passingView:(id)passingView target:(NSString *)targetID passingData:(NSString *)passingData;


@end
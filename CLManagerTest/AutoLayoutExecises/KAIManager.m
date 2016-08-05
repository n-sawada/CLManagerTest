//
//  KAIManager.m
//  AutoLayoutExecises
//
//  Created by Naoki_Sawada on 2016/08/04.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "KAIManager.h"
#import "CustomCL.h"

@implementation KAIManager

+ (void)callLocation {
    
    [[CustomCL sharedInstance] setup];
}

@end

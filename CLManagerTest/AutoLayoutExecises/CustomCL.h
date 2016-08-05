//
//  CustomCL.h
//  AutoLayoutExecises
//
//  Created by Naoki_Sawada on 2016/08/04.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@interface CustomCL : NSObject

@property (nonatomic) CLLocationManager *locationManager;


+ (instancetype)sharedInstance;

- (void)setup;


@end

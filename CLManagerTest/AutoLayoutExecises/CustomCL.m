//
//  CustomCL.m
//  AutoLayoutExecises
//
//  Created by Naoki_Sawada on 2016/08/04.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "CustomCL.h"

@interface CustomCL () <CLLocationManagerDelegate>


@end

@implementation CustomCL

/**
 *  init処理（直接呼ばず、sharedInstanceメソッドを通して呼ぶこと）
 *
 *  @return self
 */
- (instancetype)init {
    
    if (self = [super init]) {
        _locationManager = [CLLocationManager new];
        self.locationManager.delegate = self;
        [self.locationManager requestAlwaysAuthorization];
    }
    return self;
}

+ (instancetype)sharedInstance {
    static CustomCL *_sharedCustomCL = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedCustomCL = [CustomCL new];
    });
    
    return _sharedCustomCL;
}

- (void)setup {

    NSLog(@"%d", [CLLocationManager authorizationStatus]);
}

- (void)locationManager:(CLLocationManager *)manager
didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    NSLog(@"YES" );
    
    NSLog(@"このメソッドは設定状態変更後、フォアグラウンドになった時に呼ばれる");
    
    switch (status) {
        case kCLAuthorizationStatusNotDetermined: {
            // 何もしない
            break;
        }
            // いつ入るのか分からない
        case kCLAuthorizationStatusRestricted:
        case kCLAuthorizationStatusDenied: {
            NSLog(@"最初の認証で許可しないにするとここに入る\nそれ以後、許可していないためデリゲートがオフとなりこのメソッドは呼ばれない");
            break;
        }
        case kCLAuthorizationStatusAuthorizedAlways:
        case kCLAuthorizationStatusAuthorizedWhenInUse: {
            NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
            
            break;
        }
            
        default: {
            NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
            break;
        }
    }
    
    if (status == kCLAuthorizationStatusNotDetermined) {
        // ユーザが位置情報の使用を許可していない
    }
}


@end

//
//  ViewController.m
//  AutoLayoutExecises
//
//  Created by Naoki_Sawada on 2016/08/03.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "ViewController.h"
#import "KAIManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapped:(UIButton *)sender {
    
    [KAIManager callLocation];
}

@end

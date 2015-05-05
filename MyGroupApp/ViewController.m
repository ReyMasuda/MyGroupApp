//
//  ViewController.m
//  MyGroupApp
//
//  Created by ReyMasuda on 2015/05/04.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self blinkImage:enterBt];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)blinkImage:(UIView *)target {
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.duration = 2.0f;
    animation.autoreverses = YES;
    animation.repeatCount = 10; //infinite loop -> HUGE_VAL
    animation.fromValue = [NSNumber numberWithFloat:1.0f]; //MAX opacity
    animation.toValue = [NSNumber numberWithFloat:0.0f]; //MIN opacity
    [target.layer addAnimation:animation forKey:@"blink"];
}

@end

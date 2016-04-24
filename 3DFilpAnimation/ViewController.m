//
//  ViewController.m
//  3DFilpAnimation
//
//  Created by 吴玉铁 on 16/4/23.
//  Copyright © 2016年 吴玉铁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *BBlajiBottom;
@property (weak, nonatomic) IBOutlet UILabel *BBlajiTop;
@property (weak, nonatomic) IBOutlet UIButton *filp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _BBlajiBottom.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.0, 0.05), CGAffineTransformMakeTranslation(1.0, _BBlajiBottom.frame.size.height / 2));
    _BBlajiBottom.alpha = 0;
    
    
}


- (IBAction)HandleFilpEvent:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        _BBlajiTop.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.0, 0.5), CGAffineTransformMakeTranslation(1.0, -_BBlajiTop.frame.size.height / 2));
        _BBlajiTop.alpha = 0;
        _BBlajiBottom.alpha = 1;
        _BBlajiBottom.transform = CGAffineTransformIdentity;
    }];
}

- (IBAction)returnHahaha:(id)sender {
    [UIView animateWithDuration:1.0 animations:^{
        _BBlajiBottom.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(1.0, 0.05), CGAffineTransformMakeTranslation(1.0, _BBlajiBottom.frame.size.height / 2));
        _BBlajiBottom.alpha = 0;
        _BBlajiTop.transform = CGAffineTransformIdentity;
        _BBlajiTop.alpha = 1;
    }];
    
}


@end

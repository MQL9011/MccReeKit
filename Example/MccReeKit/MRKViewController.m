//
//  MRKViewController.m
//  MccReeKit
//
//  Created by MQL9011 on 04/02/2018.
//  Copyright (c) 2018 MQL9011. All rights reserved.
//

#import "MRKViewController.h"
#import <MccReeKit/MccReeKit.h>

@interface MRKViewController ()

@end

@implementation MRKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lab = [UILabel createLabelColor:[UIColor redColor] FontSize:15];
    lab.text = @"MccReeLab";
    lab.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:lab];
    
    UIButton *btn = [UIButton createButtonTitleColor:[UIColor colorWithHexString:@"2E3D4A"]
                                            fontSize:15
                                        cornerRadius:5
                                         borderWidth:1];
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    [NSString stringWithInt:123];
    [self.view addSubview:btn];
    
    
    //圆角相关高性能,不触发离线渲染,想怎么设就怎么设
    UIImageView *imgV = [UIImageView mr_circleImageView];
    imgV.frame = CGRectMake(200, 200, 100, 100);
    [imgV setImage:[UIImage imageNamed:@"测试图片"]];
    [self.view addSubview:imgV];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

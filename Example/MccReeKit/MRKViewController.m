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
    lab.text = @"MccRee";
    lab.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:lab];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

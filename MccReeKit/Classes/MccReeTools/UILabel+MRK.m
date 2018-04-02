//
//  UILabel+MRLabelPayKit.m
//  YSTPayKit
//
//  Created by MccRee on 2018/3/14.
//

#import "UILabel+MRK.h"

@implementation UILabel (MRK)

+ (UILabel *)createLabelColor:(UIColor *)color
                     FontSize:(CGFloat)size{
    UILabel *label = [[UILabel alloc]init];
    if (color) {
        label.textColor = color;
    }
    label.font = [UIFont systemFontOfSize:size];
    return label;
}

@end

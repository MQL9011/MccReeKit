//
//  UIButton+MRButtonPayKit.m
//  MccRee
//
//  Created by MccRee on 2018/3/14.
//

#import "UIButton+MRK.h"

@implementation UIButton (MRK)

+ (UIButton *_Nonnull)createButtonTitleColor:(UIColor *_Nullable)color
                                    fontSize:(CGFloat)size
                                cornerRadius:(CGFloat)radius
                                 borderWidth:(CGFloat)width{
    UIButton *btn = [[UIButton alloc]init];
    btn.layer.cornerRadius = radius;
    btn.layer.borderWidth = width;
    btn.layer.masksToBounds = YES;
    if (color) {
        btn.layer.borderColor = color.CGColor;
        [btn setTitleColor:color forState:UIControlStateNormal];
    }
    btn.titleLabel.font = [UIFont systemFontOfSize:size];
    return btn;
}
@end

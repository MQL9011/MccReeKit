//
//  UIView+MRK.m
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import "UIView+MRK.h"

@implementation UIView (MRK)


+ (UIView *)createLine:(UIColor *)color{
    UIView *line = [[UIView alloc]init];
    line.backgroundColor = color;
    return line;
}


+ (UIView *)createGradientViewStartColor:(UIColor *)startColor
                                endColor:(UIColor *)endColor
{
    UIView *view = [[UIView alloc]init];
    CAGradientLayer *graLayer = [CAGradientLayer layer];
    graLayer = [CAGradientLayer layer];
    graLayer.colors = @[(id)startColor.CGColor,
                        (id)endColor.CGColor];
    graLayer.locations = @[@(0.0f),@(1.0f)];
    graLayer.startPoint = CGPointMake(0, 0);
    graLayer.endPoint = CGPointMake(1, 0);
    graLayer.frame = view.bounds;
    [view.layer addSublayer:graLayer];
    return view;
}

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y{
    return self.frame.origin.y;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    
}

@end

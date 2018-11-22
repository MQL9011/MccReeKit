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

/**
 纵向渐变从上到下
 */
+ (UIView *)createGradientViewVerticalStartColor:(UIColor *)startColor
                                endColor:(UIColor *)endColor
{
    UIView *view = [[UIView alloc]init];
    CAGradientLayer *graLayer = [CAGradientLayer layer];
    graLayer = [CAGradientLayer layer];
    graLayer.colors = @[(id)startColor.CGColor,
                        (id)endColor.CGColor];
    graLayer.locations = @[@(0.0f),@(0.3f)];
    graLayer.startPoint = CGPointMake(0, 0);
    graLayer.endPoint = CGPointMake(0, 1);
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

- (void)setDirectionBorderWithTop:(BOOL)hasTopBorder left:(BOOL)hasLeftBorder bottom:(BOOL)hasBottomBorder right:(BOOL)hasRightBorder borderColor:(UIColor *)borderColor withBorderWidth:(CGFloat)borderWidth{
    
    float height = self.height;
    
    float width = self.width;
    
    CALayer *topBorder = [CALayer layer];
    
    topBorder.frame = CGRectMake(0, 0, width, borderWidth);
    
    topBorder.backgroundColor = borderColor.CGColor;
    
    CALayer *leftBorder = [CALayer layer];
    
    leftBorder.frame = CGRectMake(0, 0, 1, height);
    
    leftBorder.backgroundColor = borderColor.CGColor;
    
    CALayer *bottomBorder = [CALayer layer];
    
    bottomBorder.frame = CGRectMake(0, height, width, borderWidth);
    
    bottomBorder.backgroundColor = borderColor.CGColor;
    
    CALayer *rightBorder = [CALayer layer];
    rightBorder.frame = CGRectMake(width, 0, borderWidth, height);
    
    rightBorder.backgroundColor = borderColor.CGColor;
    
    
    if (hasTopBorder) {
        [self.layer addSublayer:topBorder];
    }
    if (hasLeftBorder) {
        [self.layer addSublayer:leftBorder];
    }
    if (hasBottomBorder) {
        [self.layer addSublayer:bottomBorder];
    }
    if (hasRightBorder) {
        [self.layer addSublayer:rightBorder];
    }
    
}

@end

//
//  UIView+MRK.h
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import <UIKit/UIKit.h>

@interface UIView (MRK)

/**
 画条线
 */
+ (UIView *)createLine:(UIColor *)color;


/**
 画横向渐变色View
 */
+ (UIView *)createGradientViewStartColor:(UIColor *)startColor
                                endColor:(UIColor *)endColor;

/**
 单独设置UIView x,y,width,height
 */
- (void)setX:(CGFloat)x;

- (CGFloat)x;

- (void)setY:(CGFloat)y;

- (CGFloat)y;

- (CGFloat)width;

- (void)setWidth:(CGFloat)width;

- (CGFloat)height;

- (void)setHeight:(CGFloat)height;

@end

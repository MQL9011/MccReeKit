//
//  CAGradientLayer+MRK.h
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import <QuartzCore/QuartzCore.h>

/**
 渐变色层
 */
@interface CAGradientLayer (MRK)

/**
 从左至右横向渐变
 */
+ (CAGradientLayer *)createGradLayer:(UIColor *)startColor
                            endColor:(UIColor *)endColor;

@end

//
//  CAGradientLayer+MRK.m
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import "CAGradientLayer+MRK.h"

@implementation CAGradientLayer (MRK)

+ (CAGradientLayer *)createGradLayer:(UIColor *)startColor
                            endColor:(UIColor *)endColor{
    
    CAGradientLayer *graLayer = [CAGradientLayer layer];
    graLayer = [CAGradientLayer layer];
    graLayer.colors = @[(id)startColor.CGColor,
                        (id)endColor.CGColor];
    graLayer.locations = @[@(0.0f),@(1.0f)];
    graLayer.startPoint = CGPointMake(0, 0);
    graLayer.endPoint = CGPointMake(1, 0);
    return graLayer;
}


@end

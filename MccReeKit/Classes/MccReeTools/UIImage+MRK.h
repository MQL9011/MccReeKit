//
//  UIImage+MRK.h
//  YSTUserGroup
//
//  Created by MccRee on 2018/3/28.
//

#import <UIKit/UIKit.h>

struct mrRadius {
    CGFloat topLeftRadius;
    CGFloat topRightRadius;
    CGFloat bottomLeftRadius;
    CGFloat bottomRightRadius;
};
typedef struct mrRadius mrRadius;

static inline mrRadius mrRadiusMake(CGFloat topLeftRadius,
                                      CGFloat topRightRadius,
                                      CGFloat bottomLeftRadius,
                                      CGFloat bottomRightRadius) {
    mrRadius radius;
    radius.topLeftRadius = topLeftRadius;
    radius.topRightRadius = topRightRadius;
    radius.bottomLeftRadius = bottomLeftRadius;
    radius.bottomRightRadius = bottomRightRadius;
    return radius;
}

@interface UIImage (YST)

+ (UIImage *)mr_imageWithColor:(UIColor *)color;

/**
 画圆Image
 */
+ (UIImage *)mr_getCornerImageFromCornerRadius:(CGFloat)cornerRadius
                                          Image:(UIImage *)image
                                           Size:(CGSize)size
                                 RectCornerType:(UIRectCorner)rectCornerType
                                    BorderColor:(UIColor *)borderColor
                                    BorderWidth:(CGFloat)borderWidth
                                BackgroundColor:(UIColor *)backgroundColor;

- (UIImage *)scaleToSize:(CGSize)size backgroundColor:(UIColor *)backgroundColor;

@end

//
//  UIImageView+MRK.h
//  YSTUserGroup
//
//  Created by MccRee on 2018/3/28.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface UIImageView (MRK)

/**
 闪速创建一个圆图
 */
+ (instancetype)mr_circleImageView;

/**
 自动设置图片的圆角
 */
- (void)mr_autoSetImageCornerRedius:(CGFloat)cornerRedius
                        ConrnerType:(UIRectCorner)cornerType;


/**
 直接设置带圆角的图片(多适用于加载本地图片的imageView)
 */
- (void)mr_autoSetImageCornerRedius:(CGFloat)cornerRedius
                        ConrnerType:(UIRectCorner)cornerType
                              Image:(UIImage *)image;

/**
 自动设置带边框的图片圆角
 */
- (void)mr_autoSetImageCornerRedius:(CGFloat)cornerRedius
                        ConrnerType:(UIRectCorner)cornerType
                        BorderColor:(UIColor *)borderColor
                        BorderWidth:(CGFloat)borderWidth
                              Image:(UIImage *)image;

@end

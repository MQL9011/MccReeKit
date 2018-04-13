//
//  UIImageView+MRK.h
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import <UIKit/UIKit.h>

@interface UIImageView (MRK)

/**
 传说中的高性能画圆角
 */
- (instancetype)initWithRoundingRectImageView;
/**
 画圆角
 */
- (instancetype)initWithCornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;

/**
 圆形
 */
- (void)zy_cornerRadiusRoundingRect;

@end

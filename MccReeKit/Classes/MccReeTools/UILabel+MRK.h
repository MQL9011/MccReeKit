//
//  UILabel+MRK.h
//  MccRee
//
//  Created by MccRee on 2018/3/14.
//

#import <UIKit/UIKit.h>

@interface UILabel (MRK)


/**
 创建UILabel
 @param color 颜色 系统默认
 @param size 字号 系统默认
 @return UILabel
 */
+ (UILabel *_Nonnull)createLabelColor:(nullable UIColor *)color
                             FontSize:(CGFloat)size;

@end

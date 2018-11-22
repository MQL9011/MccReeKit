//
//  UIButton+MRK.h
//  MccRee
//
//  Created by MccRee on 2018/3/14.
//

#import <UIKit/UIKit.h>

@interface UIButton (MRK)
//自定义按钮标题位置
@property (nonatomic,assign) CGRect titleRect;
//自定义按钮图片位置
@property (nonatomic,assign) CGRect imageRect;


/**
 创建按钮
 */
+ (UIButton *_Nonnull)createButtonTitleColor:(UIColor *_Nullable)color
                                    fontSize:(CGFloat)size
                                cornerRadius:(CGFloat)radius
                                 borderWidth:(CGFloat)width;

/**
 创建按钮,只有背景图
 */
+ (UIButton *_Nullable)createButtonOnlyBackgroundImage:(UIImage *_Nullable)img;

/**
 创建按钮,带图片和文字
 @param img 图片
 @param color 文字颜色
 @param font 文字大小
 @param imgRect 图片位置,默认居中
 @param titleRect 文本位置,默认居中
 */
+ (UIButton *_Nullable)createButtonImage:(UIImage *)img
                              titleColor:(UIColor *)color
                               titleFont:(UIFont *)font
                                 imgRect:(CGRect)imgRect
                               titleRect:(CGRect)titleRect;
/**
 创建按钮,只带图片,设置位置
 @param img 图片
 @param imgRect 图片位置
 */
+ (UIButton *_Nullable)createButtonImage:(UIImage *)img
                                 imgRect:(CGRect)imgRect;

/**
 创建按钮,只带文字
 @param color 文字颜色
 @param font 文字大小
 @param titleRect 文本位置,默认居中
 */
+ (UIButton *_Nullable)createButtonTitleColor:(UIColor *)color
                                    titleFont:(UIFont *)font
                                    titleRect:(CGRect)titleRect;

@end

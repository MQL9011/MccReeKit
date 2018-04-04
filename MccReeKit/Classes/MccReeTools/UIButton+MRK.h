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


@end

//
//  UIButton+MRK.h
//  MccRee
//
//  Created by MccRee on 2018/3/14.
//

#import <UIKit/UIKit.h>

@interface UIButton (MRK)

/**
 创建按钮
 */
+ (UIButton *_Nonnull)createButtonTitleColor:(UIColor *_Nullable)color
                                    fontSize:(CGFloat)size
                                cornerRadius:(CGFloat)radius
                                 borderWidth:(CGFloat)width;
@end

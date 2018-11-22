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


/**
 创建UILabel
 
 @param color 颜色
 @param size 字号
 @param fontName 字体
 */
+ (UILabel *_Nonnull)createLabelColor:(nullable UIColor *)color
                             FontSize:(CGFloat)size
                             fontName:(NSString *)fontName;



/**
 给个别字加颜色
 @param str 文本
 @param color 颜色
 @param range NSMakerange
 */
+ (UILabel *_Nullable)createAttrLabel:(NSString *_Nullable)str
                                color:(UIColor *_Nullable)color
                           colorRange:(NSRange)range;


/**
 富文本HTML设置上UILabel
 @param htmlStr [NSString stringWithFormat:@"<font color='#24A5FE'>2</font><font color='#999999'>/5</font>",@"2"];
 @return UILabel
 */
+ (UILabel *_Nullable)createAttrLabelWithHTML:(NSString *_Nullable)htmlStr;


/**
 设置富文本
 */
- (void)setAttrStr:(NSString *)str;

/**
 文字从左上角对齐
 */
- (void)textLeftTopAlign;
@end

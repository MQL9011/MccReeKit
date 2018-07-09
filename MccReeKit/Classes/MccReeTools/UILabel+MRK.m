//
//  UILabel+MRLabelPayKit.m
//  YSTPayKit
//
//  Created by MccRee on 2018/3/14.
//

#import "UILabel+MRK.h"

@implementation UILabel (MRK)

/**
 创建UILabel
 @param color 颜色 系统默认
 @param size 字号 系统默认
 @return UILabel
 */
+ (UILabel *)createLabelColor:(UIColor *)color
                     FontSize:(CGFloat)size{
    UILabel *label = [[UILabel alloc]init];
    if (color) {
        label.textColor = color;
    }
    label.font = [UIFont systemFontOfSize:size];
    return label;
}

/**
 创建UILabel
 @param color 颜色
 @param size 字号
 @param fontName 字体
 */
+ (UILabel *_Nonnull)createLabelColor:(nullable UIColor *)color
                             FontSize:(CGFloat)size
                             fontName:(NSString *)fontName{
    UILabel *label = [UILabel createLabelColor:color FontSize:size];
    label.font = [UIFont fontWithName:fontName size:size];
    return label;
}

/**
 给个别字加颜色
 @param str 文本
 @param color 颜色
 @param range NSMakerange
 */
+ (UILabel *_Nullable)createAttrLabel:(NSString *_Nullable)str
                                color:(UIColor *_Nullable)color
                           colorRange:(NSRange)range{
    UILabel *label = [[UILabel alloc]init];
    NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:str];
    [AttributedStr addAttribute:NSForegroundColorAttributeName value:color range:range];
    label.attributedText = AttributedStr;
    return label;
}

/**
 富文本HTML设置上UILabel
 @param htmlStr [NSString stringWithFormat:@"<font color='#24A5FE'>2</font><font color='#999999'>/5</font>",@"2"];
 @return UILabel
 */
+ (UILabel *)createAttrLabelWithHTML:(NSString *)htmlStr{
    UILabel *label = [[UILabel alloc]init];
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[htmlStr dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    label.attributedText = attrStr;
    return label;
}

- (void)setAttrStr:(NSString *)str{
    NSAttributedString * attrStr = [[NSAttributedString alloc] initWithData:[str dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType} documentAttributes:nil error:nil];
    self.attributedText = attrStr;
}

@end

//
//  UIColor+MRK.h
//  MccRee
//
//  Created by MccRee on 2018/3/29.
//

#import <UIKit/UIKit.h>

@interface UIColor (MRK)

/**
 * color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 * color:支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;


@end

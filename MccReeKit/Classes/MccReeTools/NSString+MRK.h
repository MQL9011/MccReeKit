//
//  NSString+MRK.h
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import <Foundation/Foundation.h>

@interface NSString (MRK)
/**
 NSInteger转String,通常用于Label上显示
 */
+ (NSString *)stringWithInt:(NSInteger)i;


/**
 当前系统时间
 */
+ (NSString *)timeStrNow;
@end

//
//  NSString+MRK.m
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import "NSString+MRK.h"

@implementation NSString (MRK)
/**
 NSInteger转String,通常用于Label上显示
 */
+ (NSString *)stringWithInt:(NSInteger)i{
    return [NSString stringWithFormat:@"%ld",(long)i];
}

/**
 当前系统时间
 */
+ (NSString *)timeStrNow{
    NSDate *date = [NSDate date];
    NSDateFormatter *forMatter = [[NSDateFormatter alloc] init];
    [forMatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateStr = [forMatter stringFromDate:date];
    return dateStr;
}
@end

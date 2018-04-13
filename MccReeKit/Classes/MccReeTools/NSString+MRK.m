//
//  NSString+MRK.m
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import "NSString+MRK.h"

@implementation NSString (MRK)

+ (NSString *)stringWithInt:(NSInteger)i{
    return [NSString stringWithFormat:@"%ld",i];
}

@end

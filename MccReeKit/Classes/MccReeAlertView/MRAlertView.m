//
//  MRAlertView.m
//  MccReeKit
//
//  Created by MccRee on 2018/4/7.
//

#import "MRAlertView.h"

@interface MRAlertView()



@end

@implementation MRAlertView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpUI];
        [self handleEvent];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self setTheConstraints];
    
}


- (void)setUpUI{
    
}

- (void)setTheConstraints{
    
    
}

- (void)handleEvent{
    
}

@end

//
//  UINavigationBar+MRK.m
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import "UINavigationBar+MRK.h"
#import <objc/runtime.h>

//屏幕高度
#define MRK_H [UIScreen mainScreen].bounds.size.height
#define MRK_W [UIScreen mainScreen].bounds.size.width
//适配iPhoneX的宏
#define MRK_iPhoneX (MRK_W == 375.f && MRK_H == 812.f ? YES : NO)
#define MRK_StatusBarH   (MRK_iPhoneX ? 44.f : 20.f)
#define MRK_NaviBarH   44.f
#define MRK_TabbarH  (k_iPhoneX ? (49.f+34.f) : 49.f)
#define MRK_StatusNaviH  (MRK_iPhoneX ? 88.f : 64.f)


@implementation UINavigationBar (MRK)

static char overlayKey;

- (UIView *)overlay
{
    return objc_getAssociatedObject(self, &overlayKey);
}

- (void)setOverlay:(UIView *)overlay
{
    objc_setAssociatedObject(self, &overlayKey, overlay, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)cnSetBackgroundColor:(UIColor *)backgroundColor
{
    if (!self.overlay) {
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        self.overlay = [[UIView alloc] initWithFrame:CGRectMake(0, -MRK_StatusBarH, [UIScreen mainScreen].bounds.size.width, MRK_StatusNaviH)];
        self.overlay.userInteractionEnabled = NO;
        self.overlay.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        [self insertSubview:self.overlay atIndex:0];
    }
    
    self.overlay.backgroundColor = backgroundColor;
}

- (void)cnReset
{
    [self setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.overlay removeFromSuperview];
    self.overlay = nil;
}

@end

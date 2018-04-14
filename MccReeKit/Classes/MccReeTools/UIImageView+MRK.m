//
//  UIImageView+MRK.m
//  YSTUserGroup
//
//  Created by MccRee on 2018/3/28.
//

#import "UIImageView+MRK.h"
#import "UIImage+MRK.h"
#import <objc/runtime.h>

#define mr_swizzleMethod(oneSel,anotherSel) \
Method oneMethod = class_getInstanceMethod(self, oneSel); \
Method anotherMethod = class_getInstanceMethod(self, anotherSel); \
method_exchangeImplementations(oneMethod, anotherMethod); \

#define mr_async_concurrent_dispatch(block) dispatch_async(dispatch_queue_create("mrDrawingImage", DISPATCH_QUEUE_CONCURRENT),block);

#define mr_async_safe_dispatch(block) \
if ([NSThread isMainThread]) { \
block(); \
} else { \
dispatch_async(dispatch_get_main_queue(), block); \
}


@interface UIImageView ()

@property (nonatomic, assign) CGFloat mr_cornerRadius;
@property (nonatomic, assign) UIRectCorner mr_cornerTypes;
@property (nonatomic, strong) UIColor *mr_borderColor;
@property (nonatomic, assign) CGFloat mr_borderWidth;
@property (nonatomic, strong) UIColor *mr_backgroundColor;
@property (nonatomic, assign) BOOL isInitFromCircle;
@property (nonatomic, assign) BOOL isAutoSet;

@end


@implementation UIImageView (MRK)

+ (void)load {
    [self swizzleMethod];
}

+ (void)swizzleMethod {
    mr_swizzleMethod(@selector(layoutSubviews), @selector(mr_layoutSubview));
}


- (void)mr_layoutSubview {
    [self mr_layoutSubview];
    if (self.isAutoSet) {
        if (self.image) {
            [self settingCornerImage:self.image];
        }
    }
}

#pragma mark - Publick Function

+ (instancetype)mr_circleImageView {
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.isInitFromCircle = YES;
    imageView.isAutoSet = YES;
    return imageView;
}

- (void)mr_autoSetImageCornerRedius:(CGFloat)cornerRedius ConrnerType:(UIRectCorner)cornerType {
    [self cachePropertyWithCornerRedius:cornerRedius ConrnerType:cornerType BorderColor:nil BorderWidth:0 BackgroundColor:nil];
}

- (void)mr_autoSetImageCornerRedius:(CGFloat)cornerRedius ConrnerType:(UIRectCorner)cornerType Image:(UIImage *)image {
    [self cachePropertyWithCornerRedius:cornerRedius ConrnerType:cornerType BorderColor:nil BorderWidth:0 BackgroundColor:nil];
    if (image) {
        [self setImage:image];
    }
}

- (void)mr_autoSetImageCornerRedius:(CGFloat)cornerRedius
                         ConrnerType:(UIRectCorner)cornerType
                         BorderColor:(UIColor *)borderColor
                         BorderWidth:(CGFloat)borderWidth
                               Image:(UIImage *)image{
    [self cachePropertyWithCornerRedius:cornerRedius ConrnerType:cornerType BorderColor:borderColor BorderWidth:borderWidth BackgroundColor:nil];
    if (image) {
        [self setImage:image];
    }
}



#pragma mark - Private Function

/**
 cache all the properties
 */
- (void)cachePropertyWithCornerRedius:(CGFloat)cornerRedius
                          ConrnerType:(UIRectCorner)cornerType
                          BorderColor:(UIColor *)borderColor
                          BorderWidth:(CGFloat)borderWidth
                      BackgroundColor:(UIColor *)backgroundColor {
    self.mr_cornerRadius = cornerRedius;
    self.mr_cornerTypes = cornerType;
    self.mr_borderColor = borderColor;
    self.mr_borderWidth = borderWidth;
    self.mr_backgroundColor = backgroundColor;
    self.isAutoSet = YES;
    [self setNeedsLayout];
}

/**
 setting the final Corner Image
 */
- (void)settingCornerImage:(UIImage *)image{
    __block CGSize _size = self.bounds.size;
    if (self.isInitFromCircle) {
        self.mr_cornerRadius = self.bounds.size.height/2;
        self.mr_cornerTypes = UIRectCornerAllCorners;
        self.mr_borderWidth = 0;
        self.mr_backgroundColor = nil;
    }
    mr_async_concurrent_dispatch(^{
        UIImage *finalImage = [UIImage mr_getCornerImageFromCornerRadius:self.mr_cornerRadius Image:image Size:_size RectCornerType:self.mr_cornerTypes BorderColor:self.mr_borderColor BorderWidth:self.mr_borderWidth BackgroundColor:self.mr_backgroundColor];
        mr_async_safe_dispatch(^{
            [self setImage:finalImage];
        });
    });
}

#pragma mark - Property

- (void)setMr_cornerRadius:(CGFloat)mr_cornerRadius {
    objc_setAssociatedObject(self, @selector(mr_cornerRadius), @(mr_cornerRadius), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)mr_cornerRadius{
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
}

- (void)setMr_cornerTypes:(UIRectCorner)mr_cornerTypes {
    objc_setAssociatedObject(self, @selector(mr_cornerTypes), @(mr_cornerTypes), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIRectCorner)mr_cornerTypes {
    return [objc_getAssociatedObject(self, _cmd) unsignedIntegerValue];
}

- (void)setMr_borderColor:(UIColor *)mr_borderColor {
    objc_setAssociatedObject(self, @selector(mr_borderColor), mr_borderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)mr_borderColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setMr_backgroundColor:(UIColor *)mr_backgroundColor {
    objc_setAssociatedObject(self, @selector(mr_backgroundColor), mr_backgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)mr_backgroundColor {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setMr_borderWidth:(CGFloat)mr_borderWidth {
    objc_setAssociatedObject(self, @selector(mr_borderWidth), @(mr_borderWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)mr_borderWidth {
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
}

- (void)setIsAutoSet:(BOOL)isAutoSet {
    objc_setAssociatedObject(self, @selector(isAutoSet), @(isAutoSet), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)isAutoSet {
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

- (void)setIsInitFromCircle:(BOOL)isInitFromCircle {
    objc_setAssociatedObject(self, @selector(isInitFromCircle), @(isInitFromCircle), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)isInitFromCircle {
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}


@end

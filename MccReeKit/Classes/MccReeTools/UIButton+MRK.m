//
//  UIButton+MRButtonPayKit.m
//  MccRee
//
//  Created by MccRee on 2018/3/14.
//

#import "UIButton+MRK.h"
#import <objc/runtime.h>
@implementation UIButton (MRK)

#pragma mark - ************* 通过运行时动态添加关联 ******************
//定义关联的Key
static const char * titleRectKey = "yl_titleRectKey";
- (CGRect)titleRect {
    
    return [objc_getAssociatedObject(self, titleRectKey) CGRectValue];
}

- (void)setTitleRect:(CGRect)rect {
    
    objc_setAssociatedObject(self, titleRectKey, [NSValue valueWithCGRect:rect], OBJC_ASSOCIATION_RETAIN);
}

//定义关联的Key
static const char * imageRectKey = "yl_imageRectKey";
- (CGRect)imageRect {
    
    NSValue * rectValue = objc_getAssociatedObject(self, imageRectKey);
    
    return [rectValue CGRectValue];
}

- (void)setImageRect:(CGRect)rect {
    
    objc_setAssociatedObject(self, imageRectKey, [NSValue valueWithCGRect:rect], OBJC_ASSOCIATION_RETAIN);
}

#pragma mark - ************* 通过运行时动态替换方法 ******************
+ (void)load {
    
    MethodSwizzle(self,@selector(titleRectForContentRect:),@selector(override_titleRectForContentRect:));
    MethodSwizzle(self,@selector(imageRectForContentRect:),@selector(override_imageRectForContentRect:));
}

void MethodSwizzle(Class c,SEL origSEL,SEL overrideSEL)
{
    Method origMethod = class_getInstanceMethod(c, origSEL);
    Method overrideMethod= class_getInstanceMethod(c, overrideSEL);
    
    //运行时函数class_addMethod 如果发现方法已经存在，会失败返回，也可以用来做检查用:
    if(class_addMethod(c, origSEL, method_getImplementation(overrideMethod),method_getTypeEncoding(overrideMethod)))
    {
        //如果添加成功(在父类中重写的方法)，再把目标类中的方法替换为旧有的实现:
        class_replaceMethod(c,overrideSEL, method_getImplementation(origMethod), method_getTypeEncoding(origMethod));
    }
    else
    {
        //addMethod会让目标类的方法指向新的实现，使用replaceMethod再将新的方法指向原先的实现，这样就完成了交换操作。
        method_exchangeImplementations(origMethod,overrideMethod);
    }
}

- (CGRect)override_titleRectForContentRect:(CGRect)contentRect {
    
    if (!CGRectIsEmpty(self.titleRect) && !CGRectEqualToRect(self.titleRect, CGRectZero)) {
        return self.titleRect;
    }
    return [self override_titleRectForContentRect:contentRect];
    
}

- (CGRect)override_imageRectForContentRect:(CGRect)contentRect {
    
    if (!CGRectIsEmpty(self.imageRect) && !CGRectEqualToRect(self.imageRect, CGRectZero)) {
        return self.imageRect;
    }
    return [self override_imageRectForContentRect:contentRect];
}


/**
 创建按钮
 */
+ (UIButton *_Nonnull)createButtonTitleColor:(UIColor *_Nullable)color
                                    fontSize:(CGFloat)size
                                cornerRadius:(CGFloat)radius
                                 borderWidth:(CGFloat)width{
    UIButton *btn = [[UIButton alloc]init];
    btn.layer.cornerRadius = radius;
    btn.layer.borderWidth = width;
    btn.layer.masksToBounds = YES;
    if (color) {
        btn.layer.borderColor = color.CGColor;
        [btn setTitleColor:color forState:UIControlStateNormal];
    }
    btn.titleLabel.font = [UIFont systemFontOfSize:size];
    return btn;
}

/**
 创建按钮,只有背景图
 */
+ (UIButton *_Nullable)createButtonOnlyBackgroundImage:(UIImage *_Nullable)img{
    UIButton *btn = [[UIButton alloc]init];
    [btn setBackgroundImage:img forState:UIControlStateNormal];
    return btn;
}

/**
 创建按钮,带图片和文字
 @param img 图片
 @param color 文字颜色
 @param font 文字大小
 @param imgRect 图片位置,默认居中
 @param titleRect 文本位置,默认居中
 */
+ (UIButton *_Nullable)createButtonImage:(UIImage *)img
                              titleColor:(UIColor *)color
                               titleFont:(UIFont *)font
                                 imgRect:(CGRect)imgRect
                               titleRect:(CGRect)titleRect{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [btn setTitle:@"完结" forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    btn.imageRect = CGRectMake(0, 0, 25, 25);
    btn.titleRect = CGRectMake(-8, 40, 40, 14);
    btn.titleLabel.textAlignment =  NSTextAlignmentCenter;
    return btn;
}
@end

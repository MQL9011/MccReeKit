//
//  UIViewController+MRK.h
//  导航条拦截返回按钮事件
//

#import <UIKit/UIKit.h>

/**
 获取导航条返回事件
 */
@protocol MRKBackButtonHandlerProtocol <NSObject>

@optional

/**
 在控制器中重写这个方法就可以
 */
-(BOOL)navigationShouldPopOnBackButton;

@end

@interface UIViewController (MRK) <MRKBackButtonHandlerProtocol>

@end

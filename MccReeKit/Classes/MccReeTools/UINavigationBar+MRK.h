//
//  UINavigationBar+MRK.h
//  MccReeKit
//
//  Created by MccRee on 2018/4/13.
//

#import <UIKit/UIKit.h>
/**
 导航条随着TableView滑动而改变透明度
 */
@interface UINavigationBar (MRK)


/**  使用示例
     - (void)scrollViewDidScroll:(UIScrollView *)scrollView
     {
     //禁止下拉
     if (_tableView.contentOffset.y <= 0) {
        _tableView.bounces = NO;
     }
     CGFloat offsetY = scrollView.contentOffset.y;
     CGFloat alpha = MIN(1, offsetY/(250-k_StatusBarAndNavigationBarHeight));
     [self.navigationController.navigationBar cnSetBackgroundColor:[UIColor colorWithHexString:@"FFFFFF" alpha:alpha]];
     }
 */
- (void)cnSetBackgroundColor:(UIColor *)backgroundColor;

- (void)cnReset;

@end

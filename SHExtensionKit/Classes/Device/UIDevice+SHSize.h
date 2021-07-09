//
//  UIDevice+SHSize.h
//  SHExtensionKit
//
//  Created by yzq on 2021/7/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern CGFloat SHDeviceWidth;   //屏幕宽度
extern CGFloat SHDeviceHeight;  //屏幕高度
extern CGFloat SHStatusHeight;  //状态栏高度
extern CGFloat SHNavHeight;     //导航栏高度
extern CGFloat SHBottomPadding; //底部安全距离
extern CGFloat SHTabbarHeight;  //tabbar高度（包含底部）

@interface UIDevice (SHSize)

+ (void)loadDeviceData;

@end

NS_ASSUME_NONNULL_END

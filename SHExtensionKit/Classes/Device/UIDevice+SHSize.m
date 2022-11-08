//
//  UIDevice+SHSize.m
//  SHExtensionKit
//
//  Created by yzq on 2021/7/9.
//

#import "UIDevice+SHSize.h"

CGFloat SHDeviceWidth = 0.0f;
CGFloat SHDeviceHeight = 0.0f;
CGFloat SHStatusHeight = 0.0f;
CGFloat SHNavHeight = 0.0f;
CGFloat SHTabbarHeight = 0.0f;
CGFloat SHBottomPadding = 0.0f;
CGFloat SHSafeBottom = 0.0f;
CGFloat SHTinyLineHeight = 0.0f;

@implementation UIDevice (SHSize)

+ (void)loadDeviceData
{
    SHDeviceWidth = UIScreen.mainScreen.bounds.size.width;
    SHDeviceHeight = UIScreen.mainScreen.bounds.size.height;
    SHStatusHeight = UIApplication.sharedApplication.statusBarFrame.size.height;
    SHNavHeight = SHStatusHeight+44.0f;
    if (@available(iOS 11.0, *)) {
        SHBottomPadding = UIApplication.sharedApplication.windows.firstObject.safeAreaInsets.bottom;
    }else{
        SHBottomPadding = 0.0f;
    }
    SHTabbarHeight = 49.0f+SHBottomPadding;
    SHSafeBottom = SHDeviceHeight-SHBottomPadding;
    SHTinyLineHeight = 1.0f/UIScreen.mainScreen.scale;
}

@end

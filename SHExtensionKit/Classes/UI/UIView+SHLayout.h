//
//  UIView+SHLayout.h
//  SHExtensionKit
//
//  Created by yzq on 2021/7/9.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SHLayout)

@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;

@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

- (void)widthToFit;
- (void)heightToFit;

- (void)removeAllSubviews;

@property (nonatomic, assign) UIEdgeInsets contentEdge;
@property (nonatomic, assign) CGFloat contentTop;
@property (nonatomic, assign) CGFloat contentLeft;
@property (nonatomic, assign) CGFloat contentBottom;
@property (nonatomic, assign) CGFloat contentRight;

@end

NS_ASSUME_NONNULL_END

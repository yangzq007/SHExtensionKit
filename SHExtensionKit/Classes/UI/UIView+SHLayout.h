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

- (void)setContentEdge:(UIEdgeInsets)contentEdge on:(UIView *)superview;
- (void)setContentTop:(CGFloat)contentTop on:(UIView *)superview;
- (void)setContentLeft:(CGFloat)contentLeft on:(UIView *)superview;
- (void)setContentBottom:(CGFloat)contentBottom on:(UIView *)superview;
- (void)setContentRight:(CGFloat)contentRight on:(UIView *)superview;

- (void)setContentEdge:(UIEdgeInsets)contentEdge base:(CGSize)size;
- (void)setContentTop:(CGFloat)contentTop base:(CGSize)size;
- (void)setContentLeft:(CGFloat)contentLeft base:(CGSize)size;
- (void)setContentBottom:(CGFloat)contentBottom base:(CGSize)size;
- (void)setContentRight:(CGFloat)contentRight base:(CGSize)size;

@end

NS_ASSUME_NONNULL_END

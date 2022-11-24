//
//  UIView+SHLayout.m
//  SHExtensionKit
//
//  Created by yzq on 2021/7/9.
//

#import "UIView+SHLayout.h"

@implementation UIView (SHLayout)

- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}


- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}


- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left
{
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top
{
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    self.frame = frame;
}


- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}


- (void)widthToFit
{
    CGRect frame = self.frame;
    frame.size.width = [self sizeThatFits:CGSizeMake(CGFLOAT_MAX, frame.size.height)].width;
    self.frame = frame;
}

- (void)heightToFit
{
    CGRect frame = self.frame;
    frame.size.height = [self sizeThatFits:CGSizeMake(frame.size.width, CGFLOAT_MAX)].height;
    self.frame = frame;
}


- (void)removeAllSubviews
{
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

#pragma mark - ContentEdge

- (UIEdgeInsets)contentEdge
{
    if (self.superview == nil) {
        return UIEdgeInsetsZero;
    }
    return UIEdgeInsetsMake(self.top, self.left, self.superview.height-self.bottom, self.superview.width-self.right);
}

- (void)setContentEdge:(UIEdgeInsets)contentEdge
{
    if (self.superview == nil) {
        return;
    }
    self.frame = CGRectMake(contentEdge.left, contentEdge.top, self.superview.width-contentEdge.left-contentEdge.right, self.superview.height-contentEdge.top-contentEdge.bottom);
}

- (CGFloat)contentTop
{
    return self.contentEdge.top;
}

- (void)setContentTop:(CGFloat)contentTop
{
    UIEdgeInsets edge = self.contentEdge;
    edge.top = contentTop;
    self.contentEdge = edge;
}

- (CGFloat)contentLeft
{
    return self.contentEdge.left;
}

- (void)setContentLeft:(CGFloat)contentLeft
{
    UIEdgeInsets edge = self.contentEdge;
    edge.left = contentLeft;
    self.contentEdge = edge;
}

- (CGFloat)contentBottom
{
    return self.contentEdge.bottom;
}

- (void)setContentBottom:(CGFloat)contentBottom
{
    UIEdgeInsets edge = self.contentEdge;
    edge.bottom = contentBottom;
    self.contentEdge = edge;
}

- (CGFloat)contentRight
{
    return self.contentEdge.right;
}

- (void)setContentRight:(CGFloat)contentRight
{
    UIEdgeInsets edge = self.contentEdge;
    edge.right = contentRight;
    self.contentEdge = edge;
}

#pragma mark - ContentEdge On SuperView

- (UIEdgeInsets)contentEdgeOn:(UIView *)superview
{
    UIView *sView = self.superview ? self.superview : superview;
    return UIEdgeInsetsMake(self.top, self.left, sView.height-self.bottom, sView.width-self.right);
}

- (void)setContentEdge:(UIEdgeInsets)contentEdge on:(UIView *)superview
{
    UIView *sView = self.superview ? self.superview : superview;
    self.frame = CGRectMake(contentEdge.left, contentEdge.top, sView.width-contentEdge.left-contentEdge.right, sView.height-contentEdge.top-contentEdge.bottom);
}

- (void)setContentTop:(CGFloat)contentTop on:(UIView *)superview
{
    UIEdgeInsets edge = [self contentEdgeOn:superview];
    edge.top = contentTop;
    [self setContentEdge:edge on:superview];
}

- (void)setContentLeft:(CGFloat)contentLeft on:(UIView *)superview
{
    UIEdgeInsets edge = [self contentEdgeOn:superview];
    edge.left = contentLeft;
    [self setContentEdge:edge on:superview];
}

- (void)setContentBottom:(CGFloat)contentBottom on:(UIView *)superview
{
    UIEdgeInsets edge = [self contentEdgeOn:superview];
    edge.bottom = contentBottom;
    [self setContentEdge:edge on:superview];
}

- (void)setContentRight:(CGFloat)contentRight on:(UIView *)superview
{
    UIEdgeInsets edge = [self contentEdgeOn:superview];
    edge.right = contentRight;
    [self setContentEdge:edge on:superview];
}

#pragma mark - ContentEdge Base Size

- (UIEdgeInsets)contentEdgeBase:(CGSize)size
{
    return UIEdgeInsetsMake(self.top, self.left, self.height-self.bottom, size.width-self.right);
}

- (void)setContentEdge:(UIEdgeInsets)contentEdge base:(CGSize)size
{
    self.frame = CGRectMake(contentEdge.left, contentEdge.top, size.width-contentEdge.left-contentEdge.right, size.height-contentEdge.top-contentEdge.bottom);
}

- (void)setContentTop:(CGFloat)contentTop base:(CGSize)size
{
    UIEdgeInsets edge = [self contentEdgeBase:size];
    edge.top = contentTop;
    [self setContentEdge:edge base:size];
}

- (void)setContentLeft:(CGFloat)contentLeft base:(CGSize)size
{
    UIEdgeInsets edge = [self contentEdgeBase:size];
    edge.left = contentLeft;
    [self setContentEdge:edge base:size];
}

- (void)setContentBottom:(CGFloat)contentBottom base:(CGSize)size
{
    UIEdgeInsets edge = [self contentEdgeBase:size];
    edge.bottom = contentBottom;
    [self setContentEdge:edge base:size];
}

- (void)setContentRight:(CGFloat)contentRight base:(CGSize)size
{
    UIEdgeInsets edge = [self contentEdgeBase:size];
    edge.right = contentRight;
    [self setContentEdge:edge base:size];
}

@end

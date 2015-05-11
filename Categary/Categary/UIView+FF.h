//
//  UIView+FF.h
//  Categary
//
//  Created by xiazer on 15/5/11.
//  Copyright (c) 2015年 xiazer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FF)
- (id)initWithMainFrame;
+ (CGRect)mainFrame;

+ (CGRect)fullScreenBound;
+ (CGRect)navigationControllerBound;
+ (CGRect)tabBarNavigationBound;

- (CGFloat)left;
- (CGFloat)right;
- (CGFloat)top;
- (CGFloat)bottom;
- (CGFloat)width;
- (CGFloat)height;
- (CGFloat)centerX;
- (CGFloat)centerY;

- (void)setLeft:(CGFloat)left;
- (void)setRight:(CGFloat)right;
- (void)setBottom:(CGFloat)bottom;
- (void)setSize:(CGSize)size;
- (void)setTop:(CGFloat)top;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setOrigin:(CGPoint)point;
- (void)setCenterX:(CGFloat)centerX;
- (void)setCenterY:(CGFloat)centerY;

- (void)setRoundedCorner:(CGFloat)cornerRadius;

- (void)removeAllSubViews;

@end

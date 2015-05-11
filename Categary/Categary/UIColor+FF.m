//
//  UIColor+FF.m
//  Categary
//
//  Created by xiazer on 15/5/11.
//  Copyright (c) 2015年 xiazer. All rights reserved.
//

#import "UIColor+FF.h"

@implementation UIColor (FF)

+ (UIColor *) colorWithHex:(uint) hex alpha:(CGFloat)alpha
{
    int red, green, blue;
    
    blue = hex & 0x0000FF;
    green = ((hex & 0x00FF00) >> 8);
    red = ((hex & 0xFF0000) >> 16);
    
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}


+ (UIColor *)BlackColor {
    return [UIColor colorWithHex:0x262626 alpha:1];
}

+ (UIColor *)DarkGrayColor {
    return [UIColor colorWithHex:0x555555 alpha:1];
}

+ (UIColor *)MiddleGrayColor {
    return [UIColor colorWithHex:0x969696 alpha:1];
}

+ (UIColor *)LightGrayColor {
    return [UIColor colorWithHex:0xccccce alpha:1];
}

+ (UIColor *)WhiteColor {
    return [UIColor colorWithHex:0xffffff alpha:1];
}

+ (UIColor *)OrangeColor {
    return [UIColor colorWithHex:0xe54b00 alpha:1];
}

+ (UIColor *)GreenColor {
    return [UIColor colorWithHex:0x69Af00 alpha:1];
}



@end

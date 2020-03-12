//
//  UIColor+FSColor.m
//  TestSpec_color
//
//  Created by qianpanpan on 2020/3/12.
//  Copyright © 2020 MengLA. All rights reserved.
//

#import "UIColor+FSColor.h"

#define macro_Color(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation UIColor (FSColor)
+ (UIColor *)colorMain {     return macro_Color(0xFFBE8D); }
@end

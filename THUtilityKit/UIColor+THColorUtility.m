//
//  UIColor+THColorUtility.m
//  THUtilityKit
//
//  Created by Tyler Hedrick on 4/27/14.
//  Copyright (c) 2014 Tyler Hedrick. All rights reserved.
//

#import "UIColor+THColorUtility.h"

@implementation UIColor (THColorUtility)

+ (UIColor *)colorWith8BitRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
  return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
}

+ (UIColor *)colorWithHex:(NSUInteger)hex {
  NSUInteger blue = hex & 0x0000FF;
  NSUInteger green = (hex & 0x00FF00) >> 8;
  NSUInteger red = (hex & 0xFF0000) >> 16;
  return [UIColor colorWith8BitRed:red green:green blue:blue];
}

@end


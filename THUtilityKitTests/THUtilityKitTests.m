//
//  THUtilityKitTests.m
//  THUtilityKitTests
//
//  Created by Tyler Hedrick on 4/27/14.
//  Copyright (c) 2014 Tyler Hedrick. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "THUtilityKit.h"

@interface THUtilityKitTests : XCTestCase

@end

@implementation THUtilityKitTests

- (void)setUp
{
  [super setUp];
}

- (void)tearDown
{
  [super tearDown];
}

- (void)testColor {
  UIColor *red = [UIColor colorWithHex:0xFF0000];
  UIColor *green = [UIColor colorWithHex:0x00FF00];
  UIColor *blue = [UIColor colorWithHex:0x0000FF];
  UIColor *white = [UIColor colorWithHex:0xFFFFFF];
  UIColor *black = [UIColor colorWithHex:0x000000];
  
  UIColor *trueRed = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
  UIColor *trueGreen = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
  UIColor *trueBlue = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
  UIColor *trueWhite = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
  UIColor *trueBlack = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
  
  XCTAssertEqualObjects(red, trueRed, @"");
  XCTAssertEqualObjects(green, trueGreen, @"");
  XCTAssertEqualObjects(blue, trueBlue, @"");
  XCTAssertEqualObjects(white, trueWhite, @"");
  XCTAssertEqualObjects(black, trueBlack, @"");
}

@end

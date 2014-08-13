//
// UIFontInconsolata.m
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UIFont+Inconsolata.h"

@interface Tests : XCTestCase
@end

@implementation Tests

- (void)testInconsolataFont {
    UIFont *font = [UIFont inconsolataFontOfSize:17.0];
    XCTAssertNotNil(font, @"The font was nil.");
    XCTAssertEqualObjects(font.fontName, @"Inconsolata-Regular", @"The font method is not returning the correct font.");
    XCTAssertEqual(font.pointSize, 17.0, "The font method returned a font with the incorrect point size.");
}

- (void)testInconsolataBoldFont {
    UIFont *font = [UIFont inconsolataBoldFontOfSize:17.0];
    XCTAssertNotNil(font, @"The font was nil.");
    XCTAssertEqualObjects(font.fontName, @"Inconsolata-Bold", @"The font method is not returning the correct font.");
    XCTAssertEqual(font.pointSize, 17.0, "The font method returned a font with the incorrect point size.");
}

@end


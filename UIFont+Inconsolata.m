//
// UIFont+Inconsolata.m
//
//

#import <CoreText/CoreText.h>
#import "UIFont+Inconsolata.h"

@implementation UIFont (Inconsolata)

void InconsolataLoadFontWithName(NSString *fontName) {
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"Inconsolata" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:bundleURL];
    NSURL *fontURL = [bundle URLForResource:fontName withExtension:nil];
    NSData *fontData = [NSData dataWithContentsOfURL:fontURL];

    CGDataProviderRef provider = CGDataProviderCreateWithCFData((CFDataRef)fontData);
    CGFontRef font = CGFontCreateWithDataProvider(provider);

    if (font) {
        CFErrorRef error = NULL;
        if (CTFontManagerRegisterGraphicsFont(font, &error) == NO) {
            CFStringRef errorDescription = CFErrorCopyDescription(error);
            @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:(__bridge NSString *)errorDescription userInfo:@{ NSUnderlyingErrorKey: (__bridge NSError *)error }];
        }

        CFRelease(font);
    }

    CFRelease(provider);
}

+ (instancetype)inconsolataLoadAndReturnFont:(NSString *)fontName size:(CGFloat)fontSize onceToken:(dispatch_once_t *)onceToken fontFileName:(NSString *)fontFileName {
    dispatch_once(onceToken, ^{
        InconsolataLoadFontWithName(fontFileName);
    });

    return [self fontWithName:fontName size:fontSize];
}


+ (instancetype)inconsolataFontOfSize:(CGFloat)fontSize {
    static dispatch_once_t onceToken;
    return [self inconsolataLoadAndReturnFont:@"Inconsolata-Regular" size:fontSize onceToken:&onceToken fontFileName:@"Inconsolata-Regular.ttf"];
}

+ (instancetype)inconsolataBoldFontOfSize:(CGFloat)fontSize {
    static dispatch_once_t onceToken;
    return [self inconsolataLoadAndReturnFont:@"Inconsolata-Bold" size:fontSize onceToken:&onceToken fontFileName:@"Inconsolata-Bold.ttf"];
}

@end


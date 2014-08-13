//
// UIFont+Inconsolata.h
//
//

#import <UIKit/UIKit.h>

/// An extension to UIFont providing the Inconsolata font
@interface UIFont (Inconsolata)

/** Returns a font object using the Inconsolata  font in the specified size.
 @param fontSize The size (in points) to which the font is scaled. This value must be greater than 0.0.
 @return A font object of the specified size.
*/
+ (instancetype)inconsolataFontOfSize:(CGFloat)fontSize;

/** Returns a font object using the Inconsolata  font in the specified size.
 @param fontSize The size (in points) to which the font is scaled. This value must be greater than 0.0.
 @return A font object of the specified size.
*/
+ (instancetype)inconsolataBoldFontOfSize:(CGFloat)fontSize;

@end


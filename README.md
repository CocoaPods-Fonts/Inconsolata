# Inconsolata

![](http://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Inconsolata.svg/220px-Inconsolata.svg.png)

Inconsolata is my first serious original font release. It is a monospace font,
designed for printed code listings and the like. There are a great many
"programmer fonts," designed primarily for use on the screen, but in most cases
do not have the attention to detail for high resolution rendering.

Inconsolata draws from many inspirations and sources. I was particularly struck
by the beauty of Luc(as) de Groot's Consolas, which is his monospaced design
for Microsoft's Vista release. This font, similar to his earlier TheSansMono,
demonstrated clearly to me that monospaced fonts do not have to suck.

## Usage

```objective-c
#import <Inconsolata/UIFont+Inconsolata.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.inconsolataLabel.font = [UIFont inconsolataFontOfSize:18.0f];
    self.inconsolataBoldLabel.font = [UIFont inconsolataBoldFontOfSize:18.0f];
}

@end
```

## Installation

This is a CocoaPod and you can install it with the following:

```ruby
pod 'Inconsolata'
```

## License

This font is licensed under the [OFL](OFL.txt) license.

- Copyright (c) 2011, Raph Levien (firstname.lastname@gmail.com)
- Copyright (c) 2012, Cyreal (cyreal.org).


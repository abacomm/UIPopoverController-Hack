# UIPopoverController-Hack

Runtime implementation to allow `UIPopoverController` on iPhone apps. 

## Implementation

By default, Popovers are available for iPad apps only. This is a category on `UIPopoverController` class, that overrides the standard implementation of `_popoversDisabled` to make Popovers available for use on iPhone apps. 

This is for demonstration purpose. The best approach for this probably is change the implementation of `_popoversDisabled` using Method Swizzling.

Also, this probably won’t be accepted by "Apple's Private API Validator" when submitting binary to AppStore. For Enterprise distributions it must be fine.

For more information, read Mark Sands’ article about “How Apple Cheats” on http://marksands.github.io/2014/05/27/how-apple-cheats.html

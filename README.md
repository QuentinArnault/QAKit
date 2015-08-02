#QAKit

Quick wins for productivity.

# FEATURES
 - Easy stacking of subviews in UIScrollView

# INSTALL
 - Extract a tarball or zipball of the repository into your project directory.
 - Add 'QAKit/QAKit.xcodeproj' as a subproject in your workspace.
 - Add libQAKit.a to 'Link Binary With Libraries' phase of your test target.
 - QAKit takes advantage of Objective C's ability to add categories on an object, but this isn't enabled for static libraries by default. To enable this, add the '-ObjC' flag to the "Other Linker Flags" build setting.
 - In your test target Build Settings, add "$(CONFIGURATION_BUILD_DIR)/usr/local/include"(with quotes) as a non-recursive Header Search Path.
 
# HOW-TO

## UIScrollView and easy stacking

First, import UIScrollView category header.

	#import "UIScrollView+kit.h"

Then, write your code


	- (void)stackViewsHorizontally {
		UIView *anyView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 100.f, 20.f)];
		UIView *anotherView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 44.f, 25.f)];
		
	    [self.scrollView stackView:anyView
	    			   withMargins:5.f];
	    [self.scrollView stackView:anotherView
	    			   withMargins:5.f];
	}

‘anyView‘ and ‘anotherView‘ will be added to ‘self.scrollView‘ with a 5 points margin on the left and on the right. ContentSize will be updated automatically.

# LICENSE
Copyright (c) 2013 Quentin Arnault

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# CREDITS
This project is brought to you by Quentin Arnault and is under MIT License.

# TODO LIST
 - add some unit tests
 - file mime types
 - ... 
 Feel free to suggest some cool features.
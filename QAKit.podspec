Pod::Spec.new do |s|

# Library description
  s.name         = 'QAKit'
  s.version      = '0.0.2'
  s.author       = { 'Quentin ARNAULT' => 'quentin.arnault@gmail.com' }
  s.license      = {
  	:type => 'MIT',
  	:text => 'The MIT License (MIT)

Copyright (c) 2014 QuentinArnault

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'
  }
  s.homepage     = 'https://github.com/QuentinArnault/QAKit'
  s.summary      = "QAKit offers quick wins for productivity."
  s.description  = <<-DESC
                   QALog offers some quick wins for productivity, such as:
                   * easy stacking of subviews in UIScrollView.
                   DESC
  s.source       = {
  	:git => 'git@github.com:QuentinArnault/QAKit.git',
  	:tag => s.version
  }
  s.source_files = 'QAKit/QAKit/**/*.{h,m}'


# Platform setup
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

# Subspecs

end

Pod::Spec.new do |spec|
  spec.name = 'Inconsolata'
  spec.version = '1.0.0'
  spec.summary = 'Inconsolata is ahumanist monospaced font designed for source code listing, terminal emulators, and similar uses'
  spec.description = "Inconsolata is an open source font created by Raph Levien and released under the SIL Open Font License. It is a humanist monospaced font designed for source code listing, terminal emulators, and similar uses. It was influenced by the proprietary Consolas monospaced font, designed by Lucas de Groot, the proportional Avenir and IBM's classic monospaced Letter Gothic."
  spec.license = { :type => 'SIL', :file => 'OFL.txt' }
  spec.authors = { 'Kyle Fuller' => 'inbox@kylefuller.co.uk' }
  spec.homepage = 'https://github.com/CocoaPods-Fonts/Inconsolata'
  spec.source = { :git => 'https://github.com/CocoaPods-Fonts/Inconsolata.git', :tag => spec.version }
  spec.screenshot = "http://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Inconsolata.svg/220px-Inconsolata.svg.png"
  spec.platform = :ios
  spec.requires_arc = true
  spec.default_subspec = 'Font'

  spec.subspec 'Font' do |font_spec|
    font_spec.resource_bundle = { 'Inconsolata' => 'Fonts/*.ttf' }
    font_spec.frameworks = 'UIKit', 'CoreText'
    font_spec.source_files = 'UIFont+Inconsolata.{h,m}'
  end

  spec.subspec 'Tests' do |test_spec|
    test_spec.frameworks = 'XCTest'
    test_spec.source_files = 'InconsolataTests.m'
  end
end


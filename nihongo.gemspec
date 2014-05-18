# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nihongo/version'

Gem::Specification.new do |spec|
  spec.name          = "nihongo"
  spec.version       = Nihongo::VERSION
  spec.authors       = ["linyows"]
  spec.email         = ["linyows@gmail.com"]
  spec.summary       = %q{日本語のカタカナ、ひらがな、半角、全角変換を行う事が出来ます。}
  spec.description   = %q{日本語のカタカナ、ひらがな、半角、全角変換を行う事が出来ます。}
  spec.homepage      = "https://github.com/linyows/nihongo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

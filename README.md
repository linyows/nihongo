Nihongo
-------

[![Gem Version](https://badge.fury.io/rb/nihongo.svg)][gem]
[![Build Status](https://travis-ci.org/linyows/nihongo.svg?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/linyows/nihongo.png?travis)][gemnasium]
[![Code Climate](https://codeclimate.com/github/linyows/nihongo.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/linyows/nihongo/badge.png?branch=master)][coveralls]

[gem]: https://rubygems.org/gems/nihongo
[travis]: http://travis-ci.org/linyows/nihongo
[gemnasium]: https://gemnasium.com/linyows/nihongo
[codeclimate]: https://codeclimate.com/github/linyows/nihongo
[coveralls]: https://coveralls.io/r/linyows/nihongo

日本語のカタカナ、ひらがな、半角、全角変換を行う事が出来ます。:jp:

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem 'nihongo'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install nihongo
```

Usage
-----

Stringに生えています。

```ruby
[1] 2.1.2(main)> require 'nihongo'
=> true
[2] 2.1.2(main)> 'コンニチハ〜'.to_hiragana
=> "こんにちは〜"
[3] 2.1.2(main)> 'いいお天気ですね'.to_katakana
=> "イイオ天気デスネ"
[4] 2.1.2(main)> 'Rubyﾀﾞｲ好ｷﾃﾞｽ！'.to_zenkaku
=> "Ｒｕｂｙダイ好キデス！"
[5] 2.1.2(main)> '私はｖｅｒ２.１.２です~'.to_hankaku
=> "私はver2.1.2です~"
```

Contributing
------------

1. Fork it ( https://github.com/linyows/nihongo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


Authors
-------

- [linyows](https://github.com/linyows)

License
-------

The MIT License (MIT)

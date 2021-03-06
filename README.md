[![Gem Version](https://badge.fury.io/rb/jshint_ruby.png)](http://badge.fury.io/rb/jshint_ruby)
[![Build Status](https://travis-ci.org/StupidCodeFactory/jshint_ruby.png?branch=master)](https://travis-ci.org/StupidCodeFactory/jshint_ruby)
[![Code Climate](https://codeclimate.com/repos/52dc98ba695680512c0037c6/badges/f8edcfbcaa41396e2b11/gpa.png)](https://codeclimate.com/repos/52dc98ba695680512c0037c6/feed)
[![Dependency Status](https://gemnasium.com/StupidCodeFactory/jshint_ruby.png)](https://gemnasium.com/StupidCodeFactory/jshint_ruby)
[![Coverage Status](https://coveralls.io/repos/StupidCodeFactory/jshint_ruby/badge.png)](https://coveralls.io/r/StupidCodeFactory/jshint_ruby)
# JshintRuby

API to lint your javascript source code from ruby.
* It ships with a copy of JSHint
* It uses [ExecJS](https://github.com/sstephenson/execjs) under the hood and is heavily inspired on [execjs](linthttps://github.com/mintdigital/execjslint)

## Installation

Add this line to your application's Gemfile:

    gem 'jshint_ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jshint_ruby

## Usage

```ruby
        source = File.open('spec/fixtures/source_with_errors.js')
        result = JshintRuby.run(source) # => <JshintRuby::Result:0x007f88f9084cb8 @valid=false, @errors=[{"id"=>"(error)", "raw"=>"Use '{a}' to compare with '{b}'.", "code"=>"W041", "evidence"=>"if (true == 1)", "line"=>3, "character"=>10, "scope"=>"(main)", "a"=>"===", "b"=>"true", "reason"=>"Use '===' to compare with 'true'."}]>
        result.valid?                   # false
        result.errors                   # [{"id"=>"(error)", "raw"=>"Use '{a}' to compare with '{b}'.", "code"=>"W041", "evidence"=>"if (true == 1)", "line"=>3, "character"=>10, "scope"=>"(main)", "a"=>"===", "b"=>"true", "reason"=>"Use '===' to compare with 'true'."}]
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

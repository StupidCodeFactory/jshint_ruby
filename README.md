# JshintRuby

API to lint your javascript source code from ruby, it ships with a copy of JSHint

## Installation

Add this line to your application's Gemfile:

    gem 'jshint_ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jshint_ruby

## Usage

```ruby
        source = 'spec/fixtures/source_with_errors.js'
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

# Canada

![Canadian flag](https://raw.github.com/vanruby/canada/master/canada.png)

It's well known that we have [different conventions](http://programmers.stackexchange.com/questions/1483/do-people-in-non-english-speaking-countries-code-in-english#answer-5576) for programming in Canada. This gem attempts to make life easier for Canadian Rubyists by integrating these conventions into the Ruby language:

```ruby
>> require 'canada'
=> true
>> [].empty_eh?
=> true
>> [1,2,3].empty_eh?
=> false
>> [].respond_to_eh?(:empty_eh?)
=> true
>> aboot Object.new
=> "#<Object:0x007f802b8b92c0>"
>> raise "something went wrong..."
RuntimeError: I'm sorry, but something went wrong...
  from (irb):6
  from /Users/godfrey/.rvm/rubies/ruby-2.0.0-p195/bin/irb:16:in `<main>'
```

Cool, eh?

## Production Ready™, eh?

Yes. Proof: [![Build Status](https://travis-ci.org/vanruby/canada.png)](https://travis-ci.org/vanruby/canada)


## What aboot performance?

We hand-tuned the gem's performance to keep it in line with everything else in Canada.

## Installation

Add this line to your application's Gemfile:

    gem 'canada'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install canada

Note: This gem requires Ruby 2.0.0 or higher.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Product of Canada

This gem is a 100% Canadian product and sweetened with 100% Canadian maple syrup. We hack on open-source projects like this every other Tuesday at [#VANRUBY](http://vanruby.org). If you would like to join us, check out our [meetup page](http://www.meetup.com/vancouver-ruby/) for details.

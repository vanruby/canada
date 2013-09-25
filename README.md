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
```

Cool, eh?

## Production Ready™, eh?

Yes.

## What about performacne?

We tuned the gem's performacne so that it's inline with everything else in Canada.

## Installation

Add this line to your application's Gemfile:

    gem 'canada'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install canada

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

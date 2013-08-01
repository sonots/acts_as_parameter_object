# acts_as_parameter_object

testing ruby: 1.9.2, 1.9.3, 2.0.0

## About acts_as_parameter_object

ActsAsParameterObject creates a model which acts as a Parameter Object. cf. [Refactoring: Ruby Edition](http://www.amazon.com/dp/0321603508).

## Example

```ruby
class ParameterObjectExample
  include ActsAsParameterObject

  attr_accessor :title
  validates_presence_of :title

  def initialize(params = {})
    @title = params[:title]
  end
end

ParameterObjectExample.new(:foo => 'bar').valid? #=> false
```

You can use all of ActiveModel::Validations methods.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](../../pull/new/master)

## Copyright

Copyright (c) 2013 Naotoshi SEO. See [LICENSE](LICENSE) for details.


module Canada
  class NotFromAroundHereError < NoMethodError
    def initialize(method, target)
      super "I'm sorry, #{target} doesn't appear to have '#{method}' method accommodations, it must not be from around here"
    end
  end
end

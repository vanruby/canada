require "canada/version"

module Canada
  module ObjectExtensions
    EH_METHOD_REGEXP = /\A(?<method_name>.+)_eh\?\z/

    def respond_to_missing?(meth, include_all = false)
      if (m = EH_METHOD_REGEXP.match(meth))
        super || self.respond_to?("#{m[:method_name]}?", include_all)
      else
        super
      end
    end

    def method_missing(meth, *args, &block)
      if (m = EH_METHOD_REGEXP.match(meth))
        self.public_send("#{m[:method_name]}?", *args, &block)
      else
        super
      end
    end
  end

  ::Object.send(:include, ObjectExtensions)

  module ExceptionExtensions
    # These are the building blocks for apologetic exception messages.
    MSG_PREFIX = [
      "I'm sorry",
      "Sorry",
      "Pardon me",
      "Hate to bother you"
    ]
    MSG_CONNECTOR = [
      "but",
      "however"
    ]

    def to_s
      "#{MSG_PREFIX.sample}, #{MSG_CONNECTOR.sample} #{super}"
    end
  end

  ::Exception.send(:prepend, ExceptionExtensions)

  module ::Kernel
    def aboot(obj)
      obj.inspect
    end
  end
end

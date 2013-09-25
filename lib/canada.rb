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
    def to_s
      "I'm sorry, but #{super}"
    end
  end

  ::Exception.send(:prepend, ExceptionExtensions)

  module ::Kernel
    def aboot(obj)
      obj.inspect
    end
  end
end

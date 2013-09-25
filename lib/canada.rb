require "canada/version"

module Canada
  EH_METHOD_REGEXP = /\A(?<method_name>.+)_eh\?\z/

  module ObjectExtensions
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

  module ::Kernel
    def aboot(obj)
      obj.inspect
    end
  end
end

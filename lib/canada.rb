require "canada/version"

class Object
  EH_METHOD_REGEXP = /\A(?<method_name>.+)_eh\?\z/

  def respond_to?(meth, include_private = false)
    if (m = EH_METHOD_REGEXP.match(meth))
      super || super("#{m[:method_name]}?", include_private)
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

module Kernel
  def aboot(obj)
    obj.inspect
  end
end

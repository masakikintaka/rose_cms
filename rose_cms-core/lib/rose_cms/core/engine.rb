module RoseCms
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace RoseCms
      engine_name 'rose_cms'
    end
  end
end

require 'rose_cms/core/routes'

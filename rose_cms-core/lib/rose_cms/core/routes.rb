module RoseCms
  module Core
    class Engine < ::Rails::Engine
      def self.add_routes(&block)
        @rose_cms_routes ||= []
        @rose_cms_routes << block unless @rose_cms_routes.include?(block)
      end

      def self.append_routes(&block)
        @append_routes ||= []
        @append_routes << block unless @append_routes.include?(block)
      end

      def self.draw_routes(&block)
        @rose_cms_routes ||= []
        @append_routes ||= []
        eval_block(block) if block_given?
        @rose_cms_routes.each { |r| eval_block(&r) }
        @append_routes.each { |r| eval_block(&r) }
        # # Clear out routes so that they aren't drawn twice.
        @rose_cms_routes = []
        @append_routes = []
      end

      def eval_block(&block)
        RoseCms::Core::Engine.routes.send :eval_block, block
      end
    end
  end
end
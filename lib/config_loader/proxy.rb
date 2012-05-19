module ConfigLoader
  class Proxy
    
    attr_reader :data_tree
    
    def initialize(&block)
      @data_tree ={}
      instance_eval(&block)
    end
    
    def method_missing(method_sym, *arguments, &block)
      if block_given?
        p = Proxy.new(&block)
        @data_tree[method_sym] = p.data_tree
      else
        @data_tree[method_sym] = arguments.first
      end
    end
    
  end
end

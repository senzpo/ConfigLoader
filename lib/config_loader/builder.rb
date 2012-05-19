module ConfigLoader
  class Builder
    
    def initialize(env, &block)
      @hash = {}
      @env = env
      instance_eval(&block)
    end
    
    def env(env_name, options={}, &block)
      p = Proxy.new(&block)
      @hash[env_name] = p.data_tree
    end
    
    def to_hash
      @hash[@env]
    end
    
    class << self
      def build(env, &block)
        b = new(env, &block)
        b
      end
    end
    
  end
end
require "config_loader/version"

module ConfigLoader
  autoload :Builder, 'config_loader/builder'
  autoload :Proxy, 'config_loader/proxy'
  
  def self.build(env, &block)
    builder = Builder.build(env, &block)
  end
  
end

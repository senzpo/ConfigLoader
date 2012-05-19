require 'spec_helper'

describe ConfigLoader do
  it "init" do
    config_loader = ConfigLoader.build :test do
      env :test do
        level_1 do
          level_2 do
            level_2_key "key1"
          end
          level_1_key "key2"
        end
        level_0_key "key3"
      end
    end
    
    puts config_loader.to_hash
    
    #config_loader.level_1.level_2.level_2_key.should == "key1"
    
  end
end
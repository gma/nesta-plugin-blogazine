module Nesta
  module Plugin
    module Blogazine
      module Helpers
        helpers do
          # If your plugin needs any helper methods, add them here...
        end 
      end
    end
  end

  class App
    helpers Nesta::Plugin::Blogazine::Helpers
  end
end

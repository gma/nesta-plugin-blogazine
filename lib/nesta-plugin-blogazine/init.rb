module Nesta
  module Plugin
    module Blogazine
      module Helpers
        def page_design(default = 'master')
          if @page && @page.metadata('design')
            @page.metadata('design')
          else
            default
          end
        end
      end
    end
  end

  class App
    helpers Nesta::Plugin::Blogazine::Helpers
  end
end

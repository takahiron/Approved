require 'rails/generators/base'

module Approved
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../template", __FILE__)

    end
  end
end

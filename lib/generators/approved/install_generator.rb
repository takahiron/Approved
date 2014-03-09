require 'rails/generators/base'

module Approved
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../template", __FILE__)

      def copy_initialize
        puts "aaaaaaaaaaaaaaaa"
        template "approved.rb", "config/initializers/approved.rb"
      end

      def show_readme
        readme 'README' if behavior == :invoke
      end
    end
  end
end

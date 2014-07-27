require 'rails/generators/named_base'

module Approved
  module Generators
    class ApprovedGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../../template", __FILE__)
      hook_for :orm

      def initializer
        seed_path = "#{Rails.root}/db/seeds.rb"
        File.open(seed_path, "a") do |f|
          f.puts 'if Approved::Role.where(types: "people").first.blank?'
          f.puts '  Approved::Role.create(name: "people", authority: "{\"Approved::Engine\":true}", types: "people")'
          f.puts 'end'
        end
      end

      def copy_initialize
        template "approved.rb", "config/initializers/approved.rb"
      end

      def show_readme
        readme 'README' if behavior == :invoke
      end

    end
  end
end

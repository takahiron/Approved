require 'rails/generators/named_base'

module Approved
  module Generators
    class ApprovedGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../../template", __FILE__)
      hook_for :orm
      def initializer
        puts "initializer #{name}: #{table_name}:#{file_name}"
      end

      def migrate_role
      #  template "migrate/role.rb", "db/migrate/approved_create_roles.rb"
      end

      def migrate_role_and_user
      #  template "migrate/role_and_user.rb", "db/migrate/approved_create_role_and_user.rb"
      end
    end
  end
end

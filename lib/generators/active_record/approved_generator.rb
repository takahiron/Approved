require 'rails/generators/active_record'


module ActiveRecord
  module Generators
    class ApprovedGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../../template", __FILE__)

      def initializer
        puts "initializer active record #{name}: #{table_name}:#{file_name}"
      end

      def migrate_role
        migration_template "migrate/role.rb", "db/migrate/approved_create_roles.rb"
      end

      def migrate_role_and_user
        migration_template "migrate/role_and_user.rb", "db/migrate/approved_create_role_and_user.rb"
      end
    end
  end
end

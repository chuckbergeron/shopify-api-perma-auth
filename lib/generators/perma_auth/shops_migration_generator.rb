require 'rails/generators/active_record'

module ActiveRecord
  module Generators
    class ShopsMigrationGenerator < Base

      source_root File.expand_path("../templates", __FILE__)
      argument :name, :type => :string, :default => "add_shops_table"

      def create_migration_file
        migration_template "migration.rb", "db/migrate/#{file_name}.rb"
      end

    end
  end
end

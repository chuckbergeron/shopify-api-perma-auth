# require 'rails/generators/active_record'

# module ActiveRecord
#   module Generators
#     class ShopsMigrationGenerator < Base

#       source_root File.expand_path("../templates", __FILE__)
#       argument :name, :type => :string, :default => "add_shops_table"

#       def create_migration_file
#         migration_template "migration.rb", "db/migrate/#{file_name}.rb"
#       end

#     end
#   end
# end



require 'rails/generators'

class ShopifyApiPermaAuthGenerator < Rails::Generators::Base

  argument :name, :type => :string, :default => "add_shops_table"

  argument :table_name, :type => :string, :default => "shops", :required => false

  def self.source_root
    File.join(File.dirname(__FILE__), 'templates')
  end

  def create_migration_file
    migration_template "migration.rb", "db/migrate/#{file_name}.rb"
  end

  def display_readme
    readme '../README'
  end
end

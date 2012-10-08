namespace 'db:shops' do

  desc "Creates a shops migration for use with ShopifyApiPermaAuth"
  task :create => [:environment, 'db:load_config'] do
    Rails.application.load_generators
    require 'rails/generators/rails/shops_migration/shops_migration_generator'
    Rails::Generators::ShopsMigrationGenerator.start # [ ENV['MIGRATION'] || 'add_sessions_table' ]
  end

end

class <%= migration_class_name %> < ActiveRecord::Migration

  def change
    create_table :<%= session_table_name %> do |t|
      t.string :myshopify_domain
      t.string :access_token

      t.timestamps
    end

    add_index :shops, :myshopify_domain, unique: true
  end

end

class CreateRoseCmsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_users, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :deleted_at, :datetime
      t.column :login, :string, null: false, default: ''
      t.column :pass, :string, null: false, default: ''
      t.column :nicename, :string, null: false, default: ''
      t.column :email, :string, null: false, default: ''
      t.column :url, :string, null: false, default: ''
      t.column :activation_key, :string, null: false, default: ''
      t.column :status, :integer, null: false, default: 0
      t.column :display_name, :string, null: false, default: ''
      t.column :spam, :integer, null: false, default: 0
      t.column :deleted, :integer, null: false, default: 0
      t.timestamps
    end
    add_index :rose_cms_users, :login
    add_index :rose_cms_users, :nicename
  end
end

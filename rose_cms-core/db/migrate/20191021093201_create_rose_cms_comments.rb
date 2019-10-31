class CreateRoseCmsComments < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_comments, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :post_id, :integer, null: false, default: 0
      t.column :user_id, :integer, null: false, default: 0
      t.column :author, :string, null: false
      t.column :author_email, :string, null: false, default: ''
      t.column :author_url, :string, null: false, default: ''
      t.column :author_ip, :string, null: false, default: ''
      t.column :content, :text, null: false
      t.column :karma, :integer, null: false, default: 0
      t.column :approved, :string, limit: 20, null: false, default: '1'
      t.column :agent, :string, null: false, default: ''
      t.column :type, :string, limit: 20, null: false, default: ''
      t.column :parent, :integer, null: false, default: 0
      t.timestamps
    end
    add_index :rose_cms_comments, :post_id
    add_index :rose_cms_comments, %i[approved created_at]
    add_index :rose_cms_comments, :created_at
    add_index :rose_cms_comments, :parent
    add_index :rose_cms_comments, :author_email
  end
end

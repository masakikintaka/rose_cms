# frozen_string_literal: true

class CreateRoseCmsPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_posts, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :deleted_at, :datetime
      t.column :user_id, :integer, default: 0, null: false
      t.column :title, :text, null: false
      t.column :content, :text, null: false
      t.column :excerpt, :text, null: false
      t.column :status, :string, null: false, default: 'publish'
      t.column :comment_status, :string, null: false, default: 'open'
      t.column :ping_status, :string, null: false, default: 'open'
      t.column :password, :string, null: false, default: ''
      t.column :name, :string, null: false, default: ''
      t.column :to_ping, :text, null: false
      t.column :pinged, :text, null: false
      t.column :content_filtered, :text, null: false
      t.column :parent, :integer, null: false, default: 0
      t.column :guid, :string, null: false, default: ''
      t.column :menu_order, :integer, null: false, default: 0
      t.column :type, :string, null: false, default: 'post'
      t.column :mime_type, :string, null: false, default: ''
      t.column :comment_count, :integer, null: false, default: 0
      t.timestamps
    end
    add_index :rose_cms_posts, :name
    add_index :rose_cms_posts, %i[type status created_at id]
    add_index :rose_cms_posts, :parent
    add_index :rose_cms_posts, :user_id
  end
end

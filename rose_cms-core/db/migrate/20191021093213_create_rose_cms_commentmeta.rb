class CreateRoseCmsCommentmeta < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_commentmeta, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :comment_id, :integer, null: false, default: 0
      t.column :meta_key, :string, default: nil
      t.column :meta_value, :text
      t.timestamps
    end
    add_index :rose_cms_commentmeta, :comment_id
    add_index :rose_cms_commentmeta, :meta_key
  end
end

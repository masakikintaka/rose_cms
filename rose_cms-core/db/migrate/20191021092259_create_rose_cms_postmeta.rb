class CreateRoseCmsPostmeta < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_postmeta, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :post_id, :integer, null: false, default: 0
      t.column :meta_key, :string, default: nil
      t.column :meta_value, :text
      t.column :deleted_at, :datetime
      t.timestamps
    end
    add_index :rose_cms_postmeta, :post_id
    add_index :rose_cms_postmeta, :meta_key
  end
end

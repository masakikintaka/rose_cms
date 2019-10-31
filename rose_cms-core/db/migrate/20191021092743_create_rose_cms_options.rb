class CreateRoseCmsOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_options, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :name, :string, null: false, default: '', limit: 64
      t.column :value, :text, null: false
      t.column :autoload, :string, limit: 20, null: false, default: 'yes'
      t.timestamps
    end
    add_index :rose_cms_options, :name, unique: true
  end
end

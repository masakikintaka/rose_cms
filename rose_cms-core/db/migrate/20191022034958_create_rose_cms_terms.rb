class CreateRoseCmsTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_terms, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :name, :string, null: false, default: '', limit: 200
      t.column :slug, :string, null: false, default: '', limit: 200
      t.column :term_group, :integer, null: false, default: 0
      t.timestamps
    end
    add_index :rose_cms_terms, :slug
    add_index :rose_cms_terms, :name
  end
end

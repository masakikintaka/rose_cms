class CreateRoseCmsTermTaxonomies < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_term_taxonomies, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :term_id, :integer, null: false, default: 0
      t.column :taxonomy, :string, null: false, default: '', limit: 32
      t.column :description, :text, null: false
      t.column :parent, :integer, null: false, default: 0
      t.column :count, :integer, null: false, default: 0
      t.timestamps
    end
    add_index :rose_cms_term_taxonomies, %i[term_id taxonomy], unique: true
    add_index :rose_cms_term_taxonomies, :taxonomy
  end
end

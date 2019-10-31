class CreateRoseCmsTermRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :rose_cms_term_relationships, force: true, options: 'DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci' do |t|
      t.column :term_taxonomy_id, :integer, null: false, default: 0
      t.column :post_id, :integer, null: false, default: 0
      t.column :term_order, :integer, null: false, default: 0
      t.timestamps
    end
    add_index :rose_cms_term_relationships, %i[post_id term_taxonomy_id], unique: true, name: :rose_cms_term_relationships_ids
    add_index :rose_cms_term_relationships, :term_taxonomy_id
  end
end

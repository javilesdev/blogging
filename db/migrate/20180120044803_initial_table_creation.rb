class InitialTableCreation < ActiveRecord::Migration[5.1]
  def change
    create_table :posts, force: true do |t|
      t.string   'title', null: false
      t.text     'body', null: false
      t.timestamps
      t.string   'slug'
      t.boolean  'published', default: false
      t.boolean  'allow_comments'
      t.datetime 'published_at'
      t.string   'state'
    end
    add_index :posts, ['published']
    add_index :posts, :slug, unique: true


  end
end

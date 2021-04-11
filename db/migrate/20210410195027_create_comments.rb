class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

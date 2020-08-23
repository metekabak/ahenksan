class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :slug
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end

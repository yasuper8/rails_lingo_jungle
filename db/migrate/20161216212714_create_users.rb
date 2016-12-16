class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :favorite_animal
      t.string :native_lang
      t.string :learn_lang
      t.string :image_url
      t.string :password_digest

      t.timestamps
    end
  end
end

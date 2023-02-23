class CreateJuts < ActiveRecord::Migration[7.0]
  def change
    create_table :juts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end

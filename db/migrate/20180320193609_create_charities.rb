class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :website

      t.timestamps
    end
  end
end

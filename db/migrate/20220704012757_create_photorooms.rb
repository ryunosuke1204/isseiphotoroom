class CreatePhotorooms < ActiveRecord::Migration[6.0]
  def change
    create_table :photorooms do |t|
      t.string :name
      t.text :image
      t.timestamps
    end
  end
end

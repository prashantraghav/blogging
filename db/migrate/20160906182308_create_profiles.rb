class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :greetings
      t.string :who_i_am
      t.string :footer
      t.attachment :slide1
      t.attachment :slide2
      t.attachment :slide3
      t.attachment :slide4
      t.attachment :slide5
      t.attachment :pic

      t.timestamps
    end
  end
end

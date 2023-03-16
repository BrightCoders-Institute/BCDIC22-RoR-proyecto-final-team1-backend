class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :place, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end

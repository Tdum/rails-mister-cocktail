class AddColumnToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :content, :text
    add_column :reviews, :rating, :integer
    add_reference :reviews, :cocktail, foreign_key: true
  end
end

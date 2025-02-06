
class CreatePortfolioItems < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.string :category
      t.string :thumbnail
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end

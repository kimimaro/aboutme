class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :image_path
      t.string :intro
      t.string :website
      t.date :last_day
      t.string :company

      t.timestamps
    end
  end
end

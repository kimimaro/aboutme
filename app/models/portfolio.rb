class Portfolio < ActiveRecord::Base
  validates :name, presence: true
  validates :image_name, presence: true
end

class Store < ActiveRecord::Base
	has_many :products
	has_many :prices
end
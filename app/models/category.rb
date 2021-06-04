class Category < ApplicationRecord
    has_many :has_categories
    has_many :movies, through: :has_categories
end

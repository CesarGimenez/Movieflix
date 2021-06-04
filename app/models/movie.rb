class Movie < ApplicationRecord
    has_many :comments
    has_many :has_categories
    has_many :categories, through: :has_categories

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end

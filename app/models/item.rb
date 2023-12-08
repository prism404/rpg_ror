class Item < ApplicationRecord
    validates :path, presence: true
    validates :name, presence: true
    validates :categorie, presence: true
    validates :stats, presence: true
end

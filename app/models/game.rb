class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :developer
  validates :title, presence: true
end

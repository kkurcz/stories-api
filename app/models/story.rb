class Story < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :name, :text, presence: true, uniqueness: true
  validates :text, length: { minimum: 10 }

end

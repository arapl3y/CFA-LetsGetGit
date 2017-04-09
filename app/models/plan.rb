class Plan < ApplicationRecord
  validates :title, :presence => true
  belongs_to :user
  belongs_to :list
end

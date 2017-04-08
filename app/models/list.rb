class List < ApplicationRecord
  belongs_to :user
  has_many :plans, :dependent => :destroy
end

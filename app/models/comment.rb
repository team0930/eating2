class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :restaurant

  validates :comment, presence: true
  validates :score, numericality: {
             less_than_or_equal_to: 5.0, #指定された値と等しいか、それよりも小さくなければならないことを指定
             greater_than_or_equal_to: 0.5 #指定された値と等しいか、それよりも大きくなければならないことを指定
             }, presence: true

end

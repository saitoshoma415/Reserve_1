class Reservation < ApplicationRecord
  has_many :description_of_works, dependent: :destroy
  accepts_nested_attributes_for :description_of_works 
  enum state: { retention: 0, decision: 1, rejection: 2 }
  # retention=保留,decision=確定,rejection=却下
  
end

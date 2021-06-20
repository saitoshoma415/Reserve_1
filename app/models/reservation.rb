class Reservation < ApplicationRecord
  enum state: { retention: 0, decision: 1, rejection: 2 }
  # retention=保留,decision=確定,rejection=却下
end

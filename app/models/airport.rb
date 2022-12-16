class Airport < ApplicationRecord

    validates :plane_capacity, numericality: { 
        only_integer: true, 
        in: 1..50,
        odd: true
    }

end

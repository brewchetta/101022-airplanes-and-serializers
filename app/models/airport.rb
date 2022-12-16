class Airport < ApplicationRecord

    has_many :airplanes, dependent: :destroy

    validates :plane_capacity, numericality: { 
        only_integer: true, 
        in: 1..50,
        odd: true
    }

end

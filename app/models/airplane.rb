class Airplane < ApplicationRecord

    belongs_to :airport

    validates :seats, numericality: { greater_than: 0 }
    validates :model, presence: true
end

class AirplaneSerializer < ActiveModel::Serializer
  attributes :id, :model, :seats

  belongs_to :airport
end

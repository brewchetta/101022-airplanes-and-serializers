class AirportSerializer < ActiveModel::Serializer
  attributes :id, :name, :abbrv, :plane_capacity

  has_many :airplanes, serializer: AirportAirplaneSerializer 
  # ==> only model
end

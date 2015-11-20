#
class EventSerializer < ActiveModel::Serializer
  attributes :id, :business_kind, :name, :website, :phone_number, :event_date, :group_size, :location_id, :user_id
end

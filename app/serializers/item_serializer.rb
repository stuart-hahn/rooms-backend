class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :packed, :user_id
end

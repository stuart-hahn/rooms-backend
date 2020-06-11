class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :packed
end

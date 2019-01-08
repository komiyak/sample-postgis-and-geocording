class User < ApplicationRecord
  enum state: {available: 1, deleted: 0}

  # 1 km
  ONE_KM_LAT = 0.008983
  ONE_KM_LON = 0.010966
  DISTANCE_RATIO = (ONE_KM_LAT + ONE_KM_LON) / 2

  scope :within, ->(user, km) { where("ST_DWithin(#{PostgisUtil.wkt_format(user.location.x, user.location.y)}, location, #{DISTANCE_RATIO * km})") }
  scope :nearby, ->(user) { order("users.location <-> #{PostgisUtil.wkt_format(user.location.x, user.location.y)}") }
end

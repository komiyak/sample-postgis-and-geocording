class User < ApplicationRecord
  enum state: {available: 1, deleted: 0}

  scope :within, ->(meter) {where("ST_DistanceSphere(location, 'POINT(33.589154 130.392993)') <= #{meter}")}
  scope :nearby, ->(user) { order("users.location <-> #{PostgisUtil.wkt_format(user.location.x, user.location.y)}") }
end

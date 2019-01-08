# frozen_string_literal: true

class PostgisUtil
  class << self
    # See: https://github.com/rgeo/activerecord-postgis-adapter#creating-spatial-tables
    # > Default is 4326 for a geography column, or -1 for a geometry column.
    SRID = -1

    def wkt_format(x, y)
      "'SRID=#{SRID};POINT(#{x} #{y})'::geometry"
    end
  end
end
